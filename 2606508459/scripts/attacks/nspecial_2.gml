set_attack_value(AT_NSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_2, AG_SPRITE, sprite_get("nspecial_3"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("nspecial_3_hurt"));
set_attack_value(AT_NSPECIAL_2, AG_AIR_SPRITE, sprite_get("nspecial_3_air"));
set_attack_value(AT_NSPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_3_air_hurt"));

set_attack_value(AT_NSPECIAL_2, AG_NUM_WINDOWS, 4);

var ig = 1;

//Startup 1
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 5); //1
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 1);

ig++;

//Startup 2
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_cancel"));
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_SFX, asset_get("sfx_blink_dash"));

ig++;

//Call
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 3);

ig++;

//Keep
/*
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 9);

ig++;
*/

//End
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_LENGTH, 5);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_2, ig, AG_WINDOW_ANIM_FRAME_START, 4);

ig = 1;
set_num_hitboxes(AT_NSPECIAL_2, 1);

if (dip_swapSpecial)
{
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_WINDOW, 2);
    //set_hitbox_value(AT_NSPECIAL_2, ig, HG_WINDOW_CREATION_FRAME, 1);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_LIFETIME, 1);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_PRIORITY, 2);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_DAMAGE, 3);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_ANGLE, 90);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_BASE_KNOCKBACK, 10);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_BASE_HITPAUSE, 8);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_HITPAUSE_SCALING, 0.6);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_SHAPE, 0);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_HITBOX_X, 0);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_HITBOX_Y, -33);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_WIDTH, 100);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_HEIGHT, 100);
    set_hitbox_value(AT_NSPECIAL_2, ig, HG_ANGLE_FLIPPER, 8);
}

//END