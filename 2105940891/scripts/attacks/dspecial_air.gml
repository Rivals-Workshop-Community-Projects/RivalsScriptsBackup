set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecialair"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecialair_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DSPECIAL_AIR, 40);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 400);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 215);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 400);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 215);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);	
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 400);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 215);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_MASK, -1);	
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_VSPEED, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 215);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_MASK, -1);	
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_ANGLE, 215);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_MASK, -1);	
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_HSPEED, .75);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_VSPEED, 6.25);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 5, HG_IGNORES_PROJECTILES, 1);

//Suffering time! (see Dspecial.gml for context)

set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_X, DspecialH1);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_Y, DspecialV1);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_WIDTH, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HEIGHT, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_DAMAGE, BEAM);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_ANGLE, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_DSPECIAL_AIR, 8, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_X, DspecialH1 + 10);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_Y, DspecialV1 + 10);
set_hitbox_value(AT_DSPECIAL_AIR, 9, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HITBOX_X, DspecialH1 + 30);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HITBOX_Y, DspecialV1 + 30);
set_hitbox_value(AT_DSPECIAL_AIR, 10, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HITBOX_X, DspecialH1 + 70);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HITBOX_Y, DspecialV1 + 70);
set_hitbox_value(AT_DSPECIAL_AIR, 11, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_HITBOX_X, DspecialH1 + 90);
set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_HITBOX_Y, DspecialV1 + 90);
set_hitbox_value(AT_DSPECIAL_AIR, 12, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_HITBOX_X, DspecialH1 + 110);
set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_HITBOX_Y, DspecialV1 + 110);
set_hitbox_value(AT_DSPECIAL_AIR, 13, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_HITBOX_X, DspecialH1 + 130);
set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_HITBOX_Y, DspecialV1 + 130);
set_hitbox_value(AT_DSPECIAL_AIR, 14, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_HITBOX_X, DspecialH1 + 150);
set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_HITBOX_Y, DspecialV1 + 150);
set_hitbox_value(AT_DSPECIAL_AIR, 15, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_HITBOX_X, DspecialH1 + 170);
set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_HITBOX_Y, DspecialV1 + 170);
set_hitbox_value(AT_DSPECIAL_AIR, 16, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_HITBOX_X, DspecialH1 + 190);
set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_HITBOX_Y, DspecialV1 + 190);
set_hitbox_value(AT_DSPECIAL_AIR, 17, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_HITBOX_X, DspecialH1 + 210);
set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_HITBOX_Y, DspecialV1 + 210);
set_hitbox_value(AT_DSPECIAL_AIR, 18, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_HITBOX_X, DspecialH1 + 230);
set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_HITBOX_Y, DspecialV1 + 230);
set_hitbox_value(AT_DSPECIAL_AIR, 19, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_HITBOX_X, DspecialH1 + 250);
set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_HITBOX_Y, DspecialV1 + 250);
set_hitbox_value(AT_DSPECIAL_AIR, 20, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_HITBOX_X, DspecialH1 + 270);
set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_HITBOX_Y, DspecialV1 + 270);
set_hitbox_value(AT_DSPECIAL_AIR, 21, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_HITBOX_X, DspecialH1 + 290);
set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_HITBOX_Y, DspecialV1 + 290);
set_hitbox_value(AT_DSPECIAL_AIR, 22, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_HITBOX_X, DspecialH1 + 310);
set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_HITBOX_Y, DspecialV1 + 310);
set_hitbox_value(AT_DSPECIAL_AIR, 23, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_HITBOX_X, DspecialH1 + 330);
set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_HITBOX_Y, DspecialV1 + 330);
set_hitbox_value(AT_DSPECIAL_AIR, 24, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_HITBOX_X, DspecialH1 + 350);
set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_HITBOX_Y, DspecialV1 + 350);
set_hitbox_value(AT_DSPECIAL_AIR, 25, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_HITBOX_X, DspecialH1 + 370);
set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_HITBOX_Y, DspecialV1 + 370);
set_hitbox_value(AT_DSPECIAL_AIR, 26, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_HITBOX_X, DspecialH1 + 390);
set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_HITBOX_Y, DspecialV1 + 390);
set_hitbox_value(AT_DSPECIAL_AIR, 27, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_HITBOX_X, DspecialH1 + 410);
set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_HITBOX_Y, DspecialV1 + 410);
set_hitbox_value(AT_DSPECIAL_AIR, 28, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_HITBOX_X, DspecialH1 + 430);
set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_HITBOX_Y, DspecialV1 + 430);
set_hitbox_value(AT_DSPECIAL_AIR, 29, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_HITBOX_X, DspecialH1 + 450);
set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_HITBOX_Y, DspecialV1 + 450);
set_hitbox_value(AT_DSPECIAL_AIR, 30, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_HITBOX_X, DspecialH1 + 470);
set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_HITBOX_Y, DspecialV1 + 470);
set_hitbox_value(AT_DSPECIAL_AIR, 31, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_HITBOX_X, DspecialH1 + 490);
set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_HITBOX_Y, DspecialV1 + 490);
set_hitbox_value(AT_DSPECIAL_AIR, 32, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_HITBOX_X, DspecialH1 + 510);
set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_HITBOX_Y, DspecialV1 + 510);
set_hitbox_value(AT_DSPECIAL_AIR, 33, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_HITBOX_X, DspecialH1 + 530);
set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_HITBOX_Y, DspecialV1 + 530);
set_hitbox_value(AT_DSPECIAL_AIR, 34, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_HITBOX_X, DspecialH1 + 550);
set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_HITBOX_Y, DspecialV1 + 550);
set_hitbox_value(AT_DSPECIAL_AIR, 35, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_HITBOX_X, DspecialH1 + 570);
set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_HITBOX_Y, DspecialV1 + 570);
set_hitbox_value(AT_DSPECIAL_AIR, 36, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_HITBOX_X, DspecialH1 + 590);
set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_HITBOX_Y, DspecialV1 + 590);
set_hitbox_value(AT_DSPECIAL_AIR, 37, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_HITBOX_X, DspecialH1 + 610);
set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_HITBOX_Y, DspecialV1 + 610);
set_hitbox_value(AT_DSPECIAL_AIR, 38, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_HITBOX_X, DspecialH1 + 630);
set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_HITBOX_Y, DspecialV1 + 630);
set_hitbox_value(AT_DSPECIAL_AIR, 39, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_PARENT_HITBOX, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_LIFETIME, 111);
set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_HITBOX_X, DspecialH1 + 650);
set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_HITBOX_Y, DspecialV1 + 650);
set_hitbox_value(AT_DSPECIAL_AIR, 40, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_VSPEED, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 41, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
