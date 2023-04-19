// NOTE:
// Missingno article come in pairs.
// master handles update logic
// clone only exists at a different depth to let master do two draw passes
if (master != self)
{
    with (master) draw_front();
}
else
{
    draw_back();
    music_update();
}

if (master.time_since_last_ran_script + 5000) < current_time
{
    master.menu_is_broken = false;
    master.music_request_breaking = false;
    master.prev_room = noone;
}
master.time_since_last_ran_script = current_time;


//=========================================================
//update, but on draw frames for convenience
#define music_update()
{
    if (music_request_breaking != noone)
    {
        if (music_request_breaking)
        {
            music_is_broken = true;
            sound_stop(music_loop_sound1); music_loop_sound1 = noone;
            sound_stop(music_loop_sound2); music_loop_sound2 = noone;
            msg_reroll_random();
            // roll breakage
            // 0x00000000 00000000 00000000 00000000
            //                                PPP111 - Main layer (kind + pitch)
            //                       PPP222 ??       - Secondary layer (direction + kind + pitch)
            var stereo = GET_RNG(7, 0x01);
            var stereo_dir = GET_RNG(6, 0x01) ? -1 : 1;
            var s_name = "mus_error";
            var s_pitch = GET_INT(3, 0x07);
            var s_vol = 1;
            switch (GET_RNG(0, 0x03)) {
                case 0: s_name = "mus_error";   s_vol = 5; s_pitch = 0.8 + 0.4 * s_pitch; break;
                case 1: s_name = "mus_numbers"; s_vol = 2; s_pitch = 0.6 + 0.5 * s_pitch; break;
                case 2: s_name = "mus_smile";   s_vol = 2; s_pitch = 0.4 + 0.5 * s_pitch; break;
                case 3: s_name = "deep_boat";   s_vol = 2; s_pitch = 0.3 + s_pitch; break;
            }
            music_loop_sound1 = sound_play(special_sound_get(s_name), true, (stereo ? -stereo_dir : 0), 1, s_pitch);
            music_multiplier1 = s_vol;

            s_pitch = GET_INT(11, 0x07);
            switch (GET_RNG(8, 0x07)) {
                case 0: s_name = "mus_error";   s_vol = 2;   s_pitch = 0.4 + 0.3 * s_pitch; break;
                case 1: s_name = "mus_numbers"; s_vol = 1;   s_pitch = 0.3 + 0.4 * s_pitch; break;
                case 2: s_name = "mus_smile";   s_vol = 1;   s_pitch = 0.2 + 0.3 * s_pitch; break;
                case 3: s_name = "deep_boat";   s_vol = 0.8; s_pitch = 0.6 + 0.3 * s_pitch; break;
                case 4: s_name = "grab0";       s_vol = 2;   s_pitch = 0.1 + 0.1 * s_pitch; break;
                case 5: s_name = "grabNaN";     s_vol = 0.8; s_pitch = 0.2 + 0.7 * s_pitch; break;
                case 6: s_name = "fred";        s_vol = 2;   s_pitch = 0.2 + 0.1 * s_pitch; break;
                case 7: s_name = "victory";     s_vol = 5;   s_pitch = 0.1 + 0.2 * s_pitch; break;
            }
            music_loop_sound2 = sound_play(special_sound_get(s_name), true, (stereo ? stereo_dir : 0), 1, s_pitch);
            music_multiplier2 = s_vol;
        }
        else
        {
            music_is_broken = false;
            sound_stop(music_loop_sound1); music_loop_sound1 = noone;
            sound_stop(music_loop_sound2); music_loop_sound2 = noone;
        }
        music_request_breaking = noone;
    }

    if (music_is_broken)
    {
        //music suppression
        suppress_stage_music(0, 1);

        var music_volume_setting = get_local_setting(3);
        sound_volume(music_loop_sound1, music_multiplier1 * music_volume_setting, 1);
        sound_volume(music_loop_sound2, music_multiplier2 * music_volume_setting, 1);
    }

    if (sound_request_breaking != noone)
    {
        sound_is_broken = false;
        sound_stop(sound_to_break_with);

        if (state == PERS_MATCH) && (sound_request_breaking > 0)
        {
            repeat(sound_request_breaking) sound_play(sound_to_break_with, true, 0, 1, 0);
            sound_is_broken = true;
        }
        sound_request_breaking = noone;
    }
    //scripts may get unloaded and wont run, but sound assets still keep going... hmmm

}

