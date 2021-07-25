///Acorn update script.

//Defining state names
#macro AS_SPAWN 0
#macro AS_SPAWN_TRANSITION 1
#macro AS_IDLE 2
#macro AS_HIT 3
#macro AS_DESTROY 4

if (init == false) {
    init = true;
    spr_dir = player_id.spr_dir;

    // with (asset_get("obj_article1")) {
    //     if (id != other.id && player_id == other.player_id && state < 2) {
    //         state = AS_DESTROY;
    //         state_timer = 0;
    //     }
    // }

    // sprite_index = sprite_get("acornmask");

} else {

    if ("time_charged" in self) {
        // print_debug("charged");
        if (charge == 1) {
            if (get_gameplay_time() == time_charged + player_id.field_pos_open_length) {
                // print_debug("play pos sound");
                sound_play(player_id.field_pos_active_sound, true, noone, 0.25);
            }
        } else if (charge == -1) {
            if (get_gameplay_time() == time_charged + player_id.field_neg_open_length) {
                // print_debug("play neg sound");
                sound_play(player_id.field_neg_active_sound, true, noone, 0.25);
            }
        }
    }

    if (!hitpause) {
        state_timer++;
        // print_debug(string(state_timer));
        if((hp <= 0 || place_meeting(x, y, asset_get("plasma_field_obj"))) && state != AS_DESTROY) {
            state = AS_DESTROY;
            state_timer = 0;
        }

        switch (state) {
            case AS_SPAWN:
                //If the Loadent has left the active window of the spawning move, transition to idle. Otherwise accelerate.
                if (player_id.attack != AT_FSPECIAL_AIR || player_id.window != 3) {
                    state = AS_SPAWN_TRANSITION;
                    state_timer = 0;
                } else {
                    hsp += haccel * player_id.spr_dir;  //Always accelerate in the direction Loadent is facing.
                    if (player_id.up_down) {
                        vsp -= vaccel;  //If Loadent is holding up, accelerate up.
                    } else {
                        vsp = min(vsp + vaccel, 0); //Otherwise, accelerate down until no longer moving vertically.
                    }
                }
                break;

            case AS_SPAWN_TRANSITION:
                var state_length = 32;

                hsp = 0;    //Stop the acorn.
                vsp = 0;
                time_charged = get_gameplay_time();

                if(state_timer == 1) {
                    // print_debug(string(charge));
                    if (charge == 1) {
                        sound_play(player_id.field_pos_open_sound);
                    } else if (charge == -1) {
                        sound_play(player_id.field_neg_open_sound);
                    }

                    if(charge != 0) {
                        create_hitbox(AT_FSPECIAL, 1, x, y);
                    }
                }

                if(state_timer == state_length) {
                    state = AS_IDLE;
                    state_timer = 0;
                }

                break;

            case AS_IDLE:
                hsp = 0;    //Stop the acorn.
                vsp = 0;

                hitbox_check();

                //Electric Field behavior. Only creates a field if charged.
                if (charge != 0) {
                    with (asset_get("oPlayer")) {   //Behavior for players.
                        var ld_t_com_y = y - (bbox_bottom - bbox_top) / 2;   //Target center of mass y.

                        //Ignore if the player is in a dodge/tech state.
                        if(!invincible && !(state_cat == SC_HITSTUN && other.charge == 1) && state != PS_AIR_DODGE && state != PS_PARRY_START && state != PS_PARRY && state != PS_ROLL_FORWARD && state != PS_ROLL_BACKWARD && state != PS_TECH_FORWARD && state != PS_TECH_BACKWARD && state != PS_TECH_GROUND && state != PS_WALL_TECH) {
                            var ld_player_dist = point_distance(other.x, other.y, x, ld_t_com_y); //Distance to player.
                            var ld_player_dir = point_direction(other.x, other.y, x, ld_t_com_y); //Direction to player.

                            //Check to see if player is within the area affected by the field.
                            if(ld_player_dist <= other.radius && ld_player_dist > other.deadzone_radius) {
                                //Apply Coulumb's Law to the player.
                                var ld_mult = (other.charge == -1 ? other.neg_mult : 1);
                                var ld_delta_v = other.k * knockback_adj * other.charge * ld_mult / (ld_player_dist * ld_player_dist);

                                //Convert the change in velocity from polar to Cartesian coordinents and apply the corresponding component of the change to the velocity.
                                //Ignore player if their speed is being forced by their current attack window so that it doesn't interfere with recoveries.

                                //Set speed limits
                                if("ld_old_speed" in self) {
                                    var ld_sp_lim = (state_cat == SC_HITSTUN) ? ((id == other.player_id) ? max(other.speed_limit,ld_old_speed) : max(air_max_speed,ld_old_speed)) : ((id == other.player_id) ? other.speed_limit : air_max_speed);
                                } else {
                                    var ld_sp_lim = ((id == other.player_id) ? other.speed_limit : air_max_speed);
                                }
                                // print_debug("speed limit: " + string(ld_sp_lim));

                                if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
                                    if(get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) != 1 && get_window_value(attack, window, AG_WINDOW_VSPEED_TYPE) != 1) {
                                        if (free) { //Only affect vertical speed if in the air.
                                            vsp = vsp - lengthdir_y(ld_delta_v, ld_player_dir); //Coded like this in case it needs to be clamped later.
                                        }

                                        hsp = hsp - lengthdir_x(ld_delta_v, ld_player_dir);

                                        if(point_distance(0, 0, hsp, vsp) >  ld_sp_lim * ld_mult) {
                                            var vel_dir = point_direction(0, 0, hsp, vsp);
                                            hsp = lengthdir_x( ld_sp_lim * ld_mult, vel_dir);
                                            vsp = lengthdir_y( ld_sp_lim * ld_mult, vel_dir);
                                        }
                                    }
                                } else {                                
                                    if (free) { //Only affect vertical speed if in the air.
                                        vsp = vsp - lengthdir_y(ld_delta_v, ld_player_dir); //Coded like this in case it needs to be clamped later.
                                    }

                                    hsp = hsp - lengthdir_x(ld_delta_v, ld_player_dir);

                                    if(point_distance(0, 0, hsp, vsp) >  ld_sp_lim * ld_mult) {
                                        var vel_dir = point_direction(0, 0, hsp, vsp);
                                        hsp = lengthdir_x( ld_sp_lim * ld_mult, vel_dir);
                                        vsp = lengthdir_y( ld_sp_lim * ld_mult, vel_dir);
                                    }
                                }
                            }
                        }
                    }
                    with (asset_get("pHitBox")) {   //Behavior for projectiles.
                        if(type == 2 && !unbashable) { //Check to see if the hitbox is a projectile that can be bashed.
                            var ld_proj_dist = point_distance(other.x, other.y, x, y);  //Distance to projectile.
                            var ld_proj_dir = point_direction(other.x, other.y, x, y);  //Direction to projectile.

                            //Check to see if projectile is within area affected by the field.
                            if(ld_proj_dist <= other.radius && ld_proj_dist > other.deadzone_radius) {
                                //Apply Coulomb's Law to the projectile.
                                var ld_mult = (other.charge == -1 ? other.neg_mult : 1);
                                var ld_delta_v = other.k * other.charge * ld_mult / (ld_proj_dist * ld_proj_dist);

                                //Convert the change in velocity from polar to Cartesian coordinates and apply to the projectile's velocity.
                                vsp -= lengthdir_y(ld_delta_v, ld_proj_dir);
                                hsp -= lengthdir_x(ld_delta_v, ld_proj_dir);
                                proj_angle = point_direction(0, 0, hsp, vsp);   //Make the projectile sprite turn with its velocity.
                            }

                        }
                    }

                    with (asset_get("obj_article3")) {   //Behavior for nut.
                        if(player_id.url == other.player_id.url) { //Check to see if the article is a Loadent nut.
                            var ld_proj_dist = point_distance(other.x, other.y, x, y);  //Distance to nut.
                            var ld_proj_dir = point_direction(other.x, other.y, x, y);  //Direction to nut.

                            //Check to see if nut is within area affected by the field.
                            if(ld_proj_dist <= other.radius && ld_proj_dist > other.deadzone_radius) {
                                //Apply Coulomb's Law to the nut.
                                var ld_mult = (other.charge == -1 ? other.neg_mult : 1);
                                var ld_delta_v = other.k * kba * other.charge * ld_mult / (ld_proj_dist * ld_proj_dist);

                                //Convert the change in velocity from polar to Cartesian coordinates and apply to the nut's nut.
                                vsp -= lengthdir_y(ld_delta_v, ld_proj_dir);
                                hsp -= lengthdir_x(ld_delta_v, ld_proj_dir);
                                image_angle = point_direction(0, 0, hsp, vsp);   //Make the nut sprite turn with its velocity.
                            }
                        }
                    }
                }
                break;

            case AS_HIT:
                var state_length = 30;

                if (state_timer == state_length) { //Once the animation has played out, go back to idle.
                    state = AS_IDLE;
                    state_timer = 0;
                }
                break;

            case AS_DESTROY:
                var state_length = 10;
                // print_debug("destroy acorn in " + string(state_timer));
                if(state_timer == 1) {
                    if(charge == 1) {
                        sound_stop(player_id.field_pos_active_sound);
                        sound_play(player_id.field_pos_close_sound);
                    } else if (charge == -1) {
                        sound_stop(player_id.field_neg_active_sound);
                        sound_play(player_id.field_neg_close_sound);
                    }
                }

                if (ds_list_valid(colliding_hitboxes)) {
                    ds_list_destroy(colliding_hitboxes);
                }
                if (charge != 0 && state_timer == state_length) {
                    instance_destroy();
                } else if (charge == 0) {
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
            if(player_id != other.player_id && get_player_team(player_id.player) != get_player_team(other.player_id.player) && place_meeting(x,y,other) && "hitbox_has_hit_acorn" not in self)
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

            sound_play(sound_effect);
            spawn_hit_fx(other.x+hit_effect_x, other.y+hit_effect_y, hit_effect);

            other.hit_lockout = 10;
            
            hitbox_has_hit_acorn = true;
            
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