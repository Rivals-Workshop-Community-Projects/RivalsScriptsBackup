//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL)
&& (!msg_is_bspecial)
{
    trigger_b_reverse();
}

//=============================================================
// BSPECIAL: propagate inputs to relevant variable
// only affects this frame because these input flags will get reset anyways
var effective_rune_flags = msg_rune_flags;
if (msg_is_bspecial) 
{
    effective_rune_flags = msg_bspec_effective_runeflags;
    switch (attack)
    {
        case AT_FTILT: case AT_DTILT: case AT_UTILT:
        case AT_NAIR: case AT_FAIR: case AT_DAIR: case AT_BAIR: case AT_UAIR:
            attack_down = special_down;
            attack_pressed = special_pressed;
        break;
        case AT_FSTRONG: case AT_USTRONG: case AT_DSTRONG:
            strong_down = special_down;
            strong_pressed = special_pressed;
        break;
        case AT_DSPECIAL_2: //Copied-Bspecial
            strong_down = special_down;
            strong_pressed = special_pressed;
            attack_down = special_down;
            attack_pressed = special_pressed;
            window_attack_pressed = attack_pressed; //for jab combos
        break;
    }
}

switch (attack)
{
//=============================================================
    case AT_FTILT:
    {
        off_edge = true;
        var held_dir = (right_down - left_down);

        //walking logic
        if (window == 1)
        || (window == 2 && window_timer < get_window_value(AT_FTILT, 2, AG_WINDOW_CANCEL_FRAME))
        || (window == 5 && abs(hsp) > 0.25)
        {
            var actual_frict = free ? air_friction : ground_friction;
            var actual_accel = actual_frict + (free ? air_accel : walk_accel);
            var actual_max = max(abs(hsp), free ? air_max_speed : walk_speed);

            //friction can kick in (if direction not held)
            if (left_down == right_down)
            { 
                hsp -= sign(hsp) * min(abs(hsp), actual_frict);
            }
            else if (held_dir == spr_dir)
            {
                //walking forward
                hsp = clamp(hsp + spr_dir*actual_accel, -actual_max, actual_max);
            }
        }

        switch (window)
        {
            case 1: //STARTUP
            {
                set_attack_value(AT_FTILT, AG_NO_PARRY_STUN, 1);
                set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 2);
                set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 8);
                if (attack_down)
                && (window_timer == get_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH))
                {
                    window = 2;
                    window_timer = 0;

                    msg_ntilt_origin.x = x;
                    msg_ntilt_origin.y = y;
                }
            } break;
            case 2: // DRAG
            {
                if (window_timer < get_window_value(AT_FTILT, 2, AG_WINDOW_CANCEL_FRAME))
                {
                    if (!attack_down) { window = 4; window_timer = 0; }
                }
                else
                {
                    if (!attack_down) { window = 3; window_timer = 0; }
                    else
                    {
                        if (held_dir != spr_dir) //not holding forward
                        && (abs(hsp) < walk_speed) //point of no return
                        {
                            hsp *= 0.90;
                        }
                        else if (abs(hsp) > 1.2 * walk_speed) || (held_dir == spr_dir)
                        {
                            //accelerate
                            hsp = clamp(hsp * msg_ntilt_accel, -msg_ntilt_maxspeed, msg_ntilt_maxspeed);
                        }

                        if (effective_rune_flags.ntilt_verticality)
                        {
                            //cancel gravity
                            if (free) vsp -= gravity_speed;
                            //bonus vertical speed
                            vsp = clamp(vsp + 0.3*(down_down - up_down), -msg_ntilt_maxspeed, msg_ntilt_maxspeed);
                            //dampening
                            if (down_down == up_down) vsp *= 0.9;
                        }
                    }
                }
            } break;
            case 3: // DRAG END
            {
                set_attack_value(AT_FTILT, AG_NO_PARRY_STUN, 0);
                set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 
                                (effective_rune_flags.ntilt_freesnap ? 0 : 12) );
                if (window_timer == 2)
                {
                    //setup interpolation & teleport
                    var distance = point_distance(x, y, msg_ntilt_origin.x, msg_ntilt_origin.y);
                    if (distance > 20)
                    {
                        msg_dstrong_yoyo.active = true;
                        msg_dstrong_yoyo.visible = false;

                        if (effective_rune_flags.ntilt_snapforward)
                        {
                            msg_dstrong_yoyo.x = msg_ntilt_origin.x + spr_dir * 40;
                            msg_dstrong_yoyo.y = msg_ntilt_origin.y - 48; 
                        }
                        else
                        {
                            if (distance > 60)
                                set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 1);

                            msg_dstrong_yoyo.x = x + spr_dir * 40;
                            msg_dstrong_yoyo.y = y - 48; 
                            x = msg_ntilt_origin.x;
                            y = msg_ntilt_origin.y;
                        }

                    }
                }
            } break;
            case 4: // HIT
            {
                if (!hitpause) hsp = held_dir * walk_speed;
                move_cooldown[attack] = 16;
            }
        }
    } break;
//=============================================================
    case AT_DTILT:
    {
        var dmg = abs(get_player_damage(player)) % 10;
        if (attack_down && window == 3 && window_timer == 6)
        && (dmg == 7 || dmg == 1)
        {
            window = 2;
            window_timer = 0;
            sound_play(get_window_value(attack, 1, AG_WINDOW_SFX));
            msg_dtilt_times_through++;

            if (msg_dtilt_times_through > 4)
            {
                set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 0);
                set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 1);
            }

            var sdi_mult = clamp(1 + get_hitbox_value(AT_DTILT, 1, HG_SDI_MULTIPLIER) + 0.25, 1, 30);
            set_hitbox_value(AT_DTILT, 1, HG_SDI_MULTIPLIER, sdi_mult);
        }
        else if (window == 1 && window_timer = 1)
        {
            msg_dtilt_times_through = 0;
            reset_hitbox_value(AT_DTILT, 1, HG_DAMAGE);
            reset_hitbox_value(AT_DTILT, 1, HG_TECHABLE);
            if (!effective_rune_flags.dtilt_permanent_sdi) 
                reset_hitbox_value(AT_DTILT, 1, HG_SDI_MULTIPLIER);
        }
        else if (window == 5 && !was_parried)
        {
            if (has_hit) can_jump = true;
            else if (effective_rune_flags.dtilt_platform) && free
            {
                var plat = instance_create(x, y, "obj_article_platform");
                plat.client_id = self;
                plat.die_condition = 2; //Groundedness
            }
        }
    } break;
//=============================================================
    case AT_UTILT:
    {
        //if in contact with own projectile, trigger the airtech too
        if (window == 2)
        {
            var highest_touched_projectile = noone;

            //alt approach? find all UTILT-sweetspot hitboxes, if any touch a projectile, allow tech
            with (pHitBox) if (type == 1) && (player == other.player)
                           && (attack == AT_UTILT) && (hbox_num == 2) //tipper
            {
                for (var i = 0; i < instance_number(pHitBox); i++) 
                with (instance_find(pHitBox, i)) if (player == other.player)
                                                 && (type == 2) && (hit_priority > 0)
                                                 && place_meeting(x, y, other)
                {
                    if !instance_exists(highest_touched_projectile)
                    || (highest_touched_projectile.y > y)
                        highest_touched_projectile = self;
                }
            }
            
            if instance_exists(highest_touched_projectile) && shield_down
            {
                with (highest_touched_projectile) spawn_hit_fx(x, y, hit_effect);
                msg_air_tech_active = true;
            }

            // Rune: held UTILT
            if (attack_down && effective_rune_flags.utilt_constant)
            {
                window_timer = 0;

                //cleanup other type3 hitboxes nearby
                with (pHitBox) if (type == 3 && player_id == other && attack == AT_UTILT)
                               && (abs(x - other.x) < 5) && (abs(y - other.y + 130) < 5)
                { type = 2; destroy_fx = 1; destroyed = true; }
            }
        }

    } break;
