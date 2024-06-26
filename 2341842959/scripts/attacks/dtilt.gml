set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_CATEGORY, 2);
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));

set_window_value(AT_DTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 5);//old 7
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("fart"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 10);// old 8 
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DTILT, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 3);// old  5
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DTILT, 1);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_SPRITE, sprite_get("nothing"));
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, 4);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 123);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DTILT, 1, HG_EFFECT, has_rune("N")? 10:0);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DTILT, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_PLASMA_SAFE, true);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_DTILT, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, asset_get("sfx_poison_hit_weak"));