set_attack_value(AT_DAIR, AG_CATEGORY, 2);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_AIR_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.75);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 16);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 16);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_hit"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR, 4);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 85);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 17);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 152);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -50);

set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 192);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 100);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 35);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));