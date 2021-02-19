set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -1);

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_UAIR, 2);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 25);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -110);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 85);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 26);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -65);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 37);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 55);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
