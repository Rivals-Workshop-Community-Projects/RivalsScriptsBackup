set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 28);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_DSPECIAL, 9);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, hfx_rin_small);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 64);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 8, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, hfx_rin_small);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, asset_get("sfx_zetter_fireball_fire"));
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_GROUP, 1);