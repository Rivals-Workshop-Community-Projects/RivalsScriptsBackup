//animation.gml
draw_x = 0;
draw_y = 0; //does not always reset!?
small_sprites = 1; //see PS_ATTACK* case below

var do_glitch_trail = false; //if requires glitchbg trail

//==================================================================
// Glitch unsafe effects timers

msg_unsafe_handler_id = self; //missingnos always handle themselves

if (!msg_low_fps_mode)
{
   msg_collect_garbage();
   msg_refresh_effects();
}

//==================================================================
//crawl transition timers
if (state == PS_CROUCH && (right_down - left_down != 0) || state == PS_DASH_START) && down_down
{
    if (msg_crawlintro_timer < 6) msg_crawlintro_timer++;
}
else 
{
    if (msg_crawlintro_timer > 0) msg_crawlintro_timer--;
}

switch (state)
{
//==================================================================
    case PS_IDLE:
    {
        if (msg_crawlintro_timer > 0)
        {
            sprite_index = msg_crawl_spr;
            image_index = 4;
        }
    } break;
//==================================================================
    case PS_WALK:
    {
        sprite_index = idle_sprite;
        if (state_timer == 0)
        {
            msg_walk_start_x = x;
        }
        else
        {
            var max_dist = 80;
            var distance_walked = x - msg_walk_start_x;
            if (msg_stability_mode) 
            {
                distance_walked = clamp(distance_walked, -max_dist, max_dist);
                max_dist *= 0.25;
            }
            if (abs(distance_walked) < 5)
            {
                msg_unsafe_effects.bad_vsync.timer = 1;
                msg_unsafe_effects.bad_vsync.frozen = true;
            }
            msg_unsafe_effects.bad_vsync.freq = abs(distance_walked/5);
            msg_unsafe_effects.bad_vsync.horz_max = abs(distance_walked/10);

            distance_walked = clamp(distance_walked, -max_dist, max_dist);
            distance_walked = random_func(0, distance_walked, true);
            distance_walked = random_func(0, distance_walked, true);
            draw_x = -floor(distance_walked/2);
            
            msg_unsafe_effects.shudder.freq = abs(distance_walked);
            msg_unsafe_effects.shudder.horz_max = abs(distance_walked);
            msg_unsafe_effects.shudder.vert_max = 0;
            
        }
    } break;
//==================================================================
    case PS_WALK_TURN:
    {
        sprite_index = idle_sprite;
        if (abs(hsp) > 0.2)
        {
            msg_unsafe_effects.bad_vsync.gameplay_timer = 4;
            msg_unsafe_effects.bad_vsync.timer = 1;
            msg_unsafe_effects.bad_vsync.frozen = true;
        }
        else
        {
            msg_unsafe_effects.bad_vsync.freq = 12;
            msg_unsafe_effects.bad_vsync.horz_max = 18;
            msg_unsafe_effects.shudder.freq = 12;
            msg_unsafe_effects.shudder.horz_max = 18;
            msg_unsafe_effects.shudder.vert_max = 12;

        }
    } break;
//==================================================================
    case PS_CROUCH:
    {
        if (!joy_pad_idle) && (right_down - left_down != 0)
        {
            sprite_index = msg_crawl_spr;
            msg_crawl_anim_index = 
            (msg_crawl_anim_index + 4 + crouch_anim_speed * spr_dir * (right_down - left_down)) % 4;
            image_index = msg_crawl_anim_index;

            if (msg_crawlintro_timer < 5)
            {
                image_index = 4;
            }
        }
        else if (msg_crawlintro_timer > 0)
        {
            sprite_index = msg_crawl_spr;
            image_index = 4;
        }
    } break;
//==================================================================
    case PS_PARRY:
    {
        if (state_timer == 4) && (!msg_is_online) 
             && !get_match_setting(SET_PRACTICE)
             && (GET_RNG(9, 0x07) == 0)
        {
            msg_fakeout_parry_timer = 40;
            sound_play(asset_get("sfx_parry_success"));
            //launch a substitute
            var sub = create_hitbox(AT_JAB, 2, x + 15*spr_dir, y);
            sub.hitpause_timer = 7;
            sub.length = 40;
            sub.old_hsp = spr_dir * -(10 + GET_RNG(12, 0x07));
            sub.old_vsp = -(8 + GET_RNG(16, 0x07));
            sub.hitstop = true;
            //MARK UNSAFE. THIS PROJECTILE IS NOT SYNCED.
            //this DID cause desyncs online! Dan does not like local-only projectiles.
            sub.msg_unsafe = true;
        }
        else if (state_timer == 10)
        {
            if(!has_parried) create_hitbox(AT_JAB, 1, x + 15*spr_dir, y);
            has_parried = false;
        }
    } break;
//==================================================================
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
    case PS_TECH_FORWARD:
    case PS_TECH_BACKWARD:
    case PS_AIR_DODGE:
    {
        if (state_timer == 0) && !msg_is_local && !get_match_setting(SET_PRACTICE)
        { 
            msg_gaslight_dodge.active = (GET_RNG(6, 0x0D) == 0);
            if (msg_gaslight_dodge.active)
            {
                msg_gaslight_dodge.x = 0;
                msg_gaslight_dodge.y = 0;
            }
        }

        if (msg_gaslight_dodge.active) && window < 2
        {
            msg_gaslight_dodge.x -= 2 * hsp;
            msg_gaslight_dodge.y -= 2 * vsp;
        }

        do_glitch_trail = true;

    } break;
//==================================================================
    case PS_WAVELAND:
    case PS_TECH_GROUND:
    {
        sprite_index = sprite_get("land");
        msg_unsafe_effects.crt.freq = 12;
        msg_unsafe_effects.crt.maximum = 8 - state_timer;
        msg_unsafe_effects.quadrant.freq = 10-state_timer;
    } break;
//==================================================================
    case PS_WALL_JUMP:
    {
        if (state_timer == 3) sound_play(jump_sound);
    } break;
    
//==================================================================
    case PS_PRATFALL:
    {
        do_glitch_trail = true;
    } break;
    case PS_PRATLAND:
    {
        sprite_index = pratland_spr;
        image_index = floor(image_number * (state_timer/prat_land_time));
    } break;
//==================================================================
    case PS_TUMBLE:
    {
        image_index = state_timer * 0.25;
        msg_unsafe_effects.bad_strip.freq = 999;
    } break;
//==================================================================
    case PS_DASH_START:
    {
        if (down_down)
        {
            sprite_index = msg_crawl_spr;
            msg_crawl_anim_index = 
            (msg_crawl_anim_index + 4 + crouch_anim_speed * 2 * spr_dir * (right_down - left_down)) % 4;
            if (right_down - left_down) == 0 
            {
                msg_crawl_anim_index = (msg_crawl_anim_index + 4 + hsp/12) % 4;
            }
            image_index =  msg_crawl_anim_index;

            if (msg_crawlintro_timer < 6)
            && (prev_prev_state == PS_DASH || prev_state == PS_DASH)
            {
                image_index = 5;
            }
        }
    } break;
    case PS_DASH:
    {
        do_glitch_trail = true;
    } break;
//==================================================================
    case PS_ATTACK_AIR:
    case PS_ATTACK_GROUND:

    if (msg_alt_sprite != noone) sprite_index = msg_alt_sprite;

    // BSPECIAL must consider the small_sprites parameter of the stolen sprites!
    // note: regular draw event needs this to happen before pre_draw, apparently.
    if (attack == AT_DSPECIAL_2) 
        small_sprites = msg_bspecial_last_move.small_sprites;
    //Special case of stolen asset needs similar consideration
    else if (attack == AT_FSTRONG) && (msg_alt_sprite != noone)
        small_sprites = 0;

    
    switch (attack)
    {
//==================================================================
        case AT_UTILT:
        {
            if (window == 2 || window == 3)
            {
                hud_offset = 100;
            }
        } break;
//==================================================================
        case AT_DATTACK:
        {
            do_glitch_trail = (window < 5);
        } break;
//==================================================================
        case AT_NAIR:
        {
            if (window == 2 && window_timer == 0)
            {
                msg_unsafe_effects.shudder.impulse = 8;
                msg_unsafe_effects.shudder.horz_max = 5;
                msg_unsafe_effects.shudder.vert_max = 5;
            }
            if (has_hit && window == 2)
            {
                msg_unsafe_effects.crt.freq = 12;
                msg_unsafe_effects.crt.maximum = 28;
            }
        } break;
//==================================================================
        case AT_DSTRONG:
        {
            if (window == 2 && window_timer == 0)
            {
                msg_dstrong_sweetspot_hit = false;
            }
            else if (window == 4 && msg_dstrong_sweetspot_hit)
            {
                image_index = 1 + get_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START);
            }
        } break;
//==================================================================
        case AT_USTRONG:
        {
            if (window == 3 && window_timer == 0 && !hitpause)
            {
                spawn_hit_fx( x, y-72, 259);
            }
            else if (window == 5 && window_timer <= 2)
            {
                msg_unsafe_effects.quadrant.impulse = 8;
                msg_unsafe_effects.shudder.impulse = 8;
                msg_unsafe_effects.shudder.horz_max = 5;
                msg_unsafe_effects.shudder.vert_max = 5;
            }
        } break;
//==================================================================
        case AT_DAIR:
        {
            if (window == 2 || window == 3 || window == 4 || window == 5)
            {
                small_sprites = 0;
                draw_y = -22;
                //cannot change sprite_index here, due to it also affecting hurtbox
                //see pre_draw
                //sprite_index = get_hitbox_value(AT_DAIR, 3, HG_PROJECTILE_SPRITE);
                do_glitch_trail = (window == 3);
            }
        } break;
//==================================================================
        case AT_UAIR:
        {
            if (window == 1)
            {
                msg_unsafe_effects.quadrant.gameplay_timer = 2;
                
                msg_unsafe_effects.quadrant.freq = 2 * max(0, window_timer - 14);
                msg_unsafe_effects.shudder.impulse = max(0, window_timer - 13);
                msg_unsafe_effects.shudder.horz_max = max(0, window_timer - 8);
                msg_unsafe_effects.shudder.vert_max = max(0, window_timer - 8);
            }
        } break;
//==================================================================
        case AT_FSPECIAL:
        {
            if (window == 2)
            {
                image_index = msg_fspecial_charge + 2;
            }
        } break;
//==================================================================
        case AT_FSPECIAL_AIR:
        {
            if (window == 3 && window_timer == 0)
            {
                spawn_hit_fx(x+spr_dir*22, y-28, HFX_ORC_WATER_LIGHT);
            }
        } break;
//==================================================================
        case AT_NTHROW:
        {
            if (window == 4)
            {
                if (msg_grab_selected_index < 0)
                {
                    msg_unsafe_effects.bad_vsync.freq = 999;
                    msg_unsafe_effects.bad_vsync.horz_max = 50;
                    msg_unsafe_effects.bad_vsync.gameplay_timer = 2;
                    msg_unsafe_effects.bad_vsync.frozen = true;
                    msg_unsafe_effects.shudder.freq = 999;
                    msg_unsafe_effects.shudder.horz_max = 50;
                    msg_unsafe_effects.shudder.vert_max = 50;
                }
                else
                {
                    msg_unsafe_effects.bad_vsync.freq = 999;
                    msg_unsafe_effects.bad_vsync.horz_max = 50;
                    msg_unsafe_paused_timer = (msg_grab_selection_timer == 1) ? 0 : 5;
                }
            }
            else if (window == MSG_GRAB_ANTIBASH_WINDOW)
            {
                sprite_index = sprite_get("pratfall");
                if (window_timer == 0)
                {
                    spawn_hit_fx(x+25*spr_dir, y-25, 113)
                }
            }
        } break;
//==================================================================
        case AT_USPECIAL:
        {
            do_glitch_trail = (window >= 2);
            if (msg_is_bspecial)
                msg_unsafe_effects.bad_strip.freq = 999;
                msg_unsafe_effects.bad_strip.frozen = 1;
        } break;
//==================================================================
        case AT_TAUNT:
        {
            switch (msg_alt_taunt_flag)
            {
                case 1: //gaster
                {
                    if (window == 1 && window_timer <= 1)
                    {
                        msg_taunt_timestamp = current_time;
                    }
                    else if visible && ((window == 2) || (msg_taunt_timestamp + 1200 < current_time))
                    {
                        visible = false;
                        sound_play(sound_get("vanish"));
                        var minimum_invis_time = (window == 1) ? get_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH) - window_timer : 5;
                        minimum_invis_time += get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH);
                        minimum_invis_time += (get_match_setting(SET_PRACTICE) ? 60 : 20);
                        
                        msg_unsafe_invisible_timer = (msg_is_local || get_match_setting(SET_PRACTICE)) ? minimum_invis_time : -1;
                        if (!msg_is_local) msg_persistence.music_request_breaking = GET_RNG(17, 0x01) ? 1 : noone;
                    }
                    else
                    {
                        //animation shenanigans
                        if (window_timer > 40)
                        {
                            image_index = 3;
                            msg_unsafe_effects.bad_vsync.freq = 16;
                            msg_unsafe_effects.bad_vsync.horz_max = 35;
                            msg_unsafe_effects.shudder.freq = 20;
                            msg_unsafe_effects.shudder.horz_max = 12;
                            msg_unsafe_effects.shudder.vert_max = 12;
                        }
                        else if (window_timer < 8) image_index = 0;
                        else
                        {
                            image_index = 1 + ((window_timer % 8) < 4 );
                            msg_unsafe_effects.shudder.freq = 7;
                            msg_unsafe_effects.shudder.horz_max = 12;
                            msg_unsafe_effects.shudder.vert_max = 12;
                        }
                    }
                } break;
                case 2: //majora
                {
                    if (window == 1)
                    {
                        image_index = (window_timer < 36) ? 
                            floor(window_timer/3) : min(16, 12 + floor((window_timer - 36) /6));
                    }
                } //continues for end-of-anim vfx
                default: //case 0
                {
                    if (window == 2) && (window_timer == get_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH) - 1)
                    {
                        sound_play(sound_get("clicker_static"), false, noone, 0.6);
                        sound_play(sound_get("krr"), false, noone, 1, 1.1 + GET_RNG(6, 0x07)/15.0);
                        msg_unsafe_effects.quadrant.impulse = 12;
                        msg_unsafe_effects.shudder.impulse = 12;
                        msg_unsafe_effects.shudder.horz_max = 8;
                        msg_unsafe_effects.shudder.vert_max = 8;
                        msg_persistence.music_request_breaking = GET_RNG(17, 0x01);

                        var charbox_offset = 3;
                        if (msg_persistence.state == PERS_CSS)
                        with asset_get("cs_charbox_obj") with (other)
                        {
                            if (GET_RNG(charbox_offset, 0x07) == 0) 
                                commit_asset_murder(other);
                            charbox_offset += 2;
                            msg_persistence.menu_is_broken = true;
                        }
                    }
                }break;
            }
        } break;