//=============================================================
    case AT_DATTACK:
    {
        can_fast_fall = has_hit;
        if (window == 2 && window_timer == 1) && !hitpause
        && (right_down - left_down == -spr_dir)
        {
            //holding back: reduce HSP boost
            if (hsp*spr_dir > 6) hsp *= 0.5;
        }

        if (window > 2) && (window < 5) && !free
        {
            window = 5;
            window_timer = 0;
            sound_play(get_window_value(attack, 5, AG_WINDOW_SFX));
            spawn_base_dust(x, y, "land", spr_dir);
            destroy_hitboxes();
        }
        else if (window == 4) && (window_timer > get_window_value(attack, window, AG_WINDOW_CANCEL_FRAME))
        {
            window_timer--;
            can_jump = true;
        }
        else if (window == 5)
        {
            if (window_timer < 3 && attack_pressed)
            && ( (hsp*spr_dir < 0.01) || effective_rune_flags.dattack_forward_blj)
            {
                window = 3; 
                window_timer = 13;
                attack_end();
                vsp = -1.3; 
                hsp += spr_dir * sign(hsp*spr_dir - 0.1) * 7;
                hsp *= 1.05;
            }
            else if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) && !free
            {
                set_state(PS_CROUCH);
                state_timer += 2;
            }
        }
    } break;
//=============================================================
    case AT_FSTRONG:
    {
        if (window == 1 && strong_charge > 0)
        {
            //fstrong's bug potentially active, check for collisions with own projectiles
            with (pHitBox) if (hit_priority > 0)
            && (player == other.player) && (type == 2)
            && (place_meeting(x, y, other.hurtboxID) || test_place_meeting_with_clones(other, self))
            {
                can_hit_self = true;
            }

            //Rune: EZ Charge
            if (strong_charge == 55) && (msg_fstrong_interrupted_timer < strong_charge)
            && (effective_rune_flags.fstrong_easy_charge)
            {
                strong_down = false; //No, i don't know why this is necessary
                window = 5;
                msg_fstrong_interrupted_timer = 60;
            }
        }
        else if (effective_rune_flags.fstrong_critical)
             && (window == 2 && window_timer == 2)
        {
            current_dmg = get_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE)

            if (abs(at_prev_x - x) < 2) || (current_dmg > 50) || has_hit
            {
                //stop the move
                reset_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED);
                hsp = clamp(hsp *0.7, -8, 8);
            }
            else if (!hitpause) 
            {
                //serves as collision test for potential victims
                create_hitbox(AT_FSTRONG, 3, x, y);
                at_prev_x = x;

                window_timer--;
                set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, current_dmg + 1)
            }
        }
        else if (window == 1 && window_timer == 1)
        {
            reset_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE);
        }

        if (effective_rune_flags.fstrong_port_priority)
        {
            perfect_dodging |= (window == player);
        }

    } break;
//=============================================================
    case AT_DSTRONG:
    {
        if (window == 2 && strong_charge > 0)
        {
            if (has_hit && !free && shield_pressed && (right_down - left_down) != 0)
            {
                //yoyo activated, rolling out
                msg_dstrong_yoyo.active = true;
                msg_dstrong_yoyo.visible = true;

                set_state( (right_down - left_down)*spr_dir > 0 ? PS_ROLL_FORWARD : PS_ROLL_BACKWARD);
            }
            else if (effective_rune_flags.dstrong_jumpcancel) && (jump_pressed || tap_jump_pressed)
            {
                if (msg_is_bspecial)
                    msg_stored_bspec_dstrong = special_down; //negative-edge to resume
                else
                    msg_stored_dstrong = strong_down; //negative-edge to resume

                set_state(free ? PS_DOUBLE_JUMP : PS_FIRST_JUMP);
            }
        }
        else if effective_rune_flags.dstrong_movement && !free
        {
            if (window == 2 && strong_charge > 0)
            {
                var max_dstrong_speed = 2.5 * walk_speed;
                hsp = clamp(hsp + (right_down - left_down) * 0.8, -max_dstrong_speed, max_dstrong_speed);
            }
            else if (window == 3)
            {
                hsp *= 0.5;
            }
        }
    } break;
//=============================================================
    case AT_USTRONG:
    {
        if (window == 1) && effective_rune_flags.ustrong_limitless
        {
            if (strong_charge > 58) && strong_down
            {
                msg_ustrong_coin_charge += (strong_charge - 58) //store all excess
                strong_charge = 58;
            }

            if (shield_pressed) //explicit store all
            {
                window = 4;
                window_timer = 1;
                msg_ustrong_coin_charge += (1 + strong_charge);
            }
        }
        else if (window == 2) && (window_timer == 1 && !hitpause)
        {
            move_cooldown[attack] = 60;
            if (strong_charge == 31)
            || (strong_charge == 32)
            || (strong_charge == 50)
            || (strong_charge == 52)
            || (strong_charge == 56)
                window = 5;

            msg_ustrong_coin_charge += (1 + strong_charge);
        }
        else if (effective_rune_flags.ustrong_arrowing)
             && (window == 2) && (window_timer == 2)
        {
            //try to find a projectile to steal
            var closest_dist = -1;
            var found_proj = noone;
            
            with (pHitBox) if (type == 2) && (hit_priority > 0) && (hsp != 0 || vsp != 0)
            {
                if (closest_dist < 0 || closest_dist > distance_to_point(other.x, other.y))
                {
                    found_proj = self;
                    closest_dist = distance_to_point(other.x, other.y);
                }
            }

            if (found_proj != noone)
            {
                vfx_yoyo_snap.timer = 8;
                vfx_yoyo_snap.x = found_proj.x;
                vfx_yoyo_snap.y = found_proj.y;

                throw_stolen_proj(found_proj);
                found_proj.vsp = -(10 + clamp(strong_charge/40, 0, 3)) * (1 + found_proj.grav);
                found_proj.hsp = 0;

                vfx_yoyo_snap.length = point_distance(vfx_yoyo_snap.x, vfx_yoyo_snap.y, 
                                                         found_proj.x,    found_proj.y);
                vfx_yoyo_snap.angle = point_direction(vfx_yoyo_snap.x, vfx_yoyo_snap.y, 
                                                         found_proj.x,    found_proj.y);

                msg_ustrong_coin_charge = 0; //No coins for this one
            }
        }
    } break;
//=============================================================
    case AT_NAIR:
    {
        if (window == 1 && window_timer == 1 && !hitpause)
        {
            set_num_hitboxes(AT_NAIR, 1);
        }
        else if (has_hit) || (effective_rune_flags.nair_landinglag)
        {
            set_num_hitboxes(AT_NAIR, 3);
        }
    } break;
//=============================================================
    case AT_DAIR:
    {
        can_move = (window == 1 || window == 6);
        can_fast_fall = false;
        
        var allowed_to_jumpcancel = (djumps < max_djumps) || !msg_dair_cooldown_override;

        if (window == 1) && (window_timer <= 1)
        {
            msg_dair_earthquake_counter = 0;
            msg_dair_startup_has_jumped = false;
            clear_button_buffer( PC_JUMP_PRESSED );
            reset_hitbox_value(AT_DAIR, 2, HG_DAMAGE);
        }

        if (window == 1 || window == 2)
        {
            if (jump_pressed) msg_dair_startup_has_jumped = true;
            hsp *= 0.9;
            if (window == 2)
            {
                if (!free)
                {
                    window = 4; window_timer = 0;
                    sound_play(get_window_value(attack, 4, AG_WINDOW_SFX));
                }
                else if (msg_dair_startup_has_jumped) && allowed_to_jumpcancel
                {
                    window = 3; window_timer = 0;
                }
            } 
        }
        else if (window == 3)
        { 
            //manual looping due to strong_charge window incompatibility
            window_timer = min(window_timer, 5);

            if (!free)
            {
                window = 4; 
                window_timer = 0;
                destroy_hitboxes();
                sound_play(get_window_value(attack, 4, AG_WINDOW_SFX));
            }
            else if (!was_parried && !hitpause)
            {
                if (jump_pressed || msg_dair_startup_has_jumped) && allowed_to_jumpcancel
                {
                    window = 6;
                    window_timer = 0;
                    vsp = get_window_value(attack, 6, AG_WINDOW_VSPEED);
                    hsp += (right_down - left_down) * get_window_value(attack, 6, AG_WINDOW_HSPEED);
                    clear_button_buffer( PC_JUMP_PRESSED );

                    if (msg_dair_cooldown_override) djumps++; //BSPEC clause: lose a djump
                    else msg_dair_cooldown_override = true; //once per airtime only

                    //transfer hittability to projectile
                    var proj = create_hitbox(AT_DAIR, 3, x, y - 20);
                    with (pHitBox) if (orig_player_id == other)
                                   && (attack == AT_DAIR) && (hbox_num == 1)
                                   && ("missingno_hitbox_is_copy_of" not in self)
                                   {
                                        proj.can_hit = can_hit;
                                   }
                    destroy_hitboxes();

                    sound_play(get_window_value(attack, 6, AG_WINDOW_SFX));
                }
                else if (has_hit) can_jump = true;
            }
        }
        else if (window == 4 && window_timer == 1 && !hitpause)
        {
            shake_camera(8, 5);
            
            if (msg_dair_earthquake_counter < msg_dair_earthquake_max)
            {
                //try finding an edge
                var depth_check = 5;
                var length_check = 20;

                //landed on leftmost side?
                var left_test = (noone == collision_line(x-length_check, y, x-length_check, y+depth_check, 
                                        asset_get("par_block"), true, true))
                            && (noone == collision_line(x-length_check, y, x-length_check, y+depth_check, 
                                        asset_get("par_jumpthrough"), true, true));
                                            
                //landed on rightmost side?
                var right_test = (noone == collision_line(x+length_check, y, x+length_check, y+depth_check, 
                                        asset_get("par_block"), true, true))
                            && (noone == collision_line(x+length_check, y, x+length_check, y+depth_check, 
                                        asset_get("par_jumpthrough"), true, true));
                
                var on_a_ledge = (left_test xor right_test);

                //Proxy-land on ledge also counts
                if (!on_a_ledge) with (obj_article2) if ("is_missingno_copy" in self) && (client_id == other) && (num == "2")
                {
                    var clone_x = other.x + client_offset_x;
                    var clone_y = other.y + client_offset_y;

                    right_test = (noone == collision_line(clone_x+length_check, clone_y, clone_x+length_check, clone_y+depth_check, 
                                                          asset_get("par_block"), true, true))
                              && (noone == collision_line(clone_x+length_check, clone_y, clone_x+length_check, clone_y+depth_check, 
                                                          asset_get("par_jumpthrough"), true, true));
                    left_test = (noone == collision_line(clone_x-length_check, clone_y, clone_x-length_check, clone_y+depth_check, 
                                                         asset_get("par_block"), true, true))
                             && (noone == collision_line(clone_x-length_check, clone_y, clone_x-length_check, clone_y+depth_check, 
                                                         asset_get("par_jumpthrough"), true, true));
                    
                    on_a_ledge |= (left_test xor right_test);
                }

                if (on_a_ledge)
                {
                    window = 3;
                    window_timer = 3;
                    msg_dair_earthquake_counter++;
                    set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 1);
                    y -= 8;

                    spawn_base_dust(x, y+12, "land", spr_dir, -(right_test - left_test) * 45);
                    msg_unsafe_effects.shudder.timer = 12;
                    msg_unsafe_effects.shudder.horz_max = 24;
                }
                else spawn_base_dust(x, y, "land", spr_dir);
            }
        }
    } break;
//=============================================================
    case AT_BAIR:
    {
        if (window == 1 && window_timer == 2 && !hitpause)
        {
            //find target for BAIR's copying
            //closest thing to "next player" you can find
            var best_target = self;
            var best_player = player + 30; // simplifies subsequent checks
            with (oPlayer)
            {
                //want "next" player, but if there is none, wrap around from zero
                //this makes it so player 1 appears "after" player 4 in the ordering
                //NOTE: CHECK ONLINE. unsure this can be assumed to be consistent.
                var corrected_player = (player > other.player ? player : player + 30);
                if (corrected_player < best_player)
                {
                    best_target = self;
                    best_player = corrected_player;
                }
            }
            msg_construct_bair(best_target, effective_rune_flags);
        }
    } break;
//=============================================================
    case AT_UAIR:
    {
        if (window == 1 && window_timer == 1)
        {
            var newwidth = 1.1 * get_hitbox_value(AT_UAIR, 1, HG_WIDTH);
            var newheight = 1.1 * get_hitbox_value(AT_UAIR, 1, HG_HEIGHT)
                                  / (effective_rune_flags.uair_tipper ? 0.9 : 1);
            var newdamage = 1 + get_hitbox_value(AT_UAIR, 1, HG_DAMAGE);
            if (!effective_rune_flags.uair_infinite)
            {
                newwidth = min(360, newwidth);
                newheight = min(400, newheight);
                newdamage = min(18, newdamage);
            }

            var newstartup = effective_rune_flags.uair_accelerate 
                             ? max(3, get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH) - 1)
                             : min(24, 2 + get_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH));

            set_hitbox_value(AT_UAIR, 1, HG_WIDTH, newwidth);
            set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, newheight);
            set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, newdamage);
            set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, newstartup);
            set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, newstartup - 1);
            if (newstartup > 17 || newstartup < 6) 
                set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

            if (effective_rune_flags.uair_tipper)
            {
                set_hitbox_value(AT_UAIR, 2, HG_WIDTH, newwidth);
                set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, newheight);
                set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, newheight*0.9);
                set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2 * newdamage);
                set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, get_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y) - 0.15 * newheight)
            }

        }
    } break;
