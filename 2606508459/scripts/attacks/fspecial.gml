set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 5);

var ig = 1;

//Cancel (1)
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);

ig++;

//Charge (2)
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_LENGTH, 21); //from 20 lmao skill issue
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED, fspecial_chargeHSP);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED, -.2);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_frog_fspecial_cancel"));

ig++;

//Go (3)
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED, 10); //30
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));

ig++;

//Loop Power (4)
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 6); //This is the only thing I changed to implement the Hand
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED, 8.5);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_INVINCIBILITY, 2); //Invincible to projectiles

ig++;

//End 1 (5)
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 19);

ig++;

//End 2 (6)
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 24);

ig = 1;
set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, ig, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, ig, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, ig, HG_LIFETIME, 10);//was at 10, stays at 10 in the end
set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_X, 23);
set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL, ig, HG_WIDTH, 80);
set_hitbox_value(AT_FSPECIAL, ig, HG_HEIGHT, 53); //size reduced
set_hitbox_value(AT_FSPECIAL, ig, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, ig, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, ig, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FSPECIAL, ig, HG_VISUAL_EFFECT, 22);
set_hitbox_value(AT_FSPECIAL, ig, HG_ANGLE, 45); //65
set_hitbox_value(AT_FSPECIAL, ig, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, ig, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, ig, HG_HITPAUSE_SCALING, 1);

/*
//Loop Power
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_TYPE, 1);
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_LENGTH, 12);
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAMES, 6); //This is the only thing I changed to implement the Hand
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_ANIM_FRAME_START, 14);
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED_TYPE, 2);
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_HSPEED, fspecial_goHSP);
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED_TYPE, 1);
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_VSPEED, 0);
    set_window_value(AT_FSPECIAL, ig, AG_WINDOW_INVINCIBILITY, 2); //Invincible to projectiles
    
    set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_FSPECIAL, ig, HG_WINDOW, ig);
    set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_GROUP, 1);
    set_hitbox_value(AT_FSPECIAL, ig, HG_LIFETIME, 9);
    set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_X, 30);
    set_hitbox_value(AT_FSPECIAL, ig, HG_HITBOX_Y, -39);
    set_hitbox_value(AT_FSPECIAL, ig, HG_WIDTH, 126);
    set_hitbox_value(AT_FSPECIAL, ig, HG_HEIGHT, 60);
    set_hitbox_value(AT_FSPECIAL, ig, HG_SHAPE, 0);
    set_hitbox_value(AT_FSPECIAL, ig, HG_PRIORITY, 2);
    set_hitbox_value(AT_FSPECIAL, ig, HG_ANGLE_FLIPPER, 1);
    set_hitbox_value(AT_FSPECIAL, ig, HG_DAMAGE, 5);
    set_hitbox_value(AT_FSPECIAL, ig, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
    set_hitbox_value(AT_FSPECIAL, ig, HG_ANGLE, 85);
    set_hitbox_value(AT_FSPECIAL, ig, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(AT_FSPECIAL, ig, HG_KNOCKBACK_SCALING, .5);
    set_hitbox_value(AT_FSPECIAL, ig, HG_BASE_HITPAUSE, 5);
    set_hitbox_value(AT_FSPECIAL, ig, HG_HITPAUSE_SCALING, .8);
    
    /*
    set_hitbox_value(AT_FSPECIAL, i + 2, HG_HITBOX_X, 20);
    set_hitbox_value(AT_FSPECIAL, i + 2, HG_HITBOX_Y, -33);
    set_hitbox_value(AT_FSPECIAL, i + 2, HG_WIDTH, 75);
    set_hitbox_value(AT_FSPECIAL, i + 2, HG_HEIGHT, 78);
    set_hitbox_value(AT_FSPECIAL, i + 2, HG_SHAPE, 2);
    */

//END