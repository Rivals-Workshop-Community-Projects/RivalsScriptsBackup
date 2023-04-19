set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 15);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, 1);

//Base
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("ragnarok_charge"));

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 27);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_GOTO, 30);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 27);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_GOTO, 30);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("ragnarok_proj_fire"));

set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, -6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_GOTO, 30);

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_GOTO, 30);

//Valor
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 28);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX_FRAME, 13);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED, 8);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_GOTO, 30);

//wisdom
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 36);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_GOTO, 30);

//master
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_SFX, asset_get("sfx_spin"));

set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 34);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_SFX_FRAME, 26);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_GOTO, 30);

//final
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_LENGTH, 60);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 18);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_GOTO, 14);

set_window_value(AT_NSPECIAL, 14, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_GOTO, 30);

set_window_value(AT_NSPECIAL, 15, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 22);


set_num_hitboxes(AT_NSPECIAL, 9);

//Base
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("ragnarok_projectile"));
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 150);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, sound_get("ragnarok_proj_hit"));

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 150);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, sound_get("ragnarok_hit"));

//Valor

set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 40);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 3, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_HIT_SFX, sound_get("KB_hitheavy2"));
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, hfx[0]);

//wisdom

set_hitbox_value(AT_NSPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_NSPECIAL, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 4, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 4, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_HIT_SFX, sound_get("ragnarok_proj_hit"));
set_hitbox_value(AT_NSPECIAL, 4, HG_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("empty"));
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(AT_NSPECIAL, 4, HG_EXTENDED_PARRY_STUN, 6);

//master

set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_WINDOW, 11);
set_hitbox_value(AT_NSPECIAL, 5, HG_LIFETIME, 28);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 5, HG_HITBOX_Y, -60);
set_hitbox_value(AT_NSPECIAL, 5, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL, 5, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 5, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 5, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL, 5, HG_HIT_SFX, sound_get("OB_hitmedium2"));
set_hitbox_value(AT_NSPECIAL, 5, HG_VISUAL_EFFECT, hfx[8]);

set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW, 11);
set_hitbox_value(AT_NSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 28);
set_hitbox_value(AT_NSPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITBOX_Y, -8);
set_hitbox_value(AT_NSPECIAL, 6, HG_WIDTH, 110);
set_hitbox_value(AT_NSPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL, 6, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_NSPECIAL, 6, HG_ANGLE, 260);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 6, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 6, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_NSPECIAL, 6, HG_HIT_SFX, sound_get("KB_hitheavy2"));
set_hitbox_value(AT_NSPECIAL, 6, HG_VISUAL_EFFECT, hfx[0]);

//final

set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW, 13);
set_hitbox_value(AT_NSPECIAL, 7, HG_WINDOW_CREATION_FRAME, 17);
set_hitbox_value(AT_NSPECIAL, 7, HG_LIFETIME, 35);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 7, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL, 7, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE, 20);
set_hitbox_value(AT_NSPECIAL, 7, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_SFX, sound_get("OK_hitmedium2"));
set_hitbox_value(AT_NSPECIAL, 7, HG_VISUAL_EFFECT, hfx[4]);
set_hitbox_value(AT_NSPECIAL, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 7, HG_HIT_LOCKOUT, 5);

set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW, 15);
set_hitbox_value(AT_NSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NSPECIAL, 8, HG_LIFETIME, 7);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 8, HG_WIDTH, 150);
set_hitbox_value(AT_NSPECIAL, 8, HG_HEIGHT, 80);
set_hitbox_value(AT_NSPECIAL, 8, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 8, HG_DAMAGE, 7);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 8, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 8, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 8, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NSPECIAL, 8, HG_HIT_SFX, sound_get("OK_hitheavy2"));
set_hitbox_value(AT_NSPECIAL, 8, HG_VISUAL_EFFECT, hfx[4]);

set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW, 13);
set_hitbox_value(AT_NSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 52);
set_hitbox_value(AT_NSPECIAL, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NSPECIAL, 9, HG_WIDTH, 140);
set_hitbox_value(AT_NSPECIAL, 9, HG_HEIGHT, 120);
set_hitbox_value(AT_NSPECIAL, 9, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL, 9, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 9, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NSPECIAL, 9, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 9, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL, 9, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_SFX, sound_get("OK_hitmedium1"));
set_hitbox_value(AT_NSPECIAL, 9, HG_VISUAL_EFFECT, hfx[4]);
set_hitbox_value(AT_NSPECIAL, 9, HG_TECHABLE, 3);
set_hitbox_value(AT_NSPECIAL, 9, HG_HIT_LOCKOUT, 5);