//=============================================================
    case AT_FSPECIAL: // Charge & Water Gun
    {
        if (window == 2)
        {
            can_wall_jump = true;
            can_shield = true;
            if (msg_fspecial_ghost_arrow_active)
            {
                window = 5;
                window_timer = 0;
                msg_fspecial_ghost_arrow_active = false;
            }
            else if (!free && at_prev_free)
            {
                set_state(PS_LANDING_LAG);
                msg_fspecial_ghost_arrow_active = true;
                
                msg_unsafe_effects.shudder.impulse = 20;
                msg_unsafe_effects.bad_vsync.impulse = 20;
                msg_unsafe_effects.bad_vsync.horz_max = 8;
                sound_play(sound_get("krr"));
            }
            else if (window_timer == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH) - 1)
            && special_down
            {
                if (msg_fspecial_charge < 3) && effective_rune_flags.fspecial_elemental
                {
                   msg_fspecial_charge++;
                   var sfxs = [0,"sfx_ori_charged_flame_hit","sfx_orca_absorb","sfx_kragg_roll_start"];
                   sound_play(asset_get(sfxs[msg_fspecial_charge]));
                }
                else if (msg_fspecial_charge < 2)
                {
                   msg_fspecial_charge++;
                   sound_play(msg_fspecial_charge == 1 ? asset_get("sfx_abyss_portal_spawn") : asset_get("sfx_orca_absorb"));
                }
                window_timer = 0;  //manual looping due to strong_charge window incompatibility
            }
            else if (!special_down)
            {
                if (msg_fspecial_charge == 0)
                {
                    window = 3;
                    window_timer = 0;
                }
                else if (msg_fspecial_charge == 1)
                {
                    set_attack(AT_FSPECIAL_2);
                    window = 2;
                    window_timer = 0;
                }
                else if (msg_fspecial_charge == 2)
                {
                    set_attack(AT_FSPECIAL_AIR);
                    window = 2;
                    window_timer = 0;
                }
                else //step 3, but also default, if you manage to break this you earned it
                {
                    set_attack(AT_FTHROW);
                    window = 2;
                    window_timer = 0;
                }
                msg_fspecial_charge = 0;
                state_timer = 0;
            }
        }
        else if (window == 5 && window_timer == get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH) - 1)
        {
            msg_unsafe_effects.shudder.impulse = 7;
            msg_unsafe_effects.bad_vsync.impulse = 7;
            msg_unsafe_effects.quadrant.impulse = 7;
            sound_play(sound_get("clicker_static"));

            //try to find a projectile to steal
            var closest_dist = -1;
            var found_proj = noone;
            
            with (pHitBox) if (type == 2) && (hit_priority > 0) && (hsp != 0 || vsp != 0)
            {
                if (closest_dist < 0 || closest_dist > distance_to_point(other.x, other.y))
                {
                    found_proj = self;
                    closest_dist = distance_to_point(other.x, other.y);
                }
                with (other) if (effective_rune_flags.fspecial_everything)
                    throw_stolen_proj(other);
            }

            if (found_proj != noone)
            {
                vfx_yoyo_snap.timer = 8;
                vfx_yoyo_snap.x = found_proj.x;
                vfx_yoyo_snap.y = found_proj.y;


                if (!effective_rune_flags.fspecial_everything)
                    throw_stolen_proj(found_proj);
                //else it has already been thrown in above loop

                vfx_yoyo_snap.length = point_distance(vfx_yoyo_snap.x, vfx_yoyo_snap.y, 
                                                         found_proj.x,    found_proj.y);
                vfx_yoyo_snap.angle = point_direction(vfx_yoyo_snap.x, vfx_yoyo_snap.y, 
                                                         found_proj.x,    found_proj.y);

                sound_play(asset_get("sfx_watergun_fire"));
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_GOTO, 6);
            }
            else if (effective_rune_flags.fspecial_playerthrow)
                 && !(msg_ustrong_coin_charge > 0)
            {
                var team_attack = get_match_setting(SET_TEAMATTACK);
                var furthest_dist = -1;
                var dist_max = 255;
                var found_player = noone; //Find player to throw
                with (oPlayer) if (dist_max > distance_to_point(other.x, other.y - 30))
                && (state != PS_DEAD) && (state != PS_RESPAWN) && !invincible && (attack_invince != 1)
                && (furthest_dist < 0 || furthest_dist < distance_to_point(other.x, other.y - 30))
                && (get_player_team(other.player) != get_player_team(player) || team_attack || self == other)
                {
                    found_player = self;
                    furthest_dist = distance_to_point(other.x, other.y - 30);
                }

                if (found_player != noone)
                {
                    //cleanup other type3 hitboxes...
                    with (pHitBox) if (type == 3 && player_id == other && attack == AT_FSPECIAL)
                    { type = 2; destroyed = true; }

                    //"throw" hitbox (needs adjustment)
                    var hitbox = create_hitbox(AT_FSPECIAL, 3, x+spr_dir*40, y-10);
                    hitbox.kb_scale = abs(hitbox.kb_scale)
                    hitbox.hitpause = 0;
                    hitbox.extra_hitpause = 2;
                    hitbox.hbox_num = 5;
                    hitbox.type = 3;

                    if (msg_holp_pos.x != 0) && (msg_holp_pos.y != 0)
                    {
                        hitbox.x = msg_holp_pos.x;
                        hitbox.y = msg_holp_pos.y;
                    }

                    hitbox.can_hit_self = true;
                    for (var p = 0; p < array_length(hitbox.can_hit); p++)
                    {
                        hitbox.can_hit[p] = false;
                    }
                    hitbox.can_hit[found_player.player] = true;

                    vfx_yoyo_snap.timer = 8;
                    vfx_yoyo_snap.x = found_player.x;
                    vfx_yoyo_snap.y = found_player.y - 20;
                    vfx_yoyo_snap.length = point_distance(vfx_yoyo_snap.x, vfx_yoyo_snap.y, 
                                                          hitbox.x, hitbox.y);
                    vfx_yoyo_snap.angle = point_direction(vfx_yoyo_snap.x, vfx_yoyo_snap.y, 
                                                          hitbox.x, hitbox.y);

                    found_player.x = hitbox.x;
                    found_player.y = hitbox.y + 20;
                }
            }
            else
            {
                //nothing to shoot. spawn melee windbox (causes stored coins to manifest)
                var hitbox = create_hitbox(AT_FSPECIAL, 3, x, y);
                spawn_hit_fx(x+(spr_dir*20), y-30, hitbox.hit_effect);
                set_window_value(AT_FSPECIAL, 5, AG_WINDOW_GOTO, 6);
            }
        }
    } break;
//=============================================================
    case AT_FSPECIAL_2: // Bubblebeam
    {
        if (window == 3) 
        //Turns off for Ember variant
        && !effective_rune_flags.fspecial_elemental
        {
            var hitbox = create_hitbox(AT_FSPECIAL_2, 2, x+(spr_dir*20), y-30);
            hitbox.hsp += spr_dir * msg_fspecial_bubble_random_hsp_boost 
                                  * (0.5 - random_func(0, 100, true)/ 100.0);
            hitbox.image_index = 2 * random_func(1, 6, true);
        }
    } break;
//=============================================================
    case AT_FSPECIAL_AIR: // Hydro Pump
    {
        if (window == 3)
        {
            hsp *= 0.8;
            vsp *= 0.5;
        }
    } break;
