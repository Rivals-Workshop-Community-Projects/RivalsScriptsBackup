set_attack_value(AT_NTHROW, AG_SPRITE, spr_nspecial_item_throw);
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_NAME, "NSpecial: Throwables");



set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NTHROW, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
// set_window_value(AT_NTHROW, 2, AG_WINDOW_SFX, sfx_minecraft_bow_loose);



set_num_hitboxes(AT_NTHROW, 0);

//fire charge
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 90);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 105);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, 0.7); // 0.9
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_SPRITE, spr_itm_fire_charge_proj);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_HSPEED, 12);
set_hitbox_value(AT_NTHROW, 1, HG_EFFECT, 1);
// set_hitbox_value(AT_NTHROW, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 1, HG_MUNO_HITBOX_NAME, "Fire Charge");

//ender pearl
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 300);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_SPRITE, spr_itm_pearl_proj);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_VSPEED, -3);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_AIR_FRICTION, 0.1);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_GRAVITY, 0.2);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 2, HG_MUNO_HITBOX_NAME, "Ender Pearl");

if has_rune("O") set_hitbox_value(AT_NTHROW, 2, HG_EFFECT, 11);

//eye of ender
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 80);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 30);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 30);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, sfx_minecraft_hit);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_SPRITE, spr_itm_eye_of_ender_proj);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 3, HG_MUNO_HITBOX_NAME, "Eye of Ender");

//splash potion
set_hitbox_value(AT_NTHROW, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 4, HG_LIFETIME, 300);
set_hitbox_value(AT_NTHROW, 4, HG_WIDTH, 30);
set_hitbox_value(AT_NTHROW, 4, HG_HEIGHT, 30);
set_hitbox_value(AT_NTHROW, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 4, HG_ANGLE, 70);
// set_hitbox_value(AT_NTHROW, 4, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_NTHROW, 4, HG_KNOCKBACK_SCALING, 0.5);
// set_hitbox_value(AT_NTHROW, 4, HG_BASE_HITPAUSE, 10);
// set_hitbox_value(AT_NTHROW, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_SPRITE, spr_itm_splash_potion);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_AIR_FRICTION, 0.2);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
// set_hitbox_value(AT_NTHROW, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 4, HG_MUNO_HITBOX_NAME, "Splash Potion (Bottle)");

//splash potion cloud
set_hitbox_value(AT_NTHROW, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_NTHROW, 5, HG_WIDTH, 140);
set_hitbox_value(AT_NTHROW, 5, HG_HEIGHT, 100);
set_hitbox_value(AT_NTHROW, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 5, HG_ANGLE, 70);
set_hitbox_value(AT_NTHROW, 5, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NTHROW, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 5, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 5, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NTHROW, 5, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_NTHROW, 5, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NTHROW, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 5, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 5, HG_MUNO_HITBOX_NAME, "Splash Potion (Splash)");

//lingering potion
set_hitbox_value(AT_NTHROW, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 6, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 6, HG_LIFETIME, 300);
set_hitbox_value(AT_NTHROW, 6, HG_WIDTH, 30);
set_hitbox_value(AT_NTHROW, 6, HG_HEIGHT, 30);
set_hitbox_value(AT_NTHROW, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 6, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 6, HG_ANGLE, 70);
// set_hitbox_value(AT_NTHROW, 6, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_NTHROW, 6, HG_KNOCKBACK_SCALING, 0.5);
// set_hitbox_value(AT_NTHROW, 6, HG_BASE_HITPAUSE, 10);
// set_hitbox_value(AT_NTHROW, 6, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_SPRITE, spr_itm_lingering_potion);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_HSPEED, 9);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_VSPEED, -4);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_AIR_FRICTION, 0.2);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_GRAVITY, 0.5);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
// set_hitbox_value(AT_NTHROW, 6, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 6, HG_MUNO_HITBOX_NAME, "Lingering Potion (Bottle)");

//lingering potion cloud
set_hitbox_value(AT_NTHROW, 7, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 7, HG_LIFETIME, 16);
set_hitbox_value(AT_NTHROW, 7, HG_WIDTH, 196);
set_hitbox_value(AT_NTHROW, 7, HG_HEIGHT, 80);
set_hitbox_value(AT_NTHROW, 7, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 7, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 7, HG_ANGLE, 70);
set_hitbox_value(AT_NTHROW, 7, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_NTHROW, 7, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NTHROW, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NTHROW, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NTHROW, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_NTHROW, 7, HG_HIT_SFX, asset_get("sfx_waterhit_weak"));
set_hitbox_value(AT_NTHROW, 7, HG_PROJECTILE_SPRITE, spr_lingering_potion_blast);
set_hitbox_value(AT_NTHROW, 7, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NTHROW, 7, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 7, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 7, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 7, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 7, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 7, HG_MUNO_HITBOX_NAME, "Lingering Potion (Multi-hit)");

//lingering potion cloud, final
set_hitbox_value(AT_NTHROW, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 8, HG_LIFETIME, 16);
set_hitbox_value(AT_NTHROW, 8, HG_WIDTH, 196);
set_hitbox_value(AT_NTHROW, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_NTHROW, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 8, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 8, HG_ANGLE, 70);
set_hitbox_value(AT_NTHROW, 8, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_NTHROW, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 8, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 8, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NTHROW, 8, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NTHROW, 8, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_NTHROW, 8, HG_PROJECTILE_SPRITE, spr_lingering_potion_blast);
set_hitbox_value(AT_NTHROW, 8, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(AT_NTHROW, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 8, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 8, HG_MUNO_HITBOX_NAME, "Lingering Potion (Finisher)");

//bell
set_hitbox_value(AT_NTHROW, 9, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NTHROW, 9, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 9, HG_LIFETIME, 300);
set_hitbox_value(AT_NTHROW, 9, HG_WIDTH, 30);
set_hitbox_value(AT_NTHROW, 9, HG_HEIGHT, 30);
set_hitbox_value(AT_NTHROW, 9, HG_PRIORITY, 3);
set_hitbox_value(AT_NTHROW, 9, HG_DAMAGE, 9);
set_hitbox_value(AT_NTHROW, 9, HG_ANGLE, 105);
set_hitbox_value(AT_NTHROW, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 9, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_NTHROW, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NTHROW, 9, HG_EXTRA_HITPAUSE, 50);
set_hitbox_value(AT_NTHROW, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_NTHROW, 9, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_SPRITE, spr_itm_bell_proj);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_VSPEED, -12);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_GRAVITY, 0.45);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 9, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NTHROW, 9, HG_MUNO_HITBOX_NAME, "Bell");