//==================================================================
        default: break;
    }break;
//==================================================================
    case PS_SPAWN:
    {
        if (get_gameplay_time() < 300) switch (msg_alt_startup)
        {
            case 0:
            case 1: //Unstable
            {
                if (state_timer < 45)
                {
                    if (state_timer == 10)
                    {
                        msg_unsafe_effects.quadrant.impulse = 2;
                        msg_persistence.sound_request_breaking = 75;
                        msg_persistence.stage_request_breaking = true;
                    }
                    msg_unsafe_effects.shudder.freq = state_timer;
                    msg_unsafe_effects.shudder.horz_max = 40;
                    msg_unsafe_effects.shudder.gameplay_timer = 2;
                    msg_unsafe_effects.quadrant.gameplay_timer = 2;
                    msg_unsafe_effects.quadrant.frozen = true;

                    draw_x = spr_dir * 30;
                }
                else if (state_timer < 60)
                {
                    if (state_timer == 45)
                    {
                        msg_unsafe_effects.bad_vsync.impulse = 2;
                        msg_persistence.sound_request_breaking = false;
                        msg_persistence.stage_request_breaking = false;
                        sound_play(sound_get("nidoran"));
                    }
                    msg_unsafe_effects.shudder.freq = state_timer/4;
                    msg_unsafe_effects.shudder.horz_max = state_timer;
                    msg_unsafe_effects.shudder.vert_max = state_timer;
                    msg_unsafe_effects.shudder.gameplay_timer = 2;
                    msg_unsafe_effects.shudder.frozen = 2;
                    msg_unsafe_effects.bad_vsync.gameplay_timer = 2;
                    msg_unsafe_effects.bad_vsync.frozen = true;

                    draw_x = 20 * dtan(state_timer * state_timer);
                    draw_y = spr_dir * 12 * tan(state_timer);

                    sprite_index = sprite_get("hurt");
                    image_index = GET_RNG(3, 0x07);
                }
            } break;
            case 2: //Clone spam
            {
                //requires: pseudoclones solution
            } break;
            case 3: //Fakeout dash
            {
                if (state_timer >= 50) && (state_timer < 90)
                {
                    sprite_index = sprite_get((state_timer < 65) ? "dashstart" : "dash");
                    image_index = (state_timer < 65) ? (state_timer - 50) / 4
                                                     : (state_timer - 65) / 4;

                    draw_x = spr_dir * (state_timer - 50) * 7;
                    msg_unsafe_effects.bad_vsync.freq = (state_timer - 20)/5;
                    msg_unsafe_effects.bad_vsync.horz_max = state_timer / 4;
                }
                else if (state_timer == 90) || (state_timer == 35)
                {
                    msg_unsafe_effects.bad_vsync.impulse = 8;
                    msg_unsafe_effects.bad_vsync.horz_max = 12;
                    sound_play(sound_get("clicker_static"), false, noone, 1, state_timer / 100);
                }
            } break;
        }
    } break;
//==================================================================
    default: break;
}

//==================================================================
// Revert gaslighting
if (hitpause || state == PS_RESPAWN)
{
    msg_gaslight_dodge.x = 0; 
    msg_gaslight_dodge.y = 0;
}
else
{
    draw_x += msg_gaslight_dodge.x; 
    draw_y += msg_gaslight_dodge.y;
}

//==================================================================
// general

//idle yellow
if (msg_yellow_mode) && (sprite_index == idle_sprite)
{
    sprite_index = idle_yellow_sprite;
}

//unstable hitstun
if (state_cat == SC_HITSTUN)
{
    if (hurt_img == msg_num_hurt_spr) 
    {
        sprite_index = msg_unsafe_garbage.spr;
        small_sprites = msg_unsafe_garbage.scale - 1;
    }
    else image_index = hurt_img;

    var base_freq = max(0, (hitstun - state_timer));
    msg_unsafe_effects.bad_vsync.freq = base_freq / 3;
    msg_unsafe_effects.shudder.freq = base_freq / 3;
    msg_unsafe_effects.quadrant.freq = base_freq - 10;
    msg_unsafe_effects.crt.freq = base_freq/2 -3;
}

//deployed wings
if (sprite_index == jump_sprite) && (prev_state == PS_DOUBLE_JUMP || attack == AT_UAIR)
{
    sprite_index = djump_sprite;
    image_index = 4;
}

