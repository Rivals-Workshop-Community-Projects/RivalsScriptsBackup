
set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("npc_nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nothing"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ori_dtilt_perform"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NAIR, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));

set_window_value(AT_NAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_SFX, asset_get("sfx_clairen_fspecial_slash"));

set_window_value(AT_NAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 4);
set_window_value(AT_NAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);

set_num_hitboxes(AT_NAIR,0);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 64*2);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 64*2);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 45);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 3);
//set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, hitfx[11]);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NAIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 128*2);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 128*2);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_NAIR, 2, HG_VISUAL_EFFECT, hitfx[12]);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NAIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 192*2);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 192*2);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 70);

set_hitbox_value(AT_NAIR, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 50);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .7);
//set_hitbox_value(AT_NAIR, 3, HG_VISUAL_EFFECT, hitfx[13]);

set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);


set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NAIR, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);