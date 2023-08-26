set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 9);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("taunt_spin"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME, 5);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, sound_get("slash 3"));

set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 8);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_TAUNT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX, sound_get("taunt_stab"));
set_window_value(AT_TAUNT, 6, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_TAUNT, 7, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 7, AG_WINDOW_ANIM_FRAME_START, 13);

set_window_value(AT_TAUNT, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 8, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 8, AG_WINDOW_ANIM_FRAME_START, 15);

set_window_value(AT_TAUNT, 9, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 9, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 9, AG_WINDOW_ANIM_FRAME_START, 16);

//crystal
set_window_value(AT_TAUNT, 10, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 10, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 10, AG_WINDOW_ANIM_FRAME_START, 18);

set_window_value(AT_TAUNT, 11, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 11, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 11, AG_WINDOW_ANIM_FRAME_START, 19);

set_window_value(AT_TAUNT, 12, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 12, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 12, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 12, AG_WINDOW_ANIM_FRAME_START, 20);

//intro endlag
set_window_value(AT_TAUNT, 13, AG_WINDOW_TYPE, 0);
set_window_value(AT_TAUNT, 13, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 13, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 13, AG_WINDOW_ANIM_FRAME_START, 22);

//laser
set_window_value(AT_TAUNT, 14, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 14, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 14, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 14, AG_WINDOW_ANIM_FRAME_START, 15);


//laser hit
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 20);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 100);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, sound_get("hit_strong"));
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_TAUNT, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_TAUNT, 1, HG_EXTENDED_PARRY_STUN, true);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 20);