//glitch trail (see top of file)
msg_unsafe_trail_active = do_glitch_trail;
if (do_glitch_trail && msg_low_fps_mode)
{
    //sparkles
}

//HUD order detection
if (msg_do_hud_position_check && get_gameplay_time() > 5)
{
    msg_get_local_hud_order();
    msg_do_hud_position_check = false;
}

//stability mode
if (get_gameplay_time() > 90)
{
    msg_persistence.stage_stability_mode |= msg_stability_mode;
}

//fakeout parry
if (msg_fakeout_parry_timer > 0) msg_fakeout_parry_timer--;

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define commit_asset_murder(entity) // Version 0
    if instance_exists(entity) with (oPlayer)
    {
        var k = spawn_hit_fx(0, 0, 0);
        k.white = entity;
        break;
    }

#macro PERS_CSS 3

#define msg_collect_garbage // Version 0
    // Done in animation.gml, contrary to pre_draw
    if (get_gameplay_time() % 15 == 0) && (0 == GET_RNG(1, 0x03))
    {
        //random chance per player to swap with an entry as its garbage sprite
        var base_entry_rng = GET_RNG(3, 0x0F)
        with (oPlayer) with (other)
        {
            var entry_rng = (other.player + base_entry_rng) % 16;
            var player_rng = GET_RNG((other.player % 4)*2 + 24, 0x03)
            if (player_rng == 0)
            {
                //simple swap
                var temp = other.msg_unsafe_garbage;
                other.msg_unsafe_garbage = msg_garbage_collection[entry_rng];
                msg_garbage_collection[entry_rng] = temp;
            }
            else if (player_rng == 1)
            {
                //replace with sprite currently in use
                other.msg_unsafe_garbage = msg_garbage_collection[entry_rng];
                msg_garbage_collection[entry_rng] = msg_get_garbage();
            }
        }
    }

