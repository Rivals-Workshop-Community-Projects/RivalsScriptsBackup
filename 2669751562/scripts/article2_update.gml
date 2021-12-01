//Defining state names
#macro AS_SPAWN 0
#macro AS_SPAWN_TRANSITION 1
#macro AS_IDLE 2
#macro AS_HIT 3
#macro AS_DESTROY 4

if (init == false) {
    init = true;
    spr_dir = player_id.spr_dir;
    hsp = spr_dir * lengthdir_x(spawn_speed, spawn_angle);
    vsp = lengthdir_y(spawn_speed, spawn_angle);

} else {
    if (!hitpause) {
        state_timer++;
        
        if((hp <= 0 || place_meeting(x, y, asset_get("plasma_field_obj"))) && state != AS_DESTROY) {
            state = AS_DESTROY;
            state_timer = 0;
        }

        switch (state) {
            case AS_SPAWN:
                if(point_distance(0,0,hsp,vsp) > 1) {
                    hsp *= spawn_slow_factor;
                    vsp *= spawn_slow_factor;
                    image_angle = point_direction(0,0,hsp,vsp);

                } else {
                    state = AS_IDLE;
                    state_timer = 0;
                    y_root = y;
                    x_root = x;
                }
                break;

            case AS_IDLE:
                hsp = 0;    //Stop the rock.
                vsp = 0;
                image_angle = 0;

                vsp = .5 * dsin(state_timer * frequency);

                hitbox_check();

                if (state_timer >= arming_time) {

                    if(state_timer % 2 == 0) {
                        var hbox = create_hitbox(AT_NSPECIAL, 1, x, y)
                        hbox.hsp = hsp;
                        hbox.vsp = vsp;
                    }

                    with(asset_get("oPlayer")) {
                        if(id != other.player_id) {
                            if(y > other.y) {
                                var skl_ang_from_rock = point_direction(other.x, other.y, x, y);
                                
                                // print_debug(angle_difference(skl_ang_from_rock, 270));

                                if( abs(angle_difference(skl_ang_from_rock, 270)) <= other.detection_fov &&
                                    abs(other.x - x) <= other.detection_range_max) {
                                    other.state = AS_DESTROY;
                                    other.state_timer = 0;
                                }
                            }
                        }
                    }
                }
                
                break;

            case AS_DESTROY:
                if (ds_list_valid(colliding_hitboxes)) {
                    ds_list_destroy(colliding_hitboxes);
                }

                if(state_timer == 1) {
                    sound_play(player_id.sfx_stealth_rock_activate);
                }

                if(state_timer % shake_frequency == 0) {
                    x = x_root + shake_intensity - random_func(get_gameplay_time() % 25, shake_intensity * 2, true);
                    y = y_root + shake_intensity - random_func((get_gameplay_time()+12) % 25, shake_intensity * 2, true);
                }

                if (state_timer == death_timer) {
                    x = x_root;
                    y = y_root;
                    var falling_rock = create_hitbox(AT_NSPECIAL, 2, x, y);
                    falling_rock.can_hit[player_hit_by] = false;
                    instance_destroy();
                }
                break;
        }

    } else {    //Take hitpause when hit.
        // print_debug("hitstop: " + string(hitstop));
        if (hitstop > 0) {
            hitstop--;
        } else {
            hitstop_full = 0;
            hitpause = false;
        }
    }

}

#define hitbox_check {
    //Modified from NES Kirby's block code.
    if(hit_lockout <= 0) {
        with(asset_get("pHitBox")) {
            if(player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && "hitbox_has_hit_rock" not in self)
                ds_list_add(other.colliding_hitboxes,id);
        }
    }
    else if (hit_lockout > 0) {
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
    }
    else if(ds_list_size(colliding_hitboxes) == 1) {
        currentHighestPriority = colliding_hitboxes[| 0];
    }
        
    ds_list_clear(colliding_hitboxes);
                
    if(currentHighestPriority != noone) {
        with(currentHighestPriority) {
            hitstop_full = floor(hitpause + damage * hitpause_growth * .05 - 2);
            hitstop = floor(hitpause + damage * hitpause_growth * .05 - 2);
            other.hitstop_full = hitstop_full;
            other.hitstop = hitstop;
            other.hitpause = true;
            other.hp -= damage;
            other.hb_last = self;
            
            if(type == 1)
                other.player_hit_by = player;

            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x, other.y+hit_effect_y, hit_effect);

            other.hit_lockout = 10;
            
            hitbox_has_hit_rock = true;

            
            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);

            with(player_id)
            {
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