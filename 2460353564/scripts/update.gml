time_since_last_mp_spend++;
time_since_last_no_mp_fx++;

////////////////////////////////////////////////////////////////////////////////
//                               Dash Trails                                  //
////////////////////////////////////////////////////////////////////////////////

// dash start triggers the trail and it will stay on until certain states cancel it out
if (state == PS_DASH_START) {
    trail_active = true;
}
else if (state == PS_DASH || state == PS_DASH_TURN || state == PS_DASH_STOP || state == PS_AIR_DODGE || state == PS_IDLE_AIR || state == PS_ATTACK_AIR || state == PS_JUMPSQUAT || state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP) {
    // may do something here in the future, these states are explicitly exempt from losing trail
}
else if (sqrt((hsp*hsp) + (vsp*vsp)) < trail_min_velocity || state == PS_RESPAWN || state == PS_DEAD || state == PS_SPAWN || state == PS_PRATLAND || state == PS_TUMBLE || state_cat == SC_HITSTUN) {
    trail_active = false;
}

// store positions and sprite indexes for use in drawing trails
// if the sprite has changed, push everything in the arrays one slot forward and let the last one fall off, then write the new info into slot 0
if (--frames_until_next_snapshot <= 0) {
    frames_until_next_snapshot = frames_between_state_snapshots;
    var i;
    for (i = trail_history_states-1; i > 0; i--) {
        prev_poses_x[i] = prev_poses_x[i-1];
        prev_poses_y[i] = prev_poses_y[i-1];
        prev_spr_indexes[i] = prev_spr_indexes[i-1];
        prev_img_indexes[i] = prev_img_indexes[i-1];
        prev_spr_dirs[i] = prev_spr_dirs[i-1];
    }
}

if (trail_active) {
    prev_poses_x[0] = x;
    prev_poses_y[0] = y;
    prev_spr_indexes[0] = sprite_index;
    prev_img_indexes[0] = image_index;
    prev_spr_dirs[0] = spr_dir;
} else {
    prev_poses_x[0] = -1;
    prev_poses_y[0] = -1;
    prev_spr_indexes[0] = -1;
    prev_img_indexes[0] = -1;
    prev_spr_dirs[0] = 0;
}

////////////////////////////////////////////////////////////////////////////////
//                                Hovering                                    //
////////////////////////////////////////////////////////////////////////////////

// Sakuya can hover if:
// - can_hover is true, which is set to false upon being hit and resets when touching the ground or wall jumping/teching
// - we're in an aerial state aside from a falling dtilt (this condition gets a little messy)
// - vspeed > 0 meaning we've passed the apex of the jump
// - the jump button is currently held down
if (can_hover && (state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_IDLE_AIR || (state == PS_ATTACK_AIR && attack != AT_DTILT)) && vsp > 0 && jump_down) {
    hovering = true;
    gravity_speed = true_gravity_speed * hover_gravity_multiplier;
    max_fall = true_max_fall * hover_gravity_multiplier;

    /*
    // if the button was just pressed or we're coming out of a wall jump, take away a little velocity
    if (jump_pressed || prev_state == PS_WALL_JUMP) {
        vsp *= hover_gravity_multiplier;
    } */
} else {
    hovering = false;
    gravity_speed = true_gravity_speed;
    max_fall = true_max_fall;
}

// getting hit takes away the ability to hover
if (state_cat == SC_HITSTUN) {
    can_hover = false;
}

// touching the ground or wall jumping restores the ability to hover
if (!free || state == PS_WALL_JUMP || state == PS_WALL_TECH) {
    can_hover = true;
}

////////////////////////////////////////////////////////////////////////////////
//                                  Dtilt                                     //
////////////////////////////////////////////////////////////////////////////////


if (state == PS_ATTACK_GROUND && attack == AT_DTILT) {
    // limit max jump hsp during dtilt
    max_jump_hsp = true_max_jump_hsp*0.125;
} else if (max_jump_hsp < true_max_jump_hsp) {
    max_jump_hsp += true_max_jump_hsp*0.125;
}

if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DTILT && has_hit) {
    // if the player is still moving forward with respect to their sprite direction, give them speed in the opposite direction
    if (hsp*spr_dir > 0) {
        hsp = -spr_dir * dtilt_bounce_speed;
    }
}

