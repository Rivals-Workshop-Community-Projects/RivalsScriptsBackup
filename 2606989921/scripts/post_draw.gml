//post_draw.gml

if (state == PS_PARRY && (state_timer > 0 && state_timer < 10))
&& !(has_parried || msg_fakeout_parry_timer > 0)
{
    shader_start();
    draw_sprite_ext(msg_substitute, 0, x+15*spr_dir, y, 1*spr_dir, 1, 0, c_white, 1);
    shader_end();
}

if (!msg_low_fps_mode)
{
    //Restore drawing parameters
    msg_copy_params(msg_anim_backup, self, msg_anim_backup);
    msg_set_glitchbg_alpha(1);

}
//Prevents screen from being pitch-black and not printing any error message. also prevents a crash.
msg_gpu_clear();

if (msg_dstrong_yoyo.active && msg_dstrong_yoyo.visible)
{
    var subspr = msg_low_fps_mode ? get_gameplay_time() % 8 : GET_RNG(6, 0x1F);
    var ofx = msg_low_fps_mode ? 0 : GET_RNG(8, 0x03);
    var ofy = msg_low_fps_mode ? 0 : GET_RNG(12, 0x03);
    if (subspr > 5) 
    {
        subspr = 0; ofx = 0; ofy = 0;
    }
    shader_start();
    draw_sprite_ext(msg_dstrong_yoyo.spr, subspr, msg_dstrong_yoyo.x+ofx, msg_dstrong_yoyo.y+ofy, msg_dstrong_yoyo.dir, 1, 0, c_white, 0.9);
    shader_end();
}


if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)
{
    if (attack == AT_NTHROW && window == MSG_GRAB_ANTIBASH_WINDOW)
    {
        draw_sprite_ext(asset_get("bash_dir_spr"), 0, x+25*spr_dir, y-25, 1, 1, msg_antibash_direction - 45, c_white, 1);
    }
}

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define msg_copy_params(source, target, limiter) // Version 0
    // Usage: for all variables in LIMITER: copy value from SOURCE to TARGET
    var keys = variable_instance_get_names(limiter)
    for (var k = 0; k < array_length(keys); k++)
    {
        variable_instance_set(target, keys[k],
                                variable_instance_get(source, keys[k]));
    }

#define msg_set_glitchbg_alpha(new_alpha) // Version 0
    colorO[7*4 + 3] = new_alpha;
    colorO[6*4 + 3] = new_alpha;
    colorO[5*4 + 3] = new_alpha;
    colorO[4*4 + 3] = new_alpha;
    static_colorO[7*4 + 3] = new_alpha;
    static_colorO[6*4 + 3] = new_alpha;
    static_colorO[5*4 + 3] = new_alpha;
    static_colorO[4*4 + 3] = new_alpha;

#define msg_gpu_clear // Version 0
    while (msg_unsafe_gpu_stack_level > 0)
    {
        gpu_pop_state(); msg_unsafe_gpu_stack_level--;
    }

#define GET_RNG(offset, mask) // Version 0
    // ===========================================================
    // returns a random number from the seed by using the mask.
    // uses "msg_unsafe_random" implicitly.
    return (mask <= 0) ? 0
           :((msg_unsafe_random >> offset) & mask);
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion