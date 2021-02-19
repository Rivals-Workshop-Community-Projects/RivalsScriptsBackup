set_attack_value(AT_DSPECIAL, AG_CATEGORY, 0);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 5);


set_num_hitboxes(AT_DSPECIAL, 42);

//These are the basic missiles more at 43+
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_HSPEED, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_HSPEED, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_VSPEED, -5);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_IGNORES_PROJECTILES, 1);

// Upward Beam hitbox

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -680);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 1200);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, BEAM);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));

// Hello person reading this code, I did this to myself, this is my hell now 10:29pm 5/11/2020

// Diagonals
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, DspecialH1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, DspecialV1 + 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, BEAM);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 140);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, DspecialH1 - 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, DspecialV1 - 20);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, DspecialH1 - 40);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, DspecialV1 - 40);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 8, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, DspecialH1 - 60);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, DspecialV1 - 60);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 9, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, DspecialH1 - 80);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, DspecialV1 - 80);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 10, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, DspecialH1 - 100);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, DspecialV1 - 100);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 11, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 11, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_X, DspecialH1 - 120);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_Y, DspecialV1 - 120);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 12, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 12, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_X, DspecialH1 - 140);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_Y, DspecialV1 - 140);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 13, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 13, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 13, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 13, HG_HITBOX_X, DspecialH1 - 160);
set_hitbox_value(AT_DSPECIAL, 13, HG_HITBOX_Y, DspecialV1 - 160);
set_hitbox_value(AT_DSPECIAL, 13, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 14, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 14, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 14, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 14, HG_HITBOX_X, DspecialH1 - 180);
set_hitbox_value(AT_DSPECIAL, 14, HG_HITBOX_Y, DspecialV1 - 180);
set_hitbox_value(AT_DSPECIAL, 14, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 15, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 15, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 15, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 15, HG_HITBOX_X, DspecialH1 - 200);
set_hitbox_value(AT_DSPECIAL, 15, HG_HITBOX_Y, DspecialV1 - 200);
set_hitbox_value(AT_DSPECIAL, 15, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 16, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 16, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 16, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 16, HG_HITBOX_X, DspecialH1 - 220);
set_hitbox_value(AT_DSPECIAL, 16, HG_HITBOX_Y, DspecialV1 - 220);
set_hitbox_value(AT_DSPECIAL, 16, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 17, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 17, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 17, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 17, HG_HITBOX_X, DspecialH1 - 240);
set_hitbox_value(AT_DSPECIAL, 17, HG_HITBOX_Y, DspecialV1 - 240);
set_hitbox_value(AT_DSPECIAL, 17, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 18, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 18, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 18, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 18, HG_HITBOX_X, DspecialH1 - 260);
set_hitbox_value(AT_DSPECIAL, 18, HG_HITBOX_Y, DspecialV1 - 260);
set_hitbox_value(AT_DSPECIAL, 18, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 19, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 19, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 19, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 19, HG_HITBOX_X, DspecialH1 - 280);
set_hitbox_value(AT_DSPECIAL, 19, HG_HITBOX_Y, DspecialV1 - 280);
set_hitbox_value(AT_DSPECIAL, 19, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 20, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 20, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 20, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 20, HG_HITBOX_X, DspecialH1 - 300);
set_hitbox_value(AT_DSPECIAL, 20, HG_HITBOX_Y, DspecialV1 - 300);
set_hitbox_value(AT_DSPECIAL, 20, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 21, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 21, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 21, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 21, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 21, HG_HITBOX_X, DspecialH2);
set_hitbox_value(AT_DSPECIAL, 21, HG_HITBOX_Y, DspecialV2 + 10);
set_hitbox_value(AT_DSPECIAL, 21, HG_WIDTH, 10);
set_hitbox_value(AT_DSPECIAL, 21, HG_HEIGHT, 10);
set_hitbox_value(AT_DSPECIAL, 21, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 21, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 21, HG_DAMAGE, BEAM);
set_hitbox_value(AT_DSPECIAL, 21, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL, 21, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 21, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 21, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 21, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL, 21, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_DSPECIAL, 21, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 22, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 22, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 22, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 22, HG_HITBOX_X, DspecialH2 + 20);
set_hitbox_value(AT_DSPECIAL, 22, HG_HITBOX_Y, DspecialV2 - 20);
set_hitbox_value(AT_DSPECIAL, 22, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 23, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 23, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 23, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 23, HG_HITBOX_X, DspecialH2 + 40);
set_hitbox_value(AT_DSPECIAL, 23, HG_HITBOX_Y, DspecialV2 - 40);
set_hitbox_value(AT_DSPECIAL, 23, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 24, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 24, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 24, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 24, HG_HITBOX_X, DspecialH2 + 60);
set_hitbox_value(AT_DSPECIAL, 24, HG_HITBOX_Y, DspecialV2 - 60);
set_hitbox_value(AT_DSPECIAL, 24, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 25, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 25, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 25, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 25, HG_HITBOX_X, DspecialH2 + 80);
set_hitbox_value(AT_DSPECIAL, 25, HG_HITBOX_Y, DspecialV2 - 80);
set_hitbox_value(AT_DSPECIAL, 25, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 26, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 26, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 26, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 26, HG_HITBOX_X, DspecialH2 + 100);
set_hitbox_value(AT_DSPECIAL, 26, HG_HITBOX_Y, DspecialV2 - 100);
set_hitbox_value(AT_DSPECIAL, 26, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 27, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 27, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 27, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 27, HG_HITBOX_X, DspecialH2 + 120);
set_hitbox_value(AT_DSPECIAL, 27, HG_HITBOX_Y, DspecialV2 - 120);
set_hitbox_value(AT_DSPECIAL, 27, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 28, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 28, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 28, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 28, HG_HITBOX_X, DspecialH2 + 140);
set_hitbox_value(AT_DSPECIAL, 28, HG_HITBOX_Y, DspecialV2 - 140);
set_hitbox_value(AT_DSPECIAL, 28, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 29, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 29, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 29, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 29, HG_HITBOX_X, DspecialH2 + 160);
set_hitbox_value(AT_DSPECIAL, 29, HG_HITBOX_Y, DspecialV2 - 160);
set_hitbox_value(AT_DSPECIAL, 29, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 30, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 30, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 30, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 30, HG_HITBOX_X, DspecialH2 + 180);
set_hitbox_value(AT_DSPECIAL, 30, HG_HITBOX_Y, DspecialV2 - 180);
set_hitbox_value(AT_DSPECIAL, 30, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 31, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 31, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 31, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 31, HG_HITBOX_X, DspecialH2 + 200);
set_hitbox_value(AT_DSPECIAL, 31, HG_HITBOX_Y, DspecialV2 - 200);
set_hitbox_value(AT_DSPECIAL, 31, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 32, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 32, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 32, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 32, HG_HITBOX_X, DspecialH2 + 220);
set_hitbox_value(AT_DSPECIAL, 32, HG_HITBOX_Y, DspecialV2 - 220);
set_hitbox_value(AT_DSPECIAL, 32, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 33, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 33, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 33, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 33, HG_HITBOX_X, DspecialH2 + 240);
set_hitbox_value(AT_DSPECIAL, 33, HG_HITBOX_Y, DspecialV2 - 240);
set_hitbox_value(AT_DSPECIAL, 33, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 34, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 34, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 34, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 34, HG_HITBOX_X, DspecialH2 + 260);
set_hitbox_value(AT_DSPECIAL, 34, HG_HITBOX_Y, DspecialV2 - 260);
set_hitbox_value(AT_DSPECIAL, 34, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 35, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 35, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 35, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 35, HG_HITBOX_X, DspecialH2 + 280);
set_hitbox_value(AT_DSPECIAL, 35, HG_HITBOX_Y, DspecialV2 - 280);
set_hitbox_value(AT_DSPECIAL, 35, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 36, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 36, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 36, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 36, HG_HITBOX_X, DspecialH2 + 300);
set_hitbox_value(AT_DSPECIAL, 36, HG_HITBOX_Y, DspecialV2 - 300);
set_hitbox_value(AT_DSPECIAL, 36, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 37, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 37, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 37, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 37, HG_HITBOX_X, DspecialH1 - 320);
set_hitbox_value(AT_DSPECIAL, 37, HG_HITBOX_Y, DspecialV1 - 320);
set_hitbox_value(AT_DSPECIAL, 37, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 38, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 38, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 38, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 38, HG_HITBOX_X, DspecialH2 + 320);
set_hitbox_value(AT_DSPECIAL, 38, HG_HITBOX_Y, DspecialV2 - 320);
set_hitbox_value(AT_DSPECIAL, 38, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 39, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 39, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 39, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 39, HG_HITBOX_X, DspecialH1 - 340);
set_hitbox_value(AT_DSPECIAL, 39, HG_HITBOX_Y, DspecialV1 - 340);
set_hitbox_value(AT_DSPECIAL, 39, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 40, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 40, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 40, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 40, HG_HITBOX_X, DspecialH2 + 340);
set_hitbox_value(AT_DSPECIAL, 40, HG_HITBOX_Y, DspecialV2 - 340);
set_hitbox_value(AT_DSPECIAL, 40, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DSPECIAL, 41, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_DSPECIAL, 41, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 41, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 41, HG_HITBOX_X, DspecialH1 - 360);
set_hitbox_value(AT_DSPECIAL, 41, HG_HITBOX_Y, DspecialV1 - 360);
set_hitbox_value(AT_DSPECIAL, 41, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DSPECIAL, 42, HG_PARENT_HITBOX, 21);
set_hitbox_value(AT_DSPECIAL, 42, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 42, HG_LIFETIME, 60);
set_hitbox_value(AT_DSPECIAL, 42, HG_HITBOX_X, DspecialH2 + 360);
set_hitbox_value(AT_DSPECIAL, 42, HG_HITBOX_Y, DspecialV2 - 360);
set_hitbox_value(AT_DSPECIAL, 42, HG_HITBOX_GROUP, 2);

//HG_HITBOX_TYPE
//HG_WINDOW
//HG_LIFETIME
//HG_HITBOX_X
//HG_HITBOX_Y
//HG_HITBOX_GROUP

// More Power Bullets

set_hitbox_value(AT_DSPECIAL, 43, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 43, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 43, HG_LIFETIME, 200);
set_hitbox_value(AT_DSPECIAL, 43, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 43, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL, 43, HG_WIDTH, 5);
set_hitbox_value(AT_DSPECIAL, 43, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 43, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 43, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 43, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSPECIAL, 43, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 43, HG_HIT_SFX, asset_get("sfx_clairen_tip_weak"));
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_SPRITE, sprite_get("smallproj"));
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_VSPEED, -2);
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 43, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

