set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 9);
//set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
/*
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.25);
*/
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
/*
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
*/
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
/*
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 0.5);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
*/
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -11);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.75);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 280);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 15);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -57);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 35);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.45);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));