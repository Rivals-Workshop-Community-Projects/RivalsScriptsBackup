set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 7);


//nspst nspan nspac nsph  nsprc  nspspin nsprcvr
//4-5:2 6-6:1 7-7:1 8-8:1 9-10:2 11-14:4 15-16:2

//old 8 5 5 10 = 28
//new 8 4 3 8 = 23
//spawns in 5th window

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);//8
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 4);//5
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 3);//4

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 3);//5
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);//10
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX, sound_get("shadow"));
set_window_value(AT_NSPECIAL_AIR, 4, AG_WINDOW_SFX_FRAME, 7);//9

set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 22);//26
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 12);//20//18
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 17);//24//22
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_NSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 2);


set_num_hitboxes(AT_NSPECIAL_AIR, 2);

//void old
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));

//void new
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);//5
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 66);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_boss_fireball_land"));