/*
// make it so you can slide on down+jump like in Luna Nights. overrides the dagger mash protection cooldown
if ((state == PS_CROUCH || state == PS_JUMPSQUAT) && down_down && jump_pressed) {
    move_cooldown[AT_DTILT] = 0;
    set_attack(AT_DTILT);
}*/

////////////////////////////////////////////////////////////////////////////////
//                                Knife Throw                                 //
////////////////////////////////////////////////////////////////////////////////

// keep dash state after throw
// previous state tracking seems a little weird with dash attack and/or the way i'm overriding it... this might be a buggy way of keeping run going after dattack
if (state == PS_WALK && prev_state == PS_IDLE && prev_prev_state == PS_ATTACK_GROUND && attack == AT_JAB && abs(throw_start_hsp) >= dash_speed) {
    set_state(PS_DASH);
}

// tick down the sound cooldown every frame
cur_knife_hitsound_cooldown--;

////////////////////////////////////////////////////////////////////////////////
//                             Nspecial Replacement                           //
////////////////////////////////////////////////////////////////////////////////
if (state_cat == SC_GROUND_NEUTRAL || state_cat == SC_AIR_NEUTRAL && state != PS_TUMBLE) {
    if (special_pressed && joy_pad_idle) {
        // if this is the first frame where autofire_on will be true, set a small cooldown here so one doesn't fire instantly in case it's actually a different input
        if (!autofire_on) {
            nspecial_cooldown_remaining = max(nspecial_cooldown_remaining, nspecial_cooldown*0.25);
        }

        autofire_on = true;
    }    
}

if (!special_down || state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR || state_cat == SC_HITSTUN || state == PS_DEAD || state == PS_SPAWN || state == PS_RESPAWN) {
    autofire_on = false;
}

if (special_down && autofire_on) {
    if (nspecial_cooldown_remaining <= 0) {
        if (mp >= mp_cost_nspecial) {
            sound_play(sound_get("s800_kengeki00"));

            var sakuya_nearest_player = noone;
            var sakuya_closest_distance = 999999;
            with asset_get("oPlayer"){
                if (player != other.player && get_player_team(player) != get_player_team(other.player)) {
                    var d = point_distance(x, y, other.x, other.y);
                    if (d < sakuya_closest_distance) {
                        sakuya_nearest_player = self;
                        sakuya_closest_distance = d;
                    }
                }
            }

            var start_x = x + 60 - random_func(2, 120, true);
            var start_y = y - 32 + 60 - random_func(3, 120, true);
            var angle = 0;
            if (sakuya_nearest_player != noone) {
                if (spr_dir == 1) {
                    angle = darctan2(sakuya_nearest_player.y - sakuya_nearest_player.char_height*0.5 - start_y, sakuya_nearest_player.x - start_x*spr_dir);
                } else {
                    angle = darctan2(sakuya_nearest_player.y - sakuya_nearest_player.char_height*0.5 - start_y, start_x - sakuya_nearest_player.x);
                }
            } else {
                angle = 30 - random_func(4, 60, true);
            }
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, dcos(angle) * nspecial_velocity);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, dsin(angle) * nspecial_velocity);

            var h = create_hitbox(AT_NSPECIAL, 1, start_x, start_y);
            mp -= mp_cost_nspecial;
            time_since_last_mp_spend = 0;
            h.proj_angle = -angle * spr_dir;

            spawn_hit_fx(start_x, start_y, ring_big_sprite);

            nspecial_cooldown_remaining = nspecial_cooldown;
        } else {
            autofire_on = false;
    
            if (time_since_last_no_mp_fx >= 24) {
                var no_mp_fx = no_mp_effect;
                if (spr_dir == -1) {
                    no_mp_fx = no_mp_l_effect;
                }
                time_since_last_no_mp_fx = 0;
                spawn_hit_fx(x, y - char_height - 12, no_mp_fx);
            }
        }
    }
}

nspecial_cooldown_remaining--;

////////////////////////////////////////////////////////////////////////////////
//                                  Ustrong                                   //
////////////////////////////////////////////////////////////////////////////////
if (!hitpause) {
    ustrong_charge_hit_cooldown--;
}