//=============================================================
    case AT_NTHROW:
    {
        can_fast_fall = false;
        can_move = false;

        if (window == 1)
        {
            msg_grab_selection_timer = 0;
            if (effective_rune_flags.dspecial_downbroken) msg_grab_last_outcome = 3;
            if (effective_rune_flags.dspecial_pocket) && instance_exists(msg_pocket_slot_content)
            {
                //goto "normal throw" window w/ no victim
                window = MSG_GRAB_REGULAR_WINDOW;
                window_timer = 0;
            }
        }
        else if (window == 2)
        {
            //grab is active.
            if (effective_rune_flags.dspecial_magicthrow)
            && (window_timer == 2)
            && instance_exists(msg_last_parried_victim)
            {
                msg_last_parried_victim.x = x + spr_dir * 20;
                msg_last_parried_victim.y = y;
            }

            if (effective_rune_flags.dspecial_pocket) && (window_timer >= 2)
            {
                //pocket active.
                var pocket_target = noone;
                var pokx = floor(x + spr_dir*20);
                var poky = floor(y - 40);

                //check articles first
                if (noone == pocket_target) pocket_target = try_pocket(obj_article1);
                if (noone == pocket_target) pocket_target = try_pocket(obj_article2);
                if (noone == pocket_target) pocket_target = try_pocket(obj_article3);

                //then check hitboxes
                if !instance_exists(pocket_target)
                with (pHitBox) if (type == 2 && damage > 0 && hit_priority > 0) && visible
                && (pocket_target == noone || pocket_target.hit_priority < hit_priority)
                && (self == collision_circle(pokx, poky, other.msg_grab_pocket_radius, self, true, false))
                {
                    pocket_target = self;
                }

                //then check these (microplatform takes precedence otherwise, awkwardly)
                if (noone == pocket_target) pocket_target = try_pocket(obj_article_solid);
                if (noone == pocket_target) pocket_target = try_pocket(obj_article_platform);

                if instance_exists(pocket_target) //pocket success
                {
                    spawn_hit_fx(floor(pocket_target.x), floor(pocket_target.y), hfx_error_x)

                    if (msg_rune_flags.holp)
                    {
                        set_holp(pocket_target.x, pocket_target.y);
                    }

                    //trap pocketed object
                    pocket_target.x = 0;
                    pocket_target.y = 0;
                    pocket_target.visible = false;
                    pocket_target.msg_pocketeered_original_speed = 
                           max(5, point_distance(0, 0, pocket_target.hsp, pocket_target.vsp));

                    if (pocket_target.object_index == pHitBox)
                    {
                        pocket_target.type = 6;
                        pocket_target.hitbox_timer = 0;
                    }
                    else
                    {
                        pocket_target.msg_pocketeered_nullified_num = pocket_target.num;
                        pocket_target.num = "//temporarily nullified article, please understand";
                    }

                    //update/clear all other Missingno Pocket slots
                    with (oPlayer) if ("msg_pocket_slot_content" in self)
                    {
                        instance_destroy(msg_pocket_slot_content);
                        msg_pocket_slot_content = pocket_target;
                    }

                    //Success effects
                    destroy_hitboxes();
                    invincible = true; invince_time = 8;
                    sound_play(sound_get("pocket"),false,noone,1);
                    window = 3; window_timer = 0;
                }

            }
        }
        else if (window == 4) 
        {
            //grab-success
            destroy_hitboxes();
            msg_last_parried_victim = noone;

            //outcome select
            if (msg_grab_selection_timer >= 40)
            || (window_timer > get_window_value(AT_NTHROW, window, AG_WINDOW_LENGTH) - 1)
            {
                //for broken-tracking
                msg_grab_last_outcome = effective_rune_flags.dspecial_downbroken ? 3 : msg_grab_selected_index;

                //last frame of window. release grab
                var current_outcome = (msg_grab_selected_index < 0) ?
                     //broken
                     msg_grab_queue[random_func(1, array_length(msg_grab_queue), true)]
                     //normal
                   : msg_grab_rotation[msg_grab_selected_index];

                //Rune: rotate-on-use
                if (effective_rune_flags.dspecial_rotate) && !(msg_grab_selected_index < 0)
                {
                    var temp_grabindex = msg_grab_rotation[0];
                    msg_grab_rotation[0] = msg_grab_rotation[1];
                    msg_grab_rotation[1] = msg_grab_rotation[2];
                    msg_grab_rotation[2] = msg_grab_rotation[3];
                    msg_grab_rotation[3] = temp_grabindex;
                }
                
                //proceed with outcome
                window_timer = 0;
                window = current_outcome.window;
                msg_last_performed_grab = current_outcome.name;
                    
                sound_stop(msg_grab_sfx);
                msg_grab_sfx = noone;
                
                //release grabbed victims
                with (oPlayer) if (msg_handler_id == other && msg_grabbed_timer > 0)
                {
                    //msg_grab_immune_timer = other.msg_grab_immune_timer_max;
                }
                
                //rotate grab outcome selection
                msg_grab_pointer++;
                move_cooldown[AT_NTHROW] = msg_grab_immune_timer_max;
            }
            else 
            {
                //refresh grab on victims
                with (oPlayer) if (msg_handler_id == other && msg_grabbed_timer > 0)
                {
                    msg_grabbed_timer = 5;
                }

                if (window_timer < get_window_value(AT_NTHROW, window, AG_WINDOW_CANCEL_FRAME))
                {
                    //figure out which direction is being held
                    var temp_joydir = (spr_dir > 0) ? joy_dir : (180 - joy_dir);

                    //360 + 45; to guarantee a positive modulo result >:]
                    var selected = floor((temp_joydir + 405)/90.0) % 4;
                    //FRONT: 0
                    //UP:    1
                    //BACK:  2
                    //DOWN:  3

                    //BROKEN: -1
                    if (selected == msg_grab_last_outcome) selected = -1;

                    if (msg_grab_selected_index != selected)
                    {
                        sound_stop(msg_grab_sfx);
                        var sound = (selected == -1) ? msg_grab_broken_outcome.sound 
                                                     : msg_grab_rotation[selected].sound;
                        msg_grab_sfx = sound_play(sound, true, 0, 1, 1);
                        msg_grab_selected_index = selected;

                        msg_grab_selection_timer = 0;
                        msg_last_performed_grab = (selected == -1) ? msg_grab_broken_outcome.name
                                                                   : msg_grab_rotation[selected].name;
                    }
                }
            }
            msg_grab_selection_timer++;
        }

        //Grab outcomes
        //Note: window_timer 0 is accessible and occurs right after the detected end of window 4 above
        //=============================================================
        if (window == MSG_GRAB_PRATTOSS_WINDOW)
        {
            if (window_timer < get_hitbox_value(AT_NTHROW, MSG_GRAB_PRATTOSS_HITBOX, HG_WINDOW_CREATION_FRAME))
            {
                var animpositionsdeltasx = [54,52,48,24,-22]
                var animpositionsdeltasy = [12,10, 8,40, 56]
                var targetposx = x + spr_dir*animpositionsdeltasx[floor(window_timer/4)]
                var targetposy = y - animpositionsdeltasy[floor(window_timer/4)]


                with (oPlayer) if (msg_handler_id == other && msg_grabbed_timer > 0)
                {
                    //refresh grab on victims
                    msg_grabbed_timer = 5;
                    
                    //lerp position towards where hand would be
                    x = lerp(x, targetposx, 0.5);
                    y = lerp(y, targetposy, 0.5);
                }
            }
        }
        else if (window == MSG_GRAB_FROSTBURN_WINDOW)
        {
            if (window_timer == 0 && !hitpause)
            with (oPlayer) if (msg_handler_id == other && msg_grabbed_timer > 0)
            {
                //victims need to be considered grounded to get properly frozen
                free = false;
                with (other) //back to Missingno
                {
                    var a = instance_create(other.x, other.y, "obj_article_platform");
                    a.client_id = other;
                    a.die_condition = 1; //Hitstun
                }
            }
        }
        else if (window == MSG_GRAB_EXPLOSION_WINDOW)
        {
            visible = false;
            if (effective_rune_flags.dspecial_deathbox)
            {
                if (!hitpause)
                {
                    if (window_timer == 1)
                    {
                        spawn_hit_fx( x, y -35, HFX_MOL_BOOM_FINISH);
                        //sound_play(sfx_sd);
                        sound_play(asset_get("sfx_playerdefeated"));
                        create_deathbox( x, y -35, 150, 150, 0, true, 0, 21, 2);
                    }
                    else if (window_timer == 2)
                        create_deathbox( x, y -35, 5, 5, -1, true, 0, 4, 2);
                }
            }
            else if (window_timer == 0 && !hitpause)
            {
                spawn_hit_fx( x, y -35, 143 );
                sound_play(sfx_sd);
                sound_play(asset_get("sfx_death1"));

                //NOTE: resetting damage triggers the "snap-to-zero" prevention code (see article1_update)
                // solution: allow the tech, but make it cost a stock
                var current_damage = get_player_damage( player );

                if (current_damage < 0)
                {
                    if (get_player_stocks(player) - msg_exploded_stock_cost) > 1
                    // you get one freebie if its abyss mode
                    || (msg_exploded_stock_abyss_freebie)
                    {
                        current_damage = 0;

                        if (msg_exploded_stock_abyss_freebie) msg_exploded_stock_abyss_freebie = false;
                        else
                        {
                            msg_exploded_stock_cost++; //cashed in on death.gml
                        }
                    }
                    else 
                    {
                        //fix the glitch that snaps to zero
                        msg_last_known_damage = 0;
                        //plus your damage penalty gets reflipped to positive
                        current_damage = abs(ceil(current_damage/2));
                    }
                }

                msg_exploded_damage += current_damage + msg_grab_explode_penalty;
                set_player_damage( player, 0 );
                
                if (GET_RNG(6, 0x03) == 0) msg_unsafe_effects.altswap.trigger = true;
            }
            else if (window_timer == 3)
            {
                x = room_width / 2;
                y = room_height / 2;
                msg_exploded_respawn = true;
                set_state(PS_RESPAWN);
                state_timer = 30;
            }
        }
        else if (window == MSG_GRAB_NEGATIVE_WINDOW)
        {
            if (window_timer == 0 && !hitpause)
            {
                sound_play(sfx_error);
                //turn damage into negatives (and amplify it)
                var curr_damage = get_player_damage(player);
                if (curr_damage > 0)
                {
                    var dmg = abs(floor(curr_damage * msg_grab_negative_multiplier));
                    set_player_damage(player, clamp(-dmg, -999, 999));
                }
                msg_negative_dmg_timer = msg_grab_negative_duration;
                msg_unsafe_effects.blending.gameplay_timer = msg_grab_negative_duration;
                msg_unsafe_effects.blending.impulse = 1;
                //Need to track self as "debuffed" to undo negative% with correct values
                msg_handler_id = self;
            }
        }
        else if (window == MSG_GRAB_GLITCHTIME_WINDOW)
        {
            if (window_timer == 0 && !hitpause)
            {
                //apply Glitch Time (to self)
                msg_doubled_time_timer = msg_grab_glitchtime_duration;
                msg_prev_status.x = x;
                msg_prev_status.y = y;
                msg_prev_status.hsp = hsp;
                msg_prev_status.vsp = vsp;
                msg_prev_status.state = state;
                msg_unsafe_effects.bad_strip.gameplay_timer = msg_grab_glitchtime_duration;
                msg_unsafe_effects.bad_strip.frozen = true;
                msg_unsafe_effects.bad_strip.impulse = 1;
            }
        }
        else if (window == MSG_GRAB_ANTIBASH_WINDOW)
        {
            if (window_timer < get_window_value(AT_NTHROW, window, AG_WINDOW_CANCEL_FRAME))
            {
                var target_x = 0;
                var target_y = 0;

                with (oPlayer) if (msg_handler_id == other && msg_grabbed_timer > 0)
                {
                    msg_grabbed_timer = 10; //still technically in grab
                    if (!joy_pad_idle)
                    {
                        target_x += lengthdir_x(max(30, get_player_damage(player)), joy_dir);
                        target_y += lengthdir_y(max(30, get_player_damage(player)), joy_dir);
                    }
                }

                if (target_x == 0 && target_y == 0)
                {
                    if (joy_pad_idle) target_y  = -1;
                    else
                    {
                        target_x = lengthdir_x(1, joy_dir);
                        target_y = lengthdir_y(1, joy_dir);
                    }
                }

                msg_antibash_direction = point_direction(0,0,target_x,target_y);

                set_hitbox_value(AT_NTHROW, MSG_GRAB_ANTIBASH_HITBOX, HG_ANGLE, 
                    ( (spr_dir > 0) ? msg_antibash_direction : (180 - msg_antibash_direction) ) + 180);
            }
            else if (window_timer > get_window_value(AT_NTHROW, window, AG_WINDOW_LENGTH) - 1)
            {
                //eject MissingNo
                hsp = lengthdir_x(msg_grab_antibash_force, msg_antibash_direction);
                vsp = lengthdir_y(msg_grab_antibash_force, msg_antibash_direction);
                old_hsp = hsp;
                old_vsp = vsp;
                set_state(PS_PRATFALL);
            }
        }
        else if (window == MSG_GRAB_VANISH_WINDOW)
        {
            if (window_timer == 0 && !hitpause)
            {
                sound_play(sound_get("vanish"));
                if (!msg_is_local)
                {
                    msg_persistence.music_request_breaking = GET_RNG(17, 0x01) ? 1 : noone;
                    msg_unsafe_invisible_timer = msg_grab_vanish_duration + player*30;
                    visible = false;
                }
            }
        }
        else if (window == MSG_GRAB_COLLIDER_WINDOW)
        {
            if (window_timer == 0 && !hitpause)
            {
                msg_inverted_collider_timer = msg_grab_collider_duration;
                msg_unsafe_effects.quadrant.gameplay_timer = msg_grab_collider_duration;
                msg_unsafe_effects.quadrant.frozen = true;
                msg_unsafe_effects.quadrant.freq = 1;
            }
        }
        else if (window == MSG_GRAB_REGULAR_WINDOW)
        {
            if (window_timer == 0)
            {
                var unpocketing = true;
                with (oPlayer) if (msg_handler_id == other && msg_grabbed_timer > 0)
                { unpocketing = false; break; } //Victim exists, this is a regular throw

                set_hitbox_value(AT_NTHROW, MSG_GRAB_NORMAL_HITBOX, HG_WINDOW, unpocketing ? noone : MSG_GRAB_REGULAR_WINDOW);
                set_window_value(AT_NTHROW, MSG_GRAB_REGULAR_WINDOW, AG_WINDOW_LENGTH, unpocketing ? 14 : 28);
            }

            if (window_timer < get_hitbox_value(AT_NTHROW, MSG_GRAB_PRATTOSS_HITBOX, HG_WINDOW_CREATION_FRAME))
            && (window == get_hitbox_value(AT_NTHROW, MSG_GRAB_PRATTOSS_HITBOX, HG_WINDOW))
            {
                var animpositionsdeltasx = [-28,-54,-60,-20, 36]
                var animpositionsdeltasy = [  2,  6, 16, 54, 46]
                var targetposx = x + spr_dir*animpositionsdeltasx[floor(window_timer/4)]
                var targetposy = y - animpositionsdeltasy[floor(window_timer/4)]


                with (oPlayer) if (msg_handler_id == other && msg_grabbed_timer > 0)
                {
                    //refresh grab on victims
                    msg_grabbed_timer = 5;
                    
                    //lerp position towards where hand would be
                    x = lerp(x, targetposx, 0.5);
                    y = lerp(y, targetposy, 0.5);
                }
            }
            else if instance_exists(msg_pocket_slot_content) && (window_timer == 10)
            {
                //untrap entity & throw
                msg_pocket_slot_content.x = x + spr_dir*40;
                msg_pocket_slot_content.y = y - 60;
                msg_pocket_slot_content.visible = true;

                //Rune: HOLP
                if (msg_holp_pos.x != 0) && (msg_holp_pos.y != 0)
                {
                    msg_pocket_slot_content.x = msg_holp_pos.x;
                    msg_pocket_slot_content.y = msg_holp_pos.y;
                }

                msg_pocket_slot_content.hsp = spr_dir * msg_pocket_slot_content.msg_pocketeered_original_speed;
                msg_pocket_slot_content.vsp = 0;

                if (msg_pocket_slot_content.object_index == pHitBox)
                {
                    msg_pocket_slot_content.type = 2;
                    msg_pocket_slot_content.vsp = -8*msg_pocket_slot_content.grav;

                    //steal it: refresh, plus cannot hit me anymore
                    msg_pocket_slot_content.can_hit_self = true;
                    for (var p = 0; p < array_length(msg_pocket_slot_content.can_hit); p++)
                    {
                        msg_pocket_slot_content.can_hit[@ p] = true;
                    }
                    msg_pocket_slot_content.can_hit[@ player] = false;
                }
                else
                {
                    msg_pocket_slot_content.num = msg_pocket_slot_content.msg_pocketeered_nullified_num;

                    //if missingno-clone: special client-offset corrections for the displacement
                    if ("is_missingno_copy" in msg_pocket_slot_content)
                    {
                        var GRIDSNAP = 16;
                        msg_pocket_slot_content.client_offset_x = 
                            GRIDSNAP * floor((msg_pocket_slot_content.x - msg_pocket_slot_content.client_id.x) / GRIDSNAP);
                        msg_pocket_slot_content.client_offset_y = 
                            GRIDSNAP * floor((msg_pocket_slot_content.y - msg_pocket_slot_content.client_id.y) / GRIDSNAP);
                    }
                }

                //clear pocket slot everywhere
                with (oPlayer) if ("msg_pocket_slot_content" in self)
                {
                    msg_pocket_slot_content = noone;
                }

                sound_play(get_window_value(AT_NTHROW, window, AG_WINDOW_SFX));
            }
        }

    } break;
