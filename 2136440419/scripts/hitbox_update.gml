// HODAN'S HITBOX UPDATE

switch (attack) {
    case AT_FSPECIAL:
    case AT_NSPECIAL:
        with (oPlayer) if (player != other.player) {
            if (activated_kill_effect) {
                var galaxy = true;
                var player_to_hit = player;
            } else {
                var galaxy = false;
            }
        } 
        if (galaxy) {
            can_hit[player_to_hit] = false;
        }
        if (attack == AT_NSPECIAL && !player_id.nspecial_recorded) {
            // Assigns the latest nspecial ID for use in article1_update
            player_id.last_nspecial_id = self;
            player_id.nspecial_recorded = true;
        }
        if (hbox_num < 3) {
            // Makes the sweatwhirl_held variable
            if (player_id.nspecial_thrown) {
                player_id.sweatwhirl_held = "held_";
                player_id.sweatwhirl_held_draw = "_held";
            } else {
                player_id.sweatwhirl_held = "";
                player_id.sweatwhirl_held_draw = "";
            }
            
            // Makes the sweatwhirl drop if jump cancelled
            if ((player_id.sweatwhirl_grabbed || player_id.nspecial_thrown) && hitbox_timer < player_id.nspecial_time + player_id.nspecial_hold_time) {
                hitbox_timer = player_id.nspecial_time + player_id.nspecial_hold_time;
                player_id.sweatwhirl_grabbed = false;
            }
        
            // Makes the collision box invisible 
            if (!player_id.hitbox_view || !player_id.practice_mode) {
                visible = false;
            }
            if (player_id.sweatwhirl_charged && player_id.sweatwhirl_level == 1) {
                with (oPlayer) if (id == other.player_id) {
                    var fspecial_mask = sprite_get("fspecial_hitbox");
                }
                mask_index = fspecial_mask;
            }
            
            // Gives the sweatwhirl hitpause on a leveled hit
            if (player_id.sweatwhirl_hitpause_frames <= -1) {
                player_id.sweatwhirl_hitpause_frames = -1;
                player_id.sweatwhirl_old_hsp = hsp;
                player_id.sweatwhirl_old_vsp = vsp;
            } else {
                // Double speed the hitpause reduction on the slightly weaker one
                if (player_id.sweatwhirl_level == 2) {
                    player_id.sweatwhirl_hitpause_frames -= 2;
                } else {
                    player_id.sweatwhirl_hitpause_frames--;
                }
                if (player_id.sweatwhirl_hitpause_frames < 2) {
                    hsp = player_id.sweatwhirl_old_hsp;
                    vsp = player_id.sweatwhirl_old_vsp;
                } else {
                    hsp = 0;
                    vsp = 0;
                }
            }
            
            // Adjusts the knockback on leveled hits
            if (player_id.sweatwhirl_level == 2) {
                with (player_id) {
                    if (sweatwhirl_charged) {
                        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
                        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
                    } else {
                        if (other.hbox_num == 1) {
                            if (other.attack == AT_FSPECIAL) {
                                other.kb_value = 9;
                            } else {
                                other.kb_value = 7;
                            }
                        }
                    }
                }
            } else if (player_id.sweatwhirl_level == 3) {
                if (player_id.sweatwhirl_level_3_timer != -1) {
                    player_id.sweatwhirl_level_3_timer++;
                }
                with (player_id) {
                    if (sweatwhirl_charged) {
                        set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
                        set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
                    } else {
                        if (other.hbox_num == 1) {
                            if (other.attack == AT_FSPECIAL) {
                                other.kb_value = 11;
                            } else {
                                other_kb_value = 7;
                            }
                        }
                    }
                }
            }
            
            if (player_id.sweatwhirl_level > 1) {
                // Summons a multihit pulling hitbox every few frames
                var x_var = x + hsp;
                var y_var = y + vsp;
                if (!player_id.sweatwhirl_leveled_hit) {
                    with (player_id) {
                        // If it's thrown, spawn it a bit higher
                        if (!nspecial_thrown) {
                            create_hitbox(AT_NSPECIAL, 4, round(x_var), round(y_var));
                        } else {
                            create_hitbox(AT_NSPECIAL, 4, round(x_var + 4), round(y_var - 28));
                        }
                    }
                } else {
                    if (player_id.sweatwhirl_level == 3 && player_id.sweatwhirl_level_3_timer % player_id.sweatwhirl_level_3_timing == 0) {
                        create_hitbox(AT_NSPECIAL, 4, round(x_var), round(y_var));
                    }
                }
                
                if (get_gameplay_time() - player_id.sweatwhirl_leveled_hit_time > player_id.sweatwhirl_leveled_hit_reset) {
                    // If the second hit still hasn't connected, throw out another one for safe-measure
                    player_id.sweatwhirl_leveled_hit = false;
                }
            }
            
            if (hbox_num == 1) {
                // Sets that the sweatwhirl exists
                if (!destroyed) {
                    player_id.sweatwhirl_exists = true;
                } else {
                    player_id.sweatwhirl_exists = false;
                }
                
                // Sweatwhirl kasplodes on death
                if (player_id.state == PS_RESPAWN) {
                    hbox_num = 3;
                    destroyed = true;
                }
                
                
                var blastzone_r = room_width - get_stage_data(SD_X_POS) + get_stage_data(SD_SIDE_BLASTZONE);
                var blastzone_l = get_stage_data(SD_X_POS) - get_stage_data(SD_SIDE_BLASTZONE);
                var blastzone_t = get_stage_data(SD_Y_POS) - get_stage_data(SD_TOP_BLASTZONE);
                var blastzone_b = get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE);
                
                // hitbox_update
                
                // Assures that the sweatwhirl dies
                if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b) {
                    player_id.sweatwhirl_exists = false;
                    hbox_num = 3;
                    destroyed = true;
                    destroy_fx = 1; // Assures that it disappears from reality rather than
                    // visibly explode
                }
            }
            // Slight hardcode magic here - this animated the sweatwhirl properly to have
            // startup and a loop
            // Make these player variables local. Slightly uncecessary, but makes them
            // green.
            var anim_speed = player_id.sweatwhirl_anim_speed; // How many frames it takes to update the looping part
            var startup_frames = player_id.sweatwhirl_startup_anim_frames; // How many actual animation frames sweatwhirl has
            var max_frames = player_id.sweatwhirl_max_frames; // The full amount of frames it has
            var startup = player_id.sweatwhirl_startup_frames; // The game-startup time
            if (hitbox_timer < startup) {
                // Slightly complex - this basically just automatically splits the total
                // startup time into equal halves depending on how many startup frames
                // are defined
                image_index = floor((hitbox_timer / (startup)) * (startup_frames - 0.1));
            } else  {
                with (oPlayer) if (id == other.player_id) {
                    var sweatwhirl_proj = sprite_get("sweatwhirl_proj_"+ sweatwhirl_held + "hurt");
                    var sweatwhirl_proj_hit = sprite_get("sweatwhirl_proj_"+ sweatwhirl_held + "hitbox");
                    var sweatwhirl_proj2 = sprite_get("sweatwhirl_proj2_"+ sweatwhirl_held + "hurt");
                    var sweatwhirl_proj3 = sprite_get("sweatwhirl_proj3_"+ sweatwhirl_held + "hurt");
                    var sweatwhirl_proj_hit2 = sprite_get("sweatwhirl_proj2_"+ sweatwhirl_held + "hitbox");
                    var sweatwhirl_proj_hit3 = sprite_get("sweatwhirl_proj3_"+ sweatwhirl_held + "hitbox");
                }
                switch (player_id.sweatwhirl_level) {
                    case 1:
                        sprite_index = sweatwhirl_proj;
                        if (player_id.nspecial_thrown) {
                            mask_index = sweatwhirl_proj_hit;
                        }
                        break;
                    case 2:
                        sprite_index = sweatwhirl_proj2;
                        mask_index = sweatwhirl_proj_hit2;
                        break;
                    case 3:
                        sprite_index = sweatwhirl_proj3;
                        mask_index = sweatwhirl_proj_hit3;
                        anim_speed = 8;
                        break;
                }
                if (hitbox_timer % anim_speed == 0) {
                    if (player_id.sweatwhirl_level == 1) {
                        // loops between max frame and the end of the startup frame every sweatwhirl_anim_speed frames
                        if (image_index < max_frames) {
                            image_index += 1;
                        } else {
                            image_index = startup_frames;
                        }
                    } else {
                        image_index += 1;
                    }
                }
            }
            // Sets the time so that it can later check if the time is desynced, which would
            // prove the projectile is dead
            player_id.sweatwhirl_cooldown_time = get_gameplay_time();
            if ((!free || y >= get_stage_data(SD_BOTTOM_BLASTZONE) + get_stage_data(SD_TOP_BLASTZONE)) && hbox_num == 1) {
                destroyed = true;
            }
            if (getting_bashed) {
                player_id.sweatwhirl_bashed = true;
            } else if (!player_id.sweatwhirl_bashed) {
                // Give sweatwhirl gravity + speed
                // These values are made into local variables because it does not work if they are not.
                var f_hspeed = player_id.fspecial_hspeed;
                var f_vspeed = player_id.fspecial_vspeed;
                var f_time = player_id.fspecial_time;
                var n_hspeed = player_id.nspecial_hspeed;
                var n_vspeed = player_id.nspecial_vspeed;
                var n_time = player_id.nspecial_time;
                var n_hold_time = player_id.nspecial_hold_time;
                var n_full_time = player_id.nspecial_full_time;
                if (!player_id.sweatwhirl_charged && player_id.sweatwhirl_hitpause_frames == -1) {
                    if (attack == AT_FSPECIAL) {
                        if (vsp < 14) {
                            // Keep going faster until terminal velocity of 14
                            vsp += 0.2;
                        }
                        if (spr_dir == 1 && hsp > 0 || spr_dir == -1 && hsp < 0) {
                            // Gradually slow down the arc
                            hsp -= 0.075 * spr_dir;
                        } else {
                            // Make sure it snaps to 0
                            hsp = 0;
                        }
                    } else if (attack == AT_NSPECIAL) {
                        if (!player_id.nspecial_thrown) {
                            if (hitbox_timer <= n_time) {
                                hsp = ease_circIn( n_hspeed * spr_dir, 0, hitbox_timer, n_time );
                            } else if (hitbox_timer <= n_time + n_hold_time) {
                                hsp = 0;
                                vsp = 0;
                            } else if (hitbox_timer <= n_time + n_hold_time + n_full_time) {
                                hsp = 0;
                                vsp = ease_circIn( 0, n_vspeed, hitbox_timer - n_time - n_hold_time, n_full_time );
                            }
                        } else {
                            vsp = player_id.dspecial_throw_speed;
                            hsp = 0;
                            kb_angle = 270;
                        }
                    }
                } else if (player_id.sweatwhirl_charged) {
                    vsp = 0;
                }
            }
            if (destroyed && hbox_num == 1) {
                player_id.sweatwhirl_exists = false; // Assures that it no longer exists
                if (!was_parried) {
                    // Tell the update script to create the vapour
                    player_id.create_vapour = true;
                    player_id.vapour_fx_xy = [x, y]; 
                }
                // Grab the desction sound fx and assure Hodan is the creator of them
                with (oPlayer) if ("is_stinky_monke" in self) {
                    var steam1 = sound_get("sfx_stinky_steam1");
                    var steam2 = sound_get("sfx_stinky_steam2");
                }
                // Do destruction SFX
                if (!player_id.sweatwhirl_charged) {
                    if (attack == AT_FSPECIAL) {
                        sound_play(steam1);
                    } else if (attack == AT_NSPECIAL) {
                        sound_play(steam2);
                    }
                } else {
                    sound_play(steam1);
                }
            }
        } else if (attack == AT_NSPECIAL && hbox_num == 4) {
            
            // Make charged hits do more damage
            if (player_id.sweatwhirl_level == 2) {
                if (player_id.sweatwhirl_charged) {
                    damage = 3;
                } else {
                    damage = 2;
                }
            } else if (player_id.sweatwhirl_level == 3) {
                if (player_id.sweatwhirl_charged) {
                    damage = 2;
                } else {
                    damage = 1;
                }
            }
        }
        
        if (hbox_num == 2 && player_id.parry_sweatwhirl_hit) {
            // Make it work on parry by checking if you were just hit by it
            can_hit_self = true;
            player_id.parry_sweatwhirl_hit = false;
        }
        break;
    case AT_USPECIAL:
    case AT_DSPECIAL:
        if (player_id.sweatwhirl_grabbed && player_id.sweatwhirl_level == 1) {
            with (oPlayer) if (player_id == other) {
                var local_damage1 = get_hitbox_value(other.attack, 1, HG_DAMAGE);
                var local_damage2 = get_hitbox_value(other.attack, 2, HG_DAMAGE);
                var local_kb1 = get_hitbox_value(other.attack, 1, HG_BASE_KNOCKBACK);
                var local_kb2 = get_hitbox_value(other.attack, 2, HG_BASE_KNOCKBACK);
            }
            if (hbox_num == 1) {
                damage = local_damage1 + 2;
                kb_value = local_kb1 + 1;
            } else if (hbox_num == 2) {
                damage = local_damage2 + 2;
                kb_value = local_kb2 + 1;
            }
        }
        break;
}
