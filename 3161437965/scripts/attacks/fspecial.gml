set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_rudebuster"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy1"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 4);

//set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);

set_num_hitboxes(AT_FSPECIAL, 1);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 70);
//set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 9);               //these values are all set in attack_update.gml
//set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 9);
//set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .8);
//set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
//set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, fx_strike);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));

if(has_rune("B")){
    set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
    set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 10);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 7);
    set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HITPAUSE_FRAME, 6);
    
    set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 13);
    set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 55);
}

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 25);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 0);               //these values are all set in attack_update.gml
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, fx_strike);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1"));