#define msg_get_garbage // Version 0
    // create a garbage entry out of a sprite currently in use.
    {
        return { spr: sprite_index,
                 scale: small_sprites + 1,
                 width: abs(sprite_width),
                 height: sprite_height,
                 x_offset: abs(sprite_xoffset),
                 y_offset: sprite_yoffset
               }
    }

#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);

#define msg_refresh_effects // Version 0
    // really needs a better name; urgh
    // placed in animation (runs on game frames)
    with (oPlayer) if ("msg_unsafe_handler_id" in self
                   &&   msg_unsafe_handler_id == other)
    {
        if (msg_unsafe_paused_timer > 0)
        { msg_unsafe_paused_timer--; }

        //reset all effect's frequencies IF the game-timer is done counting
        for (var i = 0; i < array_length(msg_unsafe_effects.effects_list); i++)
        {
            var fx = msg_unsafe_effects.effects_list[i];
            var is_running = (fx.gameplay_timer > 0);
            fx.gameplay_timer -= is_running;
            fx.freq *= is_running;
            fx.frozen *= is_running;
        }
    }

#define msg_get_local_hud_order // Version 0
    // determine the HUD ordering for negative percent icon

    msg_player_to_hud_positions = [noone, noone, noone, noone, noone];
    var hud_pos_list = [noone, noone, noone, noone];
    switch (is_player_on(1) + is_player_on(2) + is_player_on(3) + is_player_on(4))
    {
        case 1: hud_pos_list = [  377, noone, noone, noone] break;
        case 2: hud_pos_list = [  258,   496, noone, noone] break;
        case 3: hud_pos_list = [  139,   377,   615, noone] break;
        case 4: hud_pos_list = [   20,   258,   496,   734] break;
    }

    if (!msg_is_online)
    {
        //Not online, known ordering: P1, P2, P3, P4
        var hud_num = 0;
        for (var p = 1; p <= 4; p++)
        {
            if (is_player_on(p))
            {
                msg_player_to_hud_positions[p] = hud_pos_list[hud_num];
                hud_num++;
            }
        }
    }
    else
    {
        //Online match: ordering is shown differently per client
        //Local player is always first, rest are sorted in order P1, P2, P3, P4
        var true_local_player = 0;

        if !get_match_setting(SET_TEAMS)
        {
            //msg_is_local is accurate
            with (oPlayer) if (msg_is_local) true_local_player = player;
        }
        else
        {
            //additional check with nicknames
            var local_nickname = get_player_name(0);
            var number_of_nickname_matches = 0;
            for (var p = 1; p <= 4; p++)
            {
                if (get_player_name(p) == (local_nickname == "P0" ? "P"+string(p) : local_nickname))
                {
                    true_local_player = p;
                    number_of_nickname_matches++;
                }
            }

            //nickname check unsuccessful; check using temp_x
            if (number_of_nickname_matches != 1)
            {
                true_local_player = 0;
                //check if a temp_x matches predicted local HUD
                //Notes:
                // temp_x doesnt exist on basecast
                // temp_x only exists after at least one call to draw_hud
                // temp_x not guaranteed to be accurate on workshop, either (can be set to)
                with (oPlayer) if ("temp_x" in self) && (temp_x == hud_pos_list[0])
                { true_local_player = player; break; }
            }

            //temp_x check unsuccessful; assume lowest playerport with msg_is_local to be true local.
            if (true_local_player == 0)
            {
                with (oPlayer) if (msg_is_local) && (player < true_local_player)
                {
                    true_local_player = player;
                }
                if (true_local_player == 99) //how can no one be local!?
                    true_local_player = player;
            }
        }

        //Get resulting order
        msg_player_to_hud_positions[true_local_player] = hud_pos_list[0];
        var hud_num = 1;
        for (var p = 1; p <= 4; p++)
        {
            if (is_player_on(p) && true_local_player != p)
            {
                msg_player_to_hud_positions[p] = hud_pos_list[hud_num];
                hud_num++;
            }
        }
    }
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion