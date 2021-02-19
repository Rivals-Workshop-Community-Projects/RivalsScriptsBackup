set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 15);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1); //Landing
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSPECIAL_AIR, 3);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 275);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .75);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 36);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 0);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -14);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE_FLIPPER, 6);