// if we left the ground attack state and a chainsaw is still in our hands, blow it up
if (state != PS_ATTACK_GROUND && cur_chainsaw != undefined) {
    cur_chainsaw.destroyed = true;
    spawn_hit_fx(cur_chainsaw.x, cur_chainsaw.y, explosion_effect);
    cur_chainsaw = undefined;
}

////////////////////////////////////////////////////////////////////////////////
//                                    MP                                      //
////////////////////////////////////////////////////////////////////////////////

if (state == PS_SPAWN || state == PS_RESPAWN) {
    mp = max_mp;
}

new_mp = min(max_mp, mp + mp_regen);
if (mp < max_mp && new_mp == max_mp && mp_vox_cooldown <= 0) {
    // "Magic point max"
    sound_play(sound_get("vo_02fx"));
    mp_vox_cooldown = 300;

    var mpfx = mp_rec_fx;
    if (spr_dir == -1) {
        mpfx = mp_rec_l_fx;
    }
    spawn_hit_fx(x, y - char_height - 12, mpfx);
}
mp = max_mp;
mp_vox_cooldown--;

// if the MP cost is greater than the current MP, this will set a positive cooldown time, meaning the move can't be used
// need to add 1 because i guess this code runs before cooldowns tick down
move_cooldown[AT_JAB] = 1 + ceil(mp_cost_basic - mp);
move_cooldown[AT_USTRONG] = 1 + ceil(mp_cost_ustrong - mp);
move_cooldown[AT_FSTRONG] = 1 + ceil(mp_cost_fstrong - mp);
move_cooldown[AT_DSTRONG] = 1 + ceil(mp_cost_dstrong - mp);
move_cooldown[AT_NAIR] = 1 + ceil(mp_cost_basic - mp);
move_cooldown[AT_DAIR] = 1 + ceil(mp_cost_basic - mp);
move_cooldown[AT_UTILT] = 1 + ceil(mp_cost_basic - mp);
move_cooldown[AT_UAIR] = 1 + ceil(mp_cost_basic - mp);
move_cooldown[AT_NSPECIAL] = max(move_cooldown[AT_NSPECIAL], 1 + ceil(mp_cost_nspecial - mp)); // don't overwrite this with a smaller cooldown if it's already on one
move_cooldown[AT_FSPECIAL] = 1 + ceil(mp_cost_fspecial - mp);
if (timestop_active) {
    // if timestop is on, disable cooldown so we can turn it off
    move_cooldown[AT_DSPECIAL] = 0;
} else {
    move_cooldown[AT_DSPECIAL] = max(move_cooldown[AT_DSPECIAL], 1 + ceil(mp_cost_dspecial - mp));
}

////////////////////////////////////////////////////////////////////////////////
//                              Time Stop                                     //
////////////////////////////////////////////////////////////////////////////////
if (timestop_active) {
    // doing anything while time is stopped increases the drain rate, and attacking really increases it
    if (state == PS_IDLE || state == PS_CROUCH) {
        mp -= timestop_drain;
    } else if (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) {
        // don't do passive drain while dspecial is activating
        if (attack != AT_DSPECIAL) {
            mp -= 3*timestop_drain;
        }
    } else {
        mp -= 2*timestop_drain;
    }
    mp = max(0, mp);

    if (mp <= mp_regen) {
        timestop_active = false;
    }

    with(asset_get("oPlayer")) {
        if (self != other && timestopped) {
            old_vsp = 0;
            vsp = 0;
            old_hsp = 0;
            hsp = 0;
            if (state != PS_HITSTUN) {
                state = PS_HITSTUN;
                hitstop = stored_knockback;
            }
            x = timestop_x;
            y = timestop_y;
        }
    }
} else if ((state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR) || ((state != PS_ATTACK_GROUND || state != PS_ATTACK_AIR) && attack != AT_DSPECIAL)) {
    // double check for any players stuck in timestop and if there are any, make the hitbox that'll pop them out
    someone_timestop_stuck = false;
    with(asset_get("oPlayer")) {
        if (self != other && timestopped) {
            other.someone_timestop_stuck = true;
        }
    }

    if (someone_timestop_stuck) {
        create_hitbox(AT_DSPECIAL, 2, x, y);
    }
}

////////////////////////////////////////////////////////////////////////////////
//                                Graze                                       //
////////////////////////////////////////////////////////////////////////////////