//=============================================================
    case AT_NSPECIAL:
    {
        can_fast_fall = (window == 2 && window_timer > 16);
        if (window == 1) vsp *= 0.85;
        hsp *= 0.85;

        if (window == 1 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1)
        {
            var angle = joy_pad_idle ? 0 //flip joy_dir to cancel out spr_dir
                                     : (spr_dir > 0 ? joy_dir : 90 - (joy_dir - 90) );

            angle = (angle + 360) % 360;

            //deadzones
                 if (angle <  270 && angle >=  230) angle = 230;
            else if (angle <  310 && angle >=  270) angle = 310;
            else if (angle <= 120 && angle >   90) angle = 120;
            else if (angle <=  90 && angle >   60) angle = 60;

            var lenx = lengthdir_x(16, angle);
            var leny = lengthdir_y(4, angle);

            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, lenx);
            set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, leny - 30);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, lenx / 3);
            set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, min(3, leny) - 4);
        }
    } break;
//=============================================================
    case AT_USPECIAL:
    {
        can_move = (window == 2 || window == 6);
        can_wall_jump = (window > 2);
        if (window == 3) 
        {
            if (window_timer < get_window_value(AT_USPECIAL, window, AG_WINDOW_CANCEL_FRAME))
            {
                var new_dir = (right_down - left_down);
                if (new_dir != 0) spr_dir = new_dir;
            }

            else if (window_timer == get_window_value(AT_USPECIAL, window, AG_WINDOW_LENGTH) - 1)
            && (!special_down || msg_is_bspecial)
            {
                window = 6;
                window_timer = 0;
                if (msg_is_bspecial) 
                {
                    msg_uspecial_wraparound = true;
                    window_timer = 90;

                    msg_unsafe_effects.shudder.impulse = 20;
                    msg_unsafe_effects.shudder.horz_max = 6;
                    msg_unsafe_effects.shudder.vert_max = 6;
                }
                sound_play(msg_is_bspecial ? sound_get("079"): asset_get("sfx_mobile_gear_jump"))
            }
        }
        else if (window == 5)
        {

            if (!free)
            {
                window = 7;
                window_timer = 0;
                destroy_hitboxes();
            }
            else if (shield_down) && (window_timer == get_window_value(AT_USPECIAL, window, AG_WINDOW_CANCEL_FRAME))
            {
                window = 6;
                window_timer = 0;
                destroy_hitboxes();
            }
        }
        else if (window == 6 && window_timer < 5)
        {
            hsp *= 0.9; 
            vsp *= 0.4; vsp -= 1;
        }
        else if (window == get_attack_value(AT_USPECIAL, AG_STRONG_CHARGE_WINDOW))
        {
            vsp *= 0.5;
            strong_down = special_down;

            var charge_vsp = -15 - clamp(strong_charge * 0.1, -1, 10);
            set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, charge_vsp);
        }
    } break;
