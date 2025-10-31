//article1_update.gml

//This is essentially just an extra hook for other_update.gml
with (oPlayer)
if (object_index == oPlayer) msg_other_update();

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_other_update // Version 0
    // Must be called from the POV of a oPlayer object
    // ==================================================================
    // Part 1: oddity management
    // Fix weird interactions caused by MissingNo's influence
    {
        //negative hitstun/hitpause
        if (hitstun < 0 || hitstun_full < 0)
        {
            hitstun = max(3, abs(hitstun));
            hitstun_full = max(3, abs(hitstun_full));
            if (state != PS_HITSTUN) set_state(PS_HITSTUN);
        }

        //should catch *fresh* negativestun caused by the debuff
        //see: Dan letting hitstop-- reach minus 0.68 on occasion
        if (hitstop_full < 0)
        {
            hitstop = clamp(abs(hitstop), 3, 20);
            hitstop_full = clamp(abs(hitstop_full), 3, 20);

            if (!hitpause)
            {
                hitpause = true;
                old_vsp = vsp;
                old_hsp = hsp;
            }
        }

        //===================================================================
        //Rivals Bug: certain attacks (uncharged strongs, heals) can snap the
        // damage counter back to Zero: detect those cases and (try) fixing them
        //See also: hit_player, got_hit (where the interaction involves Missingno and is fixed directly)
        var curr_damage = get_player_damage(player);
        if (curr_damage == 0 && msg_last_known_damage < 0)
        && (state != PS_RESPAWN)
        {
            //if the hitbox isnt found; just contend to reverting previous known damage
            var possibly_damage_just_taken =
                (instance_exists(enemy_hitboxID) && (enemy_hitboxID != 0)) ? enemy_hitboxID.damage : 0;
            set_player_damage( player, floor(msg_last_known_damage + possibly_damage_just_taken));
        }
        msg_last_known_damage = curr_damage;
        //===================================================================

        if (msg_clone_last_attack_that_needed_offedge != noone)
        && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
        {
            //restore this index to its original value
            reset_attack_value(msg_clone_last_attack_that_needed_offedge, AG_OFF_LEDGE);
            msg_clone_last_attack_that_needed_offedge = noone;
        }

        //==================================================================
        if (msg_negative_dmg_timer > 0) && (state == PS_RESPAWN || state == PS_DEAD)
                                        && !get_match_setting(SET_PRACTICE)
        {
            var unlock = false;
            var pers = noone;
            // this is with (oPlayer)
            //except GML is drunk and screws up nested withs
            for (var i = 0; i < instance_number(oPlayer); i++)
            with (instance_find(oPlayer, i))
            {
                if (player == other.msg_prev_last_hit_by_player)
                && ("msg_is_local" in self) && (msg_is_local || !msg_is_online)
                {
                    unlock = true;
                }

                if ("msg_persistence" in self)
                    pers = msg_persistence;
            }

            if instance_exists(pers) pers.achievement_request_unlock_id = 0;
        }

        msg_prev_last_hit_by_player = last_player_hit_me;
    }
    //==================================================================
    //Part 2: debuffs
    //Apply effects/buffs/debuffs caused by any Missingno
    {
        //reset on death
        if (state == PS_RESPAWN)
        {
            msg_grab_immune_timer = 0;
            msg_grabbed_timer = 0;

            msg_negative_dmg_timer = 0;
            msg_unsafe_effects.blending.gameplay_timer = 0;

            msg_doubled_time_timer = 0;
            msg_has_doubled_frame = false;

            msg_inverted_collider_timer = 0;
            image_yscale = 1;

            msg_unsafe_invisible_timer = 0;

            msg_perish_song_timer = 0;
        }

        //stay in hitpause while grabbed
        if (msg_grabbed_timer > 0)
        {
            msg_grabbed_timer--;
            hitpause = true;
            hitstop = max(hitstop, 3);
            hitstop_full++;
        }
        //post-grab immunity
        else if (msg_grab_immune_timer > 0)
        {
            msg_grab_immune_timer--;
        }

        //========INVISIBILITY========
        if (msg_unsafe_invisible_timer > 0)
        {
            msg_unsafe_invisible_timer--;
            if (msg_unsafe_invisible_timer <= 0)
            {
                visible = true;
                debuff_expire_vfx();
                if (!msg_is_local) && ("msg_persistence" in self)
                    msg_persistence.music_request_breaking = false;
            }
        }
        else if (msg_unsafe_invisible_timer < 0) && (state_cat == SC_HITSTUN)
        {
            visible = true;
            if (!msg_is_local) && ("msg_persistence" in self)
                msg_persistence.music_request_breaking = false;
        }

        //=========LEECH SEED=========
        if (msg_leechseed_owner != noone)
        {
            if (poison > 0)
            {
                msg_leechseed_timer++;
                if (msg_leechseed_timer % (msg_leechseed_owner.msg_grab_leechseed_duration/poison) == 0)
                {
                    sound_play(asset_get("mfx_hp_spawn"));
                    take_damage(player, msg_leechseed_owner.player, 1);
                    with (msg_leechseed_owner)
                        create_leech_seed(other.x, other.y-(other.char_height/2));
                }
                if (msg_leechseed_timer >= msg_leechseed_owner.msg_grab_leechseed_duration)
                {
                    msg_leechseed_timer = 0;
                    poison--;
                }
            }
            else
            {
                poison = 0;
                marked = false;
                msg_leechseed_timer = 0;
                msg_leechseed_owner = noone;
            }
        }

        //======NEGATIVE PERCENT======
        if (msg_negative_dmg_timer > 0)
        {
            msg_negative_dmg_timer--;

            if (get_player_damage(player) >= 0)
            {
                //End debuff early
                msg_negative_dmg_timer = 0;
                msg_unsafe_effects.blending.gameplay_timer = 0;
            }
            else if (msg_negative_dmg_timer <= 0 && get_player_damage(player) < 0)
            {
                //restore to positive
                if !instance_exists(msg_handler_id) msg_handler_id = other.player_id; //failsafe
                var dmg = abs(floor(get_player_damage(player) / msg_handler_id.msg_grab_negative_multiplier));
                set_player_damage(player, dmg);
                debuff_expire_vfx();
            }

            if instance_exists(msg_handler_id) && (random_func(10, 3, true) == 0)
            with (msg_handler_id)
                spawn_debuff_twinkle(hfx_glitchtwinkle, other.x, other.y - 30, 40);

        }

        //========GLITCH TIME=========
        if (msg_doubled_time_timer > 0)
        {
            debuff_still_active = true;
            msg_doubled_time_timer--;

            if (msg_doubled_time_timer <= 0) debuff_expire_vfx();

            if (!msg_has_doubled_frame) && (!hitpause)
            {
                if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
                {
                    window_timer--;
                    state_timer--;
                }
                else if (state_cat == SC_HITSTUN) || (state == PS_TUMBLE)
                {
                    //prevents cases where new speeds are ignored when hit during a doubled frame
                    if (state_timer > 1)
                    {
                        x = msg_prev_status.x;
                        hsp = msg_prev_status.hsp;
                        y = msg_prev_status.y;
                        vsp = msg_prev_status.vsp;
                    }
                }
                else
                {
                    //mostly screws up animation
                    window_timer--;
                    state_timer--;
                }
                msg_has_doubled_frame = true;
            }
            else if (!hitpause)
            {
                msg_has_doubled_frame = false;
                msg_prev_status.x = x;
                msg_prev_status.y = y;
                msg_prev_status.hsp = hsp;
                msg_prev_status.vsp = vsp;
            }

            //All whiff-windows skipped
            if get_window_value(attack, window, AG_WINDOW_HAS_WHIFFLAG)
            {
                window_timer = 0;
                var next_window = window + 1;
                window = get_window_value(attack, window, AG_WINDOW_GOTO);
                if (window == 0) window = next_window;
            }

            if instance_exists(msg_handler_id) && (random_func(10, 3, true) == 0)
            with (msg_handler_id)
                spawn_debuff_twinkle(hfx_glitchtwinkle, other.x, other.y - 30, 40);
        }

        //======INVERTED COLLIDER=====
        if (msg_inverted_collider_timer > 0)
        {
            msg_inverted_collider_timer--;
            image_yscale = (msg_inverted_collider_timer <= 0) ? 1 : -1;
        }

        //======RUNE: INVERTED DI=====
        if (state == PS_HITSTUN && hitpause) && instance_exists(hit_player_obj)
        && (hit_player_obj.player == last_player_hit_me)
        && (hit_player_obj.msg_is_missingno && hit_player_obj.msg_rune_flags.anti_di)
        {
            state = PS_FLASHED;
        }

        //======RUNE: PERISH SONG=====
        if (msg_perish_song_timer > 0)
        {
            msg_perish_song_timer--;

            if instance_exists(msg_handler_id) with (msg_handler_id)
            {
                switch (other.msg_perish_song_timer)
                {
                    case 360:
                    case 240:
                    case 120:
                        var spite = sound_get("spite");
                        with (other) if ("msg_is_local" in self) && (msg_is_local || !msg_is_online)
                            sound_play(spite, false, noone, 0.6 - (msg_perish_song_timer/720), 0.8);
                        spawn_hit_fx(floor(other.x), floor(other.y - 40), HFX_POM_MUSIC);
                        shake_camera(8 + other.msg_perish_song_timer/60, 10);
                    break;

                    case 1://massive hitbox
                        var hb = create_hitbox(AT_TAUNT, 11, other.x, other.y)
                        hb.x = other.x;
                        hb.y = other.y - 40;
                        hb.can_hit = array_create(array_length(hb.can_hit), 0)
                        hb.can_hit[other.player] = true;
                        hb.can_hit_self = true;
                    break;
                }
            }
        }
    }

