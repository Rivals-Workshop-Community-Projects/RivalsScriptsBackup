set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 3);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, sound_get("the_world"));

set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HSPEED_TYPE, 1);

set_num_hitboxes(AT_USTRONG, 4);

set_hitbox_value(AT_USTRONG, 1, HG_MUNO_HITBOX_EXCLUDE, true);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("chainsaw"));
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 99);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 0);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 1, HG_EXTENDED_PARRY_STUN, true);
//set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GRAVITY, .5);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_AIR_FRICTION, .15);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_HSPEED, 8);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_VSPEED, -13);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 61);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, -60);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 120);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 130);
set_hitbox_value(AT_USTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USTRONG, 1, HG_PROJECTILE_DESTROY_EFFECT, 151);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USTRONG, 2, HG_MUNO_HITBOX_NAME, "Chainsaw Multihit");
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("projectile_invis"));
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_MASK, sprite_get("chainsaw"));
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 99);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG, 2, HG_TECHABLE, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 50);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, sound_get("chainsaw_hit"));

set_hitbox_value(AT_USTRONG, 3, HG_MUNO_HITBOX_NAME, "Chainsaw Launcher");
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_SPRITE, sprite_get("projectile_invis"));
set_hitbox_value(AT_USTRONG, 3, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 99);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_HSPEED, 16);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -75);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 3, HG_HITSTUN_MULTIPLIER, .9);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 4, HG_MUNO_HITBOX_NAME, "Physical Launcher");
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -25);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 4, HG_SHAPE, 0);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, 304);
//set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));


set_attack_value(AT_USTRONG, AG_MUNO_ATTACK_MISC_ADD, "Teleport horizontally at frame 9 in held direction. Can teleport off ledge.");