//=============================================================
    case AT_TAUNT:
    {
        //clears saved attack index
        if (!msg_bspec_sketch_locked) 
            msg_bspecial_last_move.target = noone;
        
        if (window == 1 && window_timer == 1)
        && (effective_rune_flags.taunt_perish_song) && !msg_perishsong_used
        {
            with (oPlayer)
            {
                msg_perish_song_timer = other.msg_perishsong_max;
                msg_handler_id = other;
            }

            msg_perishsong_used = true;
            //see animation
        }
        else if (window == 2) && (window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH) - 1)
        {
            //Rune: Taunt-Teleport
            if (effective_rune_flags.taunt_teleport)
            {
                var number_player = random_func(13, instance_number(oPlayer), true);
                swap_target = instance_find(oPlayer, number_player);

                var posx = x;
                var posy = y;
                taunt_swap_correcting_for_clones(self, swap_target.x, swap_target.y);
                taunt_swap_correcting_for_clones(swap_target, posx, posy);
            }
        }
    } break;
    default: break;
}


at_prev_free = free;

//==============================================================
//passive charge glitch
if (msg_fstrong_interrupted_timer > 0)
//exception: TAUNT and TMTRAINER
&& (attack != AT_TAUNT)
&& (attack != AT_NSPECIAL)
//exception: post-EZ charge Fstrong rune
&& !(attack == AT_FSTRONG && window >= 5)
{
    strong_charge = max(strong_charge, ceil(msg_fstrong_interrupted_timer));
    if (!msg_rune_flags.fstrong_drain_charge)
        msg_fstrong_interrupted_timer = 0;

    //"diminishing returns" above 60 for up to 400% charge
    if (strong_charge > 60)
        strong_charge = clamp(60 + (strong_charge - 60)/2, 0, 255);
}

if (strong_charge > 60) && window == get_attack_value(attack, AG_STRONG_CHARGE_WINDOW)
                        && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) -1
{
    //skip strong charge frame to avoid resetting it
    var next_window = get_window_value(attack, window, AG_WINDOW_GOTO);
    window = (next_window == 0) ? window + 1 : next_window;
    window_timer = 0;

    //skiipping the transition makes window peeds type 2 fail to apply...
    if (get_window_value(attack, window, AG_WINDOW_HSPEED_TYPE) == 2)
        hsp = spr_dir * get_window_value(attack, window, AG_WINDOW_HSPEED);

    if (get_window_value(attack, window, AG_WINDOW_VSPEED_TYPE) == 2)
        vsp = get_window_value(attack, window, AG_WINDOW_VSPEED);
}
//==============================================================
//Turbo rune(s)
if (msg_rune_flags.turbo_weekday && has_hit_player && !was_parried)
&& (!hitpause)
{
    if (attack == AT_NTHROW) 
    {
       //can't IASA because you lose the ability to influence the throw
       can_attack = true; can_special = true;
       can_strong = true;  can_shield = true;

    }
    else iasa_script();
    move_cooldown[attack] = 2;
}

