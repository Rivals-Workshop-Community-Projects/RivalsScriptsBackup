set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Holding up during startup will send the gem apple higher, while holding back will send it a shorter distance horizontally.");

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 6);

set_num_hitboxes(AT_DSPECIAL, 0);

set_hitbox_value(AT_DSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTENDED_PARRY_STUN, 1);



set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_HITPAUSE, 20);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_HITPAUSE, 30);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_HITPAUSE, 45);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 420);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 142);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_2"));
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .2);//nice.
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("empty_proj"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Explosion Small");


set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_EFFECT, 420);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 139);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .2);//nice.
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("empty_proj"));
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Explosion Medium");

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 110);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_EFFECT, 420);
set_hitbox_value(AT_DSPECIAL, 3, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 270);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .2);//nice.
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("empty_proj"));
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_MUNO_HITBOX_NAME, "Explosion Large");

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 24);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 24);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_EFFECT, 420);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));
//set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .2);//nice.
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty_proj"));
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_MUNO_HITBOX_NAME, "Normal Collision");

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 85);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 85);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_EFFECT, 420);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 8.5);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 139);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_ell_dspecial_explosion_3"));
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .2);//nice.
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("empty_proj"));
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_MUNO_HITBOX_NAME, "Explosion Medium 2");

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_THROWS_ROCK, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL, 6, HG_EFFECT, 420);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 270);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, .2);//nice.
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("empty_proj"));
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_MUNO_HITBOX_NAME, "Explosion Large 2");


//set_attack_value(AT_DSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Jump cancel starting on frame " + string(get_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH) + 1) + " unless parried.");

//This is why you should place these at the BOTTOM of the attack file - if placed at the TOP, it wouldn't be able to reference window length, or etc, because it would not have been defined yet.

//Referencing data like this, instead of just typing the number 4 manually, is good because if you patch things, it'll update the description automatically.
//Eg if I made DSpecial's startup 1 frame faster, the jump-cancel description would change to reflect the new speed.