#define create_leech_seed(src_x, src_y) // Version 0
    if ("msg_leechseed_particles" not in self) exit;
    var temp_part = msg_leechseed_particles[msg_leechseed_particle_pointer];
    msg_leechseed_particle_pointer =
        (msg_leechseed_particle_pointer + 1) % msg_leechseed_particle_number;

    temp_part.timer = msg_grab_leechseed_delay;
    temp_part.x = src_x;
    temp_part.y = src_y;
    temp_part.source_x = src_x;
    temp_part.source_y = src_y;
    temp_part.mid_x = src_x - 150 + random_func(4, 300, true);
    temp_part.mid_y = src_y - 150 + random_func(5, 300, true);

#define debuff_expire_vfx // Version 0
    with (other) var sfx = sound_get("clicker_static");
    sound_play(sfx);

    msg_unsafe_effects.shudder.impulse = 8;
    msg_unsafe_effects.shudder.horz_max = 5;
    msg_unsafe_effects.shudder.vert_max = 5;
    msg_unsafe_effects.bad_vsync.impulse = 8;

#define spawn_debuff_twinkle(vfx, pos_x, pos_y, width) // Version 0
    // THXNOZ
    var kx = pos_x - (width / 2) + random_func(1, 1, false) * width;
    var ky = pos_y - (width / 2) + random_func(2, 1, false) * width;

    var k = spawn_hit_fx(floor(kx), floor(ky), vfx);
    k.spr_dir = 4 + 4*random_func(5, 2, true);
    k.image_yscale = (2 + random_func(6, 2, true));
    k.draw_angle = random_func(3, 4, true) * 90;
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion