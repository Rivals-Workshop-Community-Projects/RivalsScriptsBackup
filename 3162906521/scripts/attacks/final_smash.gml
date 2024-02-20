set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("finalsmash"));
// set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("FinalSmash_hurt"));
set_attack_value(49, AG_NUM_WINDOWS, 5);
set_attack_value(49, AG_OFF_LEDGE, 1);
//75 total sprites

//summon
set_window_value(49, 1, AG_WINDOW_LENGTH, 45);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(49, 1, AG_WINDOW_HAS_SFX,1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("fs_transform"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 5);
set_window_value(49, 1, AG_WINDOW_INVINCIBILITY,1);

//rocket launching, sprite 15
set_window_value(49, 2, AG_WINDOW_LENGTH, 90);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 2, AG_WINDOW_INVINCIBILITY,1);

//transition, sprite 21
set_window_value(49, 3, AG_WINDOW_LENGTH, 78);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 24);
set_window_value(49, 3, AG_WINDOW_HAS_SFX,1);
set_window_value(49, 3, AG_WINDOW_SFX, sound_get("fs_minigun"));
set_window_value(49, 3, AG_WINDOW_INVINCIBILITY,1);

//firing this weapon for 12 seconds, 45
set_window_value(49, 4, AG_WINDOW_LENGTH, 60);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 45);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 19);
set_window_value(49, 4, AG_WINDOW_INVINCIBILITY,1);

//what the f-, 64
set_window_value(49, 5, AG_WINDOW_LENGTH, 33);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 64);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(49, 5, AG_WINDOW_INVINCIBILITY,1);

set_num_hitboxes(49, 1);

//uncle ben what happened? BOMB CART!
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 105);
set_hitbox_value(49, 1, HG_WINDOW, 5);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 32);
// set_hitbox_value(49, 1, HG_HITBOX_X, 114);
// set_hitbox_value(49, 1, HG_HITBOX_Y, -220);
set_hitbox_value(49, 1, HG_DAMAGE, 3);
set_hitbox_value(49, 1, HG_ANGLE, 30);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(49, 1, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(49, 1, HG_EFFECT, 15);
set_hitbox_value(49, 1, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(49, 1, HG_PROJECTILE_SPRITE, sprite_get("finalsmash_bombcart"));
set_hitbox_value(49, 1, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("finalsmash_bombcart"));
set_hitbox_value(49, 1, HG_PROJECTILE_HSPEED, 7);
set_hitbox_value(49, 1, HG_PROJECTILE_GRAVITY, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(49, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 0 )
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_metal_hit_strong"));

//rockets
set_hitbox_value(49, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 200);
set_hitbox_value(49, 2, HG_DAMAGE, 5);
set_hitbox_value(49, 2, HG_ANGLE, 60);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 5.5);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(49, 2, HG_HITSTUN_MULTIPLIER, .5);
set_hitbox_value(49, 2, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(49, 2, HG_PROJECTILE_SPRITE, sprite_get("rockets_up"));
set_hitbox_value(49, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("rocket"));
set_hitbox_value(49, 2, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(49, 2, HG_PROJECTILE_VSPEED, -10);
set_hitbox_value(49, 2, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 2, HG_PROJECTILE_ANIM_SPEED, 0.5);
set_hitbox_value(49, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 141 )
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_ell_uspecial_explode"));

//bullets
set_hitbox_value(49, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 3, HG_LIFETIME, 200);
set_hitbox_value(49, 3, HG_DAMAGE, 3);
set_hitbox_value(49, 3, HG_ANGLE, 60);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(49, 3, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(49, 3, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(49, 3, HG_PROJECTILE_SPRITE, sprite_get("fs_bullet"));
set_hitbox_value(49, 3, HG_PROJECTILE_HSPEED, 60);
set_hitbox_value(49, 3, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_ANIM_SPEED, 4);
set_hitbox_value(49, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 3, HG_PRIORITY, 2);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 141 )
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_buzzsaw_hit"));

//big kaboom
set_hitbox_value(49, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(49, 4, HG_LIFETIME, 40);
set_hitbox_value(49, 4, HG_DAMAGE, 20);
set_hitbox_value(49, 4, HG_ANGLE, 75);
// set_hitbox_value(49, 4, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(49, 4, HG_HEIGHT, 1000);
set_hitbox_value(49, 4, HG_WIDTH, 400);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 4, HG_HITPAUSE_SCALING, 10);
set_hitbox_value(49, 4, HG_HITSTUN_MULTIPLIER, 20);
set_hitbox_value(49, 4, HG_PROJECTILE_DESTROY_EFFECT, 3);
set_hitbox_value(49, 4, HG_PROJECTILE_SPRITE, sprite_get("fs_flash"));
set_hitbox_value(49, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(49, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_ANIM_SPEED, 0.25);
set_hitbox_value(49, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(49, 4, HG_PRIORITY, 2);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 141 )
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get("sfx_boss_explosion"));
	    		
//set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");