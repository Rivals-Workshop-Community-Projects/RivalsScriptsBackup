set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 12);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 3);

//flip
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("block_fall"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 9);

//projectile drop
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//endlag
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1); //NOTE: if you make it a multi-hit FAIR, remove whifflag, since Rivals multi-step FAIRs do not have whifflag. single-hits like sandbert, elli, etc DO have whifflag

set_num_hitboxes(AT_FAIR, 4);

set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_NAME, "Falling Block");
set_hitbox_value(AT_FAIR, 1, HG_MUNO_HITBOX_MISC_ADD, "Active until hitting the ground or a player.");
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 60);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, square_hfx2);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_dattack"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FAIR, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_FAIR, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, 1, HG_ZAP, 1);

set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fair_proj"));
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_VSPEED, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_DESTROY_EFFECT, fair_destroy);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FAIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);

var temp_num = 1;
temp_num += 1;

set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FAIR, temp_num, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_X, -32);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FAIR, temp_num, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, temp_num, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, temp_num, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, temp_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, temp_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, temp_num, HG_VISUAL_EFFECT, square_hfx2);
set_hitbox_value(AT_FAIR, temp_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FAIR, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_ZAP, 1);

temp_num += 1;

set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FAIR, temp_num, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_X, -6);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FAIR, temp_num, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, temp_num, HG_HEIGHT, 64);
set_hitbox_value(AT_FAIR, temp_num, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, temp_num, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, temp_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, temp_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, temp_num, HG_VISUAL_EFFECT, square_hfx2);
set_hitbox_value(AT_FAIR, temp_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FAIR, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_ZAP, 1);

temp_num += 1;

set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_FAIR, temp_num, HG_LIFETIME, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_X, 26);
set_hitbox_value(AT_FAIR, temp_num, HG_HITBOX_Y, -54);
set_hitbox_value(AT_FAIR, temp_num, HG_WIDTH, 64);
set_hitbox_value(AT_FAIR, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_FAIR, temp_num, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, temp_num, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, temp_num, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, temp_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FAIR, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, temp_num, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, temp_num, HG_VISUAL_EFFECT, square_hfx2);
set_hitbox_value(AT_FAIR, temp_num, HG_HIT_SFX, asset_get("sfx_absa_harderhit"));
set_hitbox_value(AT_FAIR, temp_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_FAIR, temp_num, HG_ZAP, 1);