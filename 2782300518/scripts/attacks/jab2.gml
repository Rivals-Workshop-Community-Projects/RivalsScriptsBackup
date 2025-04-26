set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("jab2"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 9);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("jab2_hurt"));
set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_NAME, "Jab2 (Claw Combo)");
set_attack_value(AT_NTHROW, AG_NO_PARRY_STUN, 1);
set_attack_value(AT_NTHROW, AG_MUNO_ATTACK_MISC, "Cancels into Hit 2 on frame 13 and Hit 3 on frame 32.");


set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HSPEED, hsp);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, sound_get("claw3"));
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NTHROW, 2, AG_WINDOW_HSPEED, hsp + 1);

set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NTHROW, 3, AG_WINDOW_HSPEED, hsp);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NTHROW, 3, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_NTHROW, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HSPEED, hsp);
set_window_value(AT_NTHROW, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 4, AG_WINDOW_SFX, sound_get("claw3"));
set_window_value(AT_NTHROW, 4, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NTHROW, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NTHROW, 5, AG_WINDOW_HSPEED, hsp + 1);

set_window_value(AT_NTHROW, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_NTHROW, 6, AG_WINDOW_HSPEED, hsp);
set_window_value(AT_NTHROW, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(AT_NTHROW, 6, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(AT_NTHROW, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NTHROW, 7, AG_WINDOW_HSPEED, hsp);
set_window_value(AT_NTHROW, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 7, AG_WINDOW_SFX, sound_get("claw3"));
set_window_value(AT_NTHROW, 7, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NTHROW, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NTHROW, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NTHROW, 8, AG_WINDOW_HSPEED, hsp + 1);

set_window_value(AT_NTHROW, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NTHROW, 9, AG_WINDOW_HSPEED, hsp);

set_num_hitboxes(AT_NTHROW, 3);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 75);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_NTHROW, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, sound_get("hit_light"));

set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 2, HG_WINDOW, 5);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NTHROW, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_NTHROW, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NTHROW, 2, HG_WIDTH, 66);
set_hitbox_value(AT_NTHROW, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_NTHROW, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_NTHROW, 2, HG_ANGLE, 75);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NTHROW, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NTHROW, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_NTHROW, 2, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_NTHROW, 2, HG_HIT_SFX, sound_get("hit_light"));

set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 3, HG_WINDOW, 8);
set_hitbox_value(AT_NTHROW, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_NTHROW, 3, HG_HITBOX_Y, -48);
set_hitbox_value(AT_NTHROW, 3, HG_WIDTH, 60);
set_hitbox_value(AT_NTHROW, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_NTHROW, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_NTHROW, 3, HG_ANGLE, 361);
set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, .5)
set_hitbox_value(AT_NTHROW, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NTHROW, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_NTHROW, 3, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_NTHROW, 3, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    set_hitbox_value(AT_NTHROW, 3, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_NTHROW, 3, HG_KNOCKBACK_SCALING, 1);
}