//=========================================================
#define draw_back()
{
    if (stage_is_broken)
    {
        msg_gpu_push_state();

        gpu_set_blendenable(false);
        gpu_set_alphatestenable(false);
    }
    else if (menu_is_broken)
    {
        msg_gpu_push_state();
        
        gpu_set_colorwriteenable(1, 0, 0, 0);
        draw_sprite_tiled_ext(special_sprite_get("glitch_bg"), 0, 0, 0, 2, 128, c_white, 1);
        gpu_set_colorwriteenable(1, 1, 1, 1);
        
        gpu_set_blendenable(false);
        gpu_set_alphatestenable(false);
    }
}
#define draw_front()
{
    if (room == asset_get("milestones_room"))
        draw_sprite_ext(special_sprite_get("glitch_bg"), 0, 4*((current_time * current_time) % 16) ^ 0x17 - 120, 140, 40, 2, -7, c_white, 1);
   
    msg_gpu_clear();
    gpu_set_blendenable(true);
    gpu_set_alphatestenable(true);

    if !(state == PERS_MATCH || state == PERS_CSS)
        msg_draw_achievement(special_sprite_get("achievement"));
}

#define special_sprite_get(name)
{
    //resources folder is dependent on player
    var temp = player;
    player = orig_player;
    var ret = sprite_get(name);
    player = temp;
    return ret;
}
#define special_sound_get(name)
{
    //resources folder is dependent on player
    var temp = player;
    player = orig_player;
    var ret = sound_get(name);
    player = temp;
    return ret;
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_gpu_push_state // Version 0
    gpu_push_state(); msg_unsafe_gpu_stack_level++;

#define msg_gpu_clear // Version 0
    while (msg_unsafe_gpu_stack_level > 0)
    {
        gpu_pop_state(); msg_unsafe_gpu_stack_level--;
    }

#macro PERS_CSS 3

#macro PERS_MATCH 5

#define msg_draw_achievement(spr) // Version 0
    if (achievement.end_time < current_time) return;
    //assumed called from the perspective of the master article holding the required information
    //bottom corner of screen: (960, 540)
    //size of achievement block: 240x94
    var popup_down = 540;
    var popup_up = popup_down - 94;
    var popup_x = 720;
    var popup_y = popup_up;

    //THX-UHC2
    if (current_time < achievement.rise_time)
    {
        popup_y = ease_linear(popup_down, popup_up,
                              current_time - achievement.start_time,
                              achievement.rise_time - achievement.start_time);
    }
    else if (current_time > achievement.fall_time)
    {
        popup_y = ease_linear(popup_up, popup_down,
                              achievement.fall_time - current_time,
                              achievement.fall_time - achievement.end_time);
    }

    draw_sprite(spr, achievement.id, popup_x, popup_y);

#define msg_reroll_random // Version 0
    // reroll msg_unsafe_random

    //DEBUG utility
    var debug_pass = false;
    if (string_count("*", keyboard_string)) { keyboard_string = ""; debug_pass = true; }
    msg_unsafe_paused_timer |= (keyboard_lastchar == '*');

    //xorshift algorithm
    if (msg_unsafe_paused_timer <= 0 || debug_pass)
    {
        var UINT_MAX = 0xFFFFFFFF;
        var rng = msg_unsafe_random;

        rng = (rng ^(rng << 13)) % UINT_MAX;
        rng = (rng ^(rng >> 17)) % UINT_MAX;
        rng = (rng ^(rng << 5 )) % UINT_MAX;

        msg_unsafe_random = rng;
    }

#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);

#define GET_INT // Version 0
    // ===========================================================
    // returns an intensity for the effect, between 0 and 1.
    // if centered is true, this will be between -0.5 and +0.5 instead.
    // uses "msg_unsafe_random" implicitly.
    var offset = argument[0], mask = argument[1];
    var centered = argument_count > 2 ? argument[2] : false;
    return (mask <= 0) ? 0
           : ((msg_unsafe_random >> offset) & mask) * (1.0/mask) - (centered * 0.5);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion