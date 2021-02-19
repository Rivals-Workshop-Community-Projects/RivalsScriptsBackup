set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 8);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("taunt_hurt"));


set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_quick_dodge"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 0);


set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX,  asset_get("sfx_ori_glide_start"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME, 01);


set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 30);
set_window_value(AT_TAUNT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX, asset_get("sfx_coin_collect"));
set_window_value(AT_TAUNT, 5, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_TAUNT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_TAUNT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_TAUNT, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_TAUNT, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_TAUNT, 8, AG_WINDOW_SFX_FRAME, 12);

set_num_hitboxes(AT_TAUNT, 1);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 99999);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, sprite_get("fireheal"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_AIR_FRICTION, 1.2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DESTROY_EFFECT, 305);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 40);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 0.1);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 140);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_ori_taunt2"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 305);


