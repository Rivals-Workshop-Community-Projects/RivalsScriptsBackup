set_attack_value(AT_DTILT, AG_SPRITE, sprite_get("dtilt"));
set_attack_value(AT_DTILT, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DTILT, AG_HURTBOX_SPRITE, sprite_get("dtilt_hurt"));
set_attack_value(AT_DTILT, AG_MUNO_ATTACK_NAME, "Dtilt (Claw Combo)");
set_attack_value(AT_DTILT, AG_MUNO_ATTACK_MISC, "Cancels into Hit 2 on frame 10 and Hit 3 on frame 30. Can be cancelled into Jab, FTilt and UTilt on frames 10 and 30 provided this and the others haven't been cancelled twice before. Maximum 7 hit combo.");

set_window_value(AT_DTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX, sound_get("claw4"));
set_window_value(AT_DTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DTILT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX, sound_get("claw4"));
set_window_value(AT_DTILT, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_DTILT, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_DTILT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DTILT, 7, AG_WINDOW_SFX, sound_get("claw4"));
set_window_value(AT_DTILT, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_DTILT, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DTILT, 8, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_DTILT, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DTILT, 9, AG_WINDOW_ANIM_FRAME_START, 12);

set_num_hitboxes(AT_DTILT, 3);

set_hitbox_value(AT_DTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_DTILT, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 1, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_DTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DTILT, 1, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_DTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DTILT, 1, HG_HIT_SFX, sound_get("hit_light"));
set_hitbox_value(AT_DTILT, 1, HG_MUNO_HITBOX_MISC_ADD, "Becomes techable if the move is cancelled into.");

set_hitbox_value(AT_DTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_DTILT, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 2, HG_WIDTH, 66);
set_hitbox_value(AT_DTILT, 2, HG_HEIGHT, 54);
set_hitbox_value(AT_DTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DTILT, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DTILT, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_DTILT, 2, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_DTILT, 2, HG_HIT_SFX, sound_get("hit_light"));

set_hitbox_value(AT_DTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DTILT, 3, HG_WINDOW, 8);
set_hitbox_value(AT_DTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_X, 38);
set_hitbox_value(AT_DTILT, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DTILT, 3, HG_WIDTH, 74);
set_hitbox_value(AT_DTILT, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_DTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DTILT, 3, HG_ANGLE, 45);
set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DTILT, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DTILT, 3, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_DTILT, 3, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    set_hitbox_value(AT_DTILT, 3, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_DTILT, 3, HG_KNOCKBACK_SCALING, 1)    
}
