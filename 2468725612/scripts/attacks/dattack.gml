set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 4);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 4);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("punch_heavy"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 19);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("punch_weak"));
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 10);
//set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, 123);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DATTACK, 3, HG_PROJECTILE_PLASMA_SAFE, 1);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 19);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 4);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 0);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 80);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT, 124);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DATTACK, 4, HG_PROJECTILE_PLASMA_SAFE, 1);