// graze
sakuya_hurtbox = pHurtBox;
has_grazed_this_frame = false;

// graze opponents' bodies
with(asset_get("pHurtBox")) {
    if (!other.has_grazed_this_frame && player != other.player && get_player_team(player) != get_player_team(other.player)) {
        // can't graze while hitting or being hit or while timestopped
        if (!other.timestopped && other.state_cat != SC_HITSTUN && other.state != PS_ATTACK_GROUND && other.state != PS_ATTACK_AIR) {
            var dist = distance_to_object(other.sakuya_hurtbox);

            // if the player is rolling and has no hurtbox, the distance calculation returns a huge number, so we have to do a different calc. magic numbers here are an approximation of sakuya's crouch hurtbox because that was easier than doing it the right way
            if (dist > 10000) {
                if (collision_rectangle(other.x - 21, other.y - 43, other.x + 21, other.y, self, true, false) != noone) {
                    dist = 0;
                }
            }

            if (dist < other.graze_distance || place_meeting(x, y, other.sakuya_hurtbox)) {
                other.graze_timer++;
                other.graze_trigger_x = x;
                other.graze_trigger_y = y - 30;
                other.has_grazed_this_frame = true;
            }
        }
    }
}

// graze opponents' attacks
with(asset_get("pHitBox")) {
    if (!other.has_grazed_this_frame && player != other.player && get_player_team(player) != get_player_team(other.player)) {
        // can't graze while hitting or being hit or while timestopped
        if (!in_hitpause && !other.timestopped && other.state_cat != SC_HITSTUN && other.state != PS_ATTACK_GROUND && other.state != PS_ATTACK_AIR) {
            // distance_to_object doesn't seem to return proper results with hitboxes so we'll have to hack this a bit
            if (collision_rectangle(other.x - 21 - other.graze_distance*0.5, other.y - 60 - other.graze_distance*0.5, other.x + 21 + other.graze_distance*0.5, other.y, self, true, false) != noone) {
                other.graze_timer += 2; //attacks tick this up faster
                other.graze_trigger_x = x;
                other.graze_trigger_y = y - 30;
                other.has_grazed_this_frame = true;
            }
        }
    }
}

graze_cooldown--;

if (!has_grazed_this_frame) {
    // didn't graze, reset timer
    graze_timer = 0;
} else {
    // check to see if we've grazed enough for it to count

    // reduce graze cooldown during timestop
    if (timestop_active) {
        graze_cooldown = min(graze_cooldown, graze_cooldown_btwn_procs * timestop_graze_cooldown_mult);
    }

    if (parried_attack_this_frame || (graze_cooldown <= 0 && graze_timer >= graze_time_before_proc)) {
        sound_play(sound_get("vo_01fx"));
        sound_play(sound_get("s28_life_item"));

        if (!parried_attack_this_frame) {
            graze_cooldown = graze_cooldown_btwn_procs;
        }

        var mp_increase = graze_mp_regen;
        if (parried_attack_this_frame) {
            mp_increase *= 2;
        }

        var new_mp = min(mp + mp_increase, max_mp);
        if (mp < max_mp && new_mp == max_mp && mp_vox_cooldown <= 0) {
            // "Magic point max"
            sound_play(sound_get("vo_02fx"));
            mp_vox_cooldown = 300;

            var mpfx = mp_rec_fx;
            if (spr_dir == -1) {
                mpfx = mp_rec_l_fx;
            }
            spawn_hit_fx(x, y - char_height - 12, mpfx);
        }
        mp = new_mp;

        var grz = graze_fx;
        if (spr_dir == -1) {
            grz = graze_l_fx;
        }
        spawn_hit_fx(x, y - char_height - 12, grz);
    }
}

////////////////////////////////////////////////////////////////////////////////
//                                Misc                                        //
////////////////////////////////////////////////////////////////////////////////
// prevent drift during dspecial
if ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_DSPECIAL) {
    air_max_speed = 0;
} else {
    air_max_speed = true_air_max_speed;
}

// taunt
if (cur_nitori != undefined && cur_nitori.state == 1 && !cur_nitori.vending_machine_spawned) {
    instance_create(cur_nitori.x, cur_nitori.y, "obj_article3");
    cur_nitori.vending_machine_spawned = true;
    cur_nitori = undefined;
}

parried_attack_this_frame = false;