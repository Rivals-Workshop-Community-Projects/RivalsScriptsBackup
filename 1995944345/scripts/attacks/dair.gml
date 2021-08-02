var ca = AT_DAIR;
set_attack_value(ca, AG_CATEGORY, 1);
set_attack_value(ca, AG_SPRITE, sprite_get("dair"));
set_attack_value(ca, AG_NUM_WINDOWS, 3);
set_attack_value(ca, AG_HAS_LANDING_LAG, 1);
set_attack_value(ca, AG_LANDING_LAG, 8);
set_attack_value(ca, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(ca, 1, AG_WINDOW_TYPE, 1);
set_window_value(ca, 1, AG_WINDOW_LENGTH, 14);
set_window_value(ca, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(ca, 1, AG_WINDOW_VSPEED, -1);
set_window_value(ca, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(ca, 1, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));
set_window_value(ca, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(ca, 2, AG_WINDOW_TYPE, 1);
set_window_value(ca, 2, AG_WINDOW_LENGTH, 10);
set_window_value(ca, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(ca, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(ca, 2, AG_WINDOW_HAS_SFX, 0);
set_window_value(ca, 2, AG_WINDOW_VSPEED, -2);
set_window_value(ca, 2, AG_WINDOW_SFX, asset_get("sfx_syl_nspecial"));

set_window_value(ca, 3, AG_WINDOW_TYPE, 1);
set_window_value(ca, 3, AG_WINDOW_LENGTH, 20);
set_window_value(ca, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(ca, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(ca, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(ca,2);

set_hitbox_value(ca, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(ca, 1, HG_WINDOW, 2);
set_hitbox_value(ca, 1, HG_LIFETIME, 60);
set_hitbox_value(ca, 1, HG_HITBOX_Y, -13);
set_hitbox_value(ca, 1, HG_WIDTH, 20);
set_hitbox_value(ca, 1, HG_HEIGHT, 40);
set_hitbox_value(ca, 1, HG_SHAPE, 0);
set_hitbox_value(ca, 1, HG_PRIORITY, 2);
set_hitbox_value(ca, 1, HG_DAMAGE, 3);
set_hitbox_value(ca, 1, HG_ANGLE, 50);
set_hitbox_value(ca, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(ca, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(ca, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(ca, 1, HG_EXTRA_HITPAUSE, 7);
set_hitbox_value(ca, 1, HG_VISUAL_EFFECT, hit_sprites[3]);
set_hitbox_value(ca, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(ca, 1, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
//set_hitbox_value(ca, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(ca, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(ca, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(ca, 1, HG_PROJECTILE_SPRITE, sprite_get("dair_proj"));
set_hitbox_value(ca, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(ca, 1, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(ca, 1, HG_PROJECTILE_VSPEED, 12);
set_hitbox_value(ca, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(ca, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(ca, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(ca, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(ca, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(ca, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(ca, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(ca, 2, HG_WINDOW, 99);
set_hitbox_value(ca, 2, HG_LIFETIME, 4);
set_hitbox_value(ca, 2, HG_HITBOX_Y, -50);
set_hitbox_value(ca, 2, HG_WIDTH, 70);
set_hitbox_value(ca, 2, HG_HEIGHT, 90);
set_hitbox_value(ca, 2, HG_SHAPE, 0);
set_hitbox_value(ca, 2, HG_PRIORITY, 2);
set_hitbox_value(ca, 2, HG_DAMAGE, 5);
set_hitbox_value(ca, 2, HG_ANGLE, 90);
set_hitbox_value(ca, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(ca, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(ca, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(ca, 2, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(ca, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(ca, 2, HG_HIT_SFX, asset_get("sfx_absa_orb_hit"));
set_hitbox_value(ca, 2, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(ca, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(ca, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(ca, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(ca, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(ca, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(ca, 2, HG_PROJECTILE_PARRY_STUN, 1);
/*

set_window_value(ca, 1, AG_WINDOW_TYPE, 1);
set_window_value(ca, 1, AG_WINDOW_LENGTH, 9);
set_window_value(ca, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(ca, 1, AG_WINDOW_VSPEED, -1);
set_window_value(ca, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(ca, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(ca, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(ca, 2, AG_WINDOW_TYPE, 1);
set_window_value(ca, 2, AG_WINDOW_LENGTH, 6);
set_window_value(ca, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(ca, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(ca, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(ca, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(ca, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(ca, 3, AG_WINDOW_TYPE, 1);
set_window_value(ca, 3, AG_WINDOW_LENGTH, 6);
set_window_value(ca, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(ca, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(ca, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(ca, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(ca, 3, AG_WINDOW_SFX_FRAME, 4);

set_window_value(ca, 4, AG_WINDOW_TYPE, 1);
set_window_value(ca, 4, AG_WINDOW_LENGTH, 10);
set_window_value(ca, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(ca, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(ca, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(ca, 4, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));
set_window_value(ca, 4, AG_WINDOW_SFX_FRAME, 9);

set_window_value(ca, 5, AG_WINDOW_TYPE, 1);
set_window_value(ca, 5, AG_WINDOW_LENGTH, 6);
set_window_value(ca, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(ca, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(ca, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(ca, 6, AG_WINDOW_TYPE, 1);
set_window_value(ca, 6, AG_WINDOW_LENGTH, 10);
set_window_value(ca, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(ca, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(ca, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(ca,4);

set_hitbox_value(ca, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(ca, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(ca, 1, HG_WINDOW, 2);
set_hitbox_value(ca, 1, HG_LIFETIME, 3);
set_hitbox_value(ca, 1, HG_HITBOX_Y, -13);
set_hitbox_value(ca, 1, HG_WIDTH, 50);
set_hitbox_value(ca, 1, HG_HEIGHT, 50);
set_hitbox_value(ca, 1, HG_SHAPE, 0);
set_hitbox_value(ca, 1, HG_PRIORITY, 2);
set_hitbox_value(ca, 1, HG_DAMAGE, 1);
set_hitbox_value(ca, 1, HG_ANGLE, 90);
set_hitbox_value(ca, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(ca, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(ca, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(ca, 1, HG_VISUAL_EFFECT, hit_sprites[3]);
set_hitbox_value(ca, 1, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(ca, 1, HG_HIT_SFX, asset_get("sfx_bite"));
set_hitbox_value(ca, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(ca, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(ca, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(ca, 2, HG_WINDOW, 3);
set_hitbox_value(ca, 2, HG_LIFETIME, 3);
set_hitbox_value(ca, 2, HG_HITBOX_Y, -13);
set_hitbox_value(ca, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(ca, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(ca, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(ca, 3, HG_WINDOW, 4);
set_hitbox_value(ca, 3, HG_LIFETIME, 3);
set_hitbox_value(ca, 3, HG_HITBOX_Y, -13);
set_hitbox_value(ca, 3, HG_HITBOX_GROUP, 3);

set_hitbox_value(ca, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(ca, 4, HG_WINDOW, 5);
set_hitbox_value(ca, 4, HG_LIFETIME, 3);
set_hitbox_value(ca, 4, HG_HITBOX_Y, -13);
set_hitbox_value(ca, 4, HG_WIDTH, 30);
set_hitbox_value(ca, 4, HG_HEIGHT, 50);
set_hitbox_value(ca, 4, HG_SHAPE, 2);
set_hitbox_value(ca, 4, HG_PRIORITY, 2);
set_hitbox_value(ca, 4, HG_DAMAGE, 4);
set_hitbox_value(ca, 4, HG_ANGLE, 270);
set_hitbox_value(ca, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(ca, 4, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(ca, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(ca, 4, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(ca, 4, HG_VISUAL_EFFECT, hit_sprites[4]);
set_hitbox_value(ca, 4, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(ca, 4, HG_HIT_SFX, asset_get("sfx_crunch"));
set_hitbox_value(ca, 4, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(ca, 4, HG_HITBOX_GROUP, 2);