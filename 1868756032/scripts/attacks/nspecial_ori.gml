set_attack_value(AT_NSPECIAL_ORI, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_ORI, AG_SPRITE, sprite_get("AT_NSPECIAL_ORI"));
set_attack_value(AT_NSPECIAL_ORI, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NSPECIAL_ORI, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_ORI, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_ORI, AG_AIR_SPRITE, sprite_get("AT_NSPECIAL_ORI"));
set_attack_value(AT_NSPECIAL_ORI, AG_HURTBOX_SPRITE, sprite_get("AT_NSPECIAL_ORI_hurt"));

set_window_value(AT_NSPECIAL_ORI, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORI, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_ORI, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_ORI, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ORI, 1, AG_WINDOW_SFX, asset_get("sfx_ori_bash_use"));

set_window_value(AT_NSPECIAL_ORI, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORI, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_ORI, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_ORI, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_NSPECIAL_ORI, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_NSPECIAL_ORI, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_ORI, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL_ORI, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_ORI, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ORI, 3, AG_WINDOW_SFX, asset_get("sfx_ori_dspecial_bash_miss"));

set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"));
set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_ORI, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_ORI, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_ORI, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_ORI, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_ORI, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_ORI, 5, AG_WINDOW_SFX, asset_get("sfx_ori_bash_launch"));





set_num_hitboxes(AT_NSPECIAL_ORI, 2);

set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_HITBOX_X, 17);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_WIDTH, 56);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL_ORI, 1, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_HITBOX_X, 17);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_WIDTH, 56);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_HITSTUN_MULTIPLIER, 0.8);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_NSPECIAL_ORI, 2, HG_THROWS_ROCK, 2);