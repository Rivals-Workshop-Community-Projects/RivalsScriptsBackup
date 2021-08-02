set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));

set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

var cw = 1;

set_window_value(AT_DATTACK, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_DATTACK, cw, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, cw, AG_WINDOW_CUSTOM_GROUND_FRICTION, 10);
set_window_value(AT_DATTACK, cw, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_SFX, asset_get("sfx_may_root"));

cw = 2; //First hit

set_window_value(AT_DATTACK, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_SFX, asset_get("sfx_may_root"));

cw = 3; //Second hit

set_window_value(AT_DATTACK, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, cw, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_SFX, asset_get("sfx_syl_dstrong"));
set_window_value(AT_DATTACK, cw, AG_WINDOW_SFX_FRAME, 3);

cw = 4; //Final hit

set_window_value(AT_DATTACK, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAME_START, 3);

cw = 5;

set_window_value(AT_DATTACK, cw, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, cw, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, cw, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_DATTACK, cw, AG_WINDOW_HAS_WHIFFLAG, 4);
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, cw);
set_num_hitboxes(AT_DATTACK, 3);


set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 32);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, hit_sprites[0]);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);


set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 32);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 30);
set_hitbox_value(AT_DATTACK, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, hit_sprites[0]);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 2);

set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 70);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 76);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, hit_sprites[1]);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 15);

set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);