//==============================================================
#define try_pocket(article_type)
{
    var pokx = floor(x + spr_dir*20);
    var poky = floor(y - 40);
    var pok_radius = msg_grab_pocket_radius;

    var best_dist = 9999;
    var best_obj = noone;

    with (article_type)
    if (orig_player != 5) && ("player" in self) && visible
    && (point_distance(pokx, poky, x, y) < best_dist)
    && (self == collision_circle(pokx, poky, pok_radius, self, true, false))
    {
        best_dist = point_distance(pokx, poky, x, y);
        best_obj = self;
    }

    return best_obj;
}

//==============================================================
#define test_place_meeting_with_clones(playerId, hbxId)
{
    for (var i = 0; i < instance_number(obj_article2); i++) 
    with (instance_find(obj_article2, i)) if ("is_missingno_copy" in self)
                                          && (client_id == playerId) && (num == "2")
    {
        with (hbxId) if place_meeting(x - other.client_offset_x, y - other.client_offset_y, playerId.hurtboxID)
            return true; //at least one clone touched
    }

    return false; //none found
}
//==============================================================
#define taunt_swap_correcting_for_clones(playerId, posx, posy)
{
    playerId.x = posx;
    playerId.y = posy;

    //update to all copies
    for (var i = 0; i < instance_number(obj_article2); i++) 
    with (instance_find(obj_article2, i)) if ("is_missingno_copy" in self)
                                          && (client_id == playerId) && (num == "2")
    {
        //adjust relative offset of all copies
        client_offset_x = x - client_id.x;
        client_offset_y = y - client_id.y;

        //adjust hitbox positions
        with (pHitBox) if (type == 1) && (orig_player_id == other.client_id)
        {
            // note: variable reused for yoyo glitch (this is intentional, lerped hitboxes should not be copied)
            if ("missingno_hitbox_is_copy_of" in self)
            && (missingno_hitbox_is_copy_for == other && instance_exists(missingno_hitbox_is_copy_of))
            {
                x_pos = missingno_hitbox_is_copy_of.x_pos + other.client_offset_x;
                y_pos = missingno_hitbox_is_copy_of.y_pos + other.client_offset_y;
            }
        }
    }

    //Microplatform (if it exists) needs to follow the client player to its destination
    if ("msg_clone_microplatform" in playerId) && instance_exists(playerId.msg_clone_microplatform)
    {
        playerId.msg_clone_microplatform.x = playerId.x;
        playerId.msg_clone_microplatform.y = playerId.y;
    }
}
//==============================================================
#define throw_stolen_proj(found_proj)
{
    //steal it: refresh, plus cannot hit me anymore
    found_proj.can_hit_self = true;
    for (var p = 0; p < array_length(found_proj.can_hit); p++)
    {
        found_proj.can_hit[@ p] = true;
    }
    found_proj.can_hit[@ player] = false;

    spawn_hit_fx(found_proj.x, found_proj.y, hfx_error_b);
    spawn_hit_fx(found_proj.x, found_proj.y, hfx_error_x);

    // and throw it (based on water gun trajectory)
    found_proj.x = x + spr_dir*get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X);
    found_proj.y = y + get_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y);

    if (msg_holp_pos.x != 0) && (msg_holp_pos.y != 0)
    {
        found_proj.x = msg_holp_pos.x;
        found_proj.y = msg_holp_pos.y;
    }

    found_proj.hsp = spr_dir * max(msg_fspecial_ghost_arrow_min_speed, 
                        point_distance(0, 0, found_proj.hsp, found_proj.vsp));
    found_proj.vsp = -found_proj.grav * 
                        (1.0 * msg_fspecial_ghost_arrow_target_distance/abs(found_proj.hsp));
    
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_construct_bair(target, rune_flags) // Version 0
    // steals physical statistics to dynamically determine BAIR's stats

    set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, target.max_fall);
    set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, target.max_fall-1);

    set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, target.fast_fall);

    set_hitbox_value(AT_BAIR, 1, HG_ANGLE, target.char_height);
    set_hitbox_value(AT_BAIR, 1, HG_EFFECT, rune_flags.bair_paralysis ? 11 //Plasmastun
                                                                      : target.land_time);
    set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, target.walljump_vsp);
    set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, target.initial_dash_speed);
    set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, target.prat_fall_accel);

    set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, target.max_jump_hsp);
    set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, target.gravity_speed);

    if (rune_flags.bair_growth)
    {
        set_hitbox_value(AT_BAIR, 1, HG_WIDTH, get_hitbox_value(AT_UAIR, 1, HG_HEIGHT));
        set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, get_hitbox_value(AT_UAIR, 1, HG_WIDTH));
    }
    else
    {
        reset_hitbox_value(AT_BAIR, 1, HG_WIDTH);
        reset_hitbox_value(AT_BAIR, 1, HG_HEIGHT);
    }

    if (rune_flags.bair_disjoint)
    {
        set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -45 - floor(target.char_height) );
    }
    else
    {
        reset_hitbox_value(AT_BAIR, 1, HG_HITBOX_X);
    }

#define set_holp(newx, newy) // Version 0
    // snap position to grid
    newx = round(newx / 8.0) % 512; //9b
    newy = round(newy / 8.0) % 256; //8b

    if instance_exists(msg_persistence)
    {
        //record position in persistence (if it exists)
        if (msg_is_local)
        {
            msg_persistence.msg_holp_x[0] = newx;
            msg_persistence.msg_holp_y[0] = newy;
        }
        else if (!msg_is_online)
        {
            msg_persistence.msg_holp_x[player] = newx;
            msg_persistence.msg_holp_y[player] = newy;
        }
    }

    msg_holp_pos.x = newx * 8;
    msg_holp_pos.y = newy * 8;

#define spawn_base_dust // Version 0
    // /spawn_base_dust(x, y, name, dir = 0, angle = 0)
    // /spawn_base_dust(x, y, name, ?dir, ?angle)
    // originally by supersonic
    // This function spawns base cast dusts. Names can be found below.
    // ========================================================================================================
    var x = argument[0],
        y = argument[1],
        name = argument[2];
    var dir = argument_count > 3 ? argument[3] : 0;
    var angle = argument_count > 4 ? argument[4] : 0;

    var dlen; //dust_length value
    var dfx; //dust_fx value
    var dfg; //fg_sprite value
    var dfa = 0; //draw_angle value
    var dust_color = 0;

    switch (name)
    {
        default:
        // warning: sprite assets magic numbers
        case "dash_start": dlen = 21; dfx = 3;  dfg = 2626; break;
        case "dash":       dlen = 16; dfx = 4;  dfg = 2656; break;
        case "jump":       dlen = 12; dfx = 11; dfg = 2646; break;
        case "doublejump":
        case "djump":      dlen = 21; dfx = 2;  dfg = 2624; break;
        case "walk":       dlen = 12; dfx = 5;  dfg = 2628; break;
        case "land":       dlen = 24; dfx = 0;  dfg = 2620; break;
        case "walljump":   dlen = 24; dfx = 0;  dfg = 2629; dfa = -90 *(dir != 0 ? dir : spr_dir); break;
        case "n_wavedash": dlen = 24; dfx = 0;  dfg = 2620; dust_color = 1; break;
        case "wavedash":   dlen = 16; dfx = 4;  dfg = 2656; dust_color = 1; break;
    }
    var newdust = spawn_dust_fx(round(x),round(y),asset_get("empty_sprite"),dlen);
    if (newdust == noone) return noone;

    newdust.draw_angle = dfa + angle;
    newdust.dust_fx = dfx; //set the fx id
    newdust.dust_color = dust_color; //set the dust color
    if (dfg != -1) newdust.fg_sprite = dfg; //set the foreground sprite
    if (dir != 0) newdust.spr_dir = dir; //set the spr_dir
    return newdust;

#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion