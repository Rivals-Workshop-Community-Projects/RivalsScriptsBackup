//Defining state names
#macro AS_SPAWN 0
#macro AS_IDLE 1
#macro AS_HIT 2
#macro AS_DESTROY 3

if (init == false) {
    init = true;
    spr_dir = player_id.spr_dir;
    vsp = -4.5;
    hsp = 0.2 * spr_dir;
} else {
    if (!hitpause) {

        state_timer++;
        // print_debug("spin: " + string(spin) + ", image_angle: " + string(image_angle));
        image_angle = (image_angle + spin) % 360;
        spin = clamp(floor(spin * spin_decay), -spin_limit, spin_limit);

        if (free && spin == 0 && abs(hsp) < 1 && abs(vsp) < 1) {
            image_angle = (floor((image_angle + 45)/90) * 90) % 360;
        }

        if (hsp != 0) {
            spr_dir = sign(hsp);
        }

        if (hsp == 0 && vsp == 0) {
            life_timer++;
        } else {
            life_timer = 0;
        }
        
        if(state != AS_DESTROY && life_timer == lifetime || (x < 0 || x > room_width || y > room_height)) {
            state = AS_DESTROY;
            state_timer = 0;
        }

        if(place_meeting(x, y, asset_get("plasma_field_obj")) && state != AS_DESTROY) {
            state = AS_DESTROY;
            state_timer = 0;
        }

        switch (state) {
            case AS_SPAWN:
                var state_length = 5;
                if (state_timer == state_length) {
                    state = AS_IDLE;
                    state_timer = 0;
                }
                break;

            case AS_IDLE:
                hitbox_check();

                if (abs(vsp) < grav) {
                    vsp = 0;
                }

                // print_debug(string(vsp));
                
                if (free) { //Create hitbox when in the air.
                    hbox = create_hitbox(AT_NSPECIAL_AIR, 1, floor(x + hsp), floor(y + vsp));
                    hbox.charge = charge;
                    hbox.parent = id;

                    if (vsp < terminal_velocity) {  //Apply gravity.
                        vsp += grav;
                    }

                    //Bounce off of walls, floors and platforms, reduce speed when doing so.
                    var nearest_plat = instance_nearest(x, y, asset_get("par_jumpthrough"));
                    // print_debug(string(y < get_instance_y(nearest_plat)));
                    if (place_meeting(x + hsp, y + vsp, asset_get("par_block")) || (vsp > 0 && place_meeting(x + hsp, y + vsp, asset_get("par_jumpthrough")) && y < get_instance_y(nearest_plat))) {
                        // print_debug("vsp before: " + string(vsp));
                        vsp *= -elasticity;
                        hsp *= elasticity;
                        // print_debug("vsp after: " + string(vsp));

                        if (place_meeting(x + hsp, y + vsp + 1, asset_get("par_block"))) {
                            hsp *= -1;
                        }
                    }

                } else {    //Apply friction if grounded.
                    if (hsp - fric < 0) {
                        hsp = 0;
                        
                        if (hit_lockout == 0) {
                            spin = 0;
                            image_angle = (floor((image_angle + 45)/90) * 90) % 360;
                        }

                    } else {
                        hsp *= (hsp - fric) / hsp;
                    }
                }
                break;

            case AS_HIT:
                break;

            case AS_DESTROY:
                var state_length = 1;
                // print_debug("destroy acorn in " + string(state_timer));
                if (ds_list_valid(colliding_hitboxes)) {
                    ds_list_destroy(colliding_hitboxes);
                }

                player_id.nut_count--;
                instance_destroy();
                break;
        }

    } else {    //Take hitpause when hit.
        // print_debug("hitstop: " + string(hitstop));
        if (hitstop > 0) {
            hitstop--;
        } else {
            hitstop_full = 0;
            hitpause = false;
            hsp = vel_x;
            vsp = vel_y;
        }
    }

}

#define hitbox_check {
    // print_debug("hitbox check");
    //Modified from NES Kirby's block code.
    if(hit_lockout <= 0) {
        with(asset_get("pHitBox")) {
            if(place_meeting(x,y,other) && "hitbox_has_hit_loadent_nut" not in self && type != 2) {
                // print_debug("hitbox check");
                ds_list_add(other.colliding_hitboxes,id);
            }
        }
    } else if (hit_lockout > 0) {
        hit_lockout--;
    }
    
    var currentHighestPriority = noone;
    if(ds_list_size(colliding_hitboxes) > 1) {
        for (var i = 0; i < ds_list_size(colliding_hitboxes); i++) {
            if(currentHighestPriority != noone) {
                if (colliding_hitboxes[| i].hit_priority > currentHighestPriority.hit_priority) {
                    currentHighestPriority = colliding_hitboxes[| i];
                }
            } else {
                currentHighestPriority = colliding_hitboxes[| i];
            }
        } 
    } else if (ds_list_size(colliding_hitboxes) == 1) {
        currentHighestPriority = colliding_hitboxes[| 0];
    }
        
    ds_list_clear(colliding_hitboxes);
                
    if (currentHighestPriority != noone) {
        // print_debug("Hit!");
        with (currentHighestPriority) {
            hitbox_has_hit_loadent_nut = true;
            hitstop_full = floor(hitpause + damage * hitpause_growth * .05 - 2);
            hitstop = floor(hitpause + damage * hitpause_growth * .05 - 2);
            other.hitstop_full = hitstop_full;
            other.hitstop = hitstop;
            other.hitpause = true;
            other.spr_dir = spr_dir;
            other.vel_x = lengthdir_x(max(other.vel_min, kb_value * other.kba), kb_angle) * spr_dir;
            other.vel_y = lengthdir_y(max(other.vel_min, kb_value * other.kba), kb_angle);
            other.hsp = 0;
            other.vsp = 0;
            other.spin += spr_dir * kb_value * kb_angle / 20;

            if (!other.free && kb_value >= other.bounce_kb && kb_angle % 360 > 180) {
                other.vel_y = -abs(lengthdir_y(kb_value * other.elasticity * other.kba, kb_angle));
            }

            if (player_id == other.player_id && (attack == AT_FTILT || attack == AT_FAIR || attack == AT_UAIR || (attack == AT_NAIR && hbox_num == 1 || hbox_num == 2 || hbox_num == 3))) {
                other.charge = player_id.charge;
            }

            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x, other.y+hit_effect_y, hit_effect);

            other.hit_lockout = 20;
            
            hitbox_has_hit_death_totem = true;
            
            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);

            with (player_id) {
                old_hsp = hsp;
                old_vsp = vsp;                      
                
                hitpause = true;
                has_hit = true;
            }

            player_id.hitstop = ceil(hitpause+hitpause_growth*.05-2);
            other.hitstop = ceil(hitpause+hitpause_growth*.05-2);
        }

        return true;
    } else {
        return false;
    }
}