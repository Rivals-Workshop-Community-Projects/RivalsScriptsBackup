set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));


set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 25);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));
//set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 5);//10
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -5);

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);//15
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_FSPECIAL, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 4);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 4);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 4);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 4);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 120);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE_FLIPPER, 9);
//set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 4);

set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_X, -2);
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 6, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 6, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 6, HG_HEIGHT, 100);
set_hitbox_value(AT_FSPECIAL, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_syl_dstrong"));
set_hitbox_value(AT_FSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 6, HG_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 6, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 6, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 6, HG_VISUAL_EFFECT, 148);

set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Shorten during frames " + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) + 1) + "-" + string(get_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH) + get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)) + ", skipping to endlag and destroying hitbox.");