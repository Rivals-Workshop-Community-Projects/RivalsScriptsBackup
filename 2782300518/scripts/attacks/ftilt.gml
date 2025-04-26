set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 9);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));
set_attack_value(AT_FTILT, AG_MUNO_ATTACK_NAME, "FTilt (Claw Combo)");
set_attack_value(AT_FTILT, AG_MUNO_ATTACK_MISC, "Cancels into Hit 2 on frame 13 and Hit 3 on frame 32. Can be cancelled into Jab, UTilt and DTilt on frames 13 and 32 provided this and the others haven't been cancelled twice before. Maximum 7 hit combo.");

set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("claw2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 6);

set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX, sound_get("claw2"));
set_window_value(AT_FTILT, 4, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_HSPEED, 6);

set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FTILT, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_HSPEED, 0);

set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, sound_get("claw2"));
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTILT, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_HSPEED, 8);

set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_FTILT, 9, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_HSPEED, 0);

set_num_hitboxes(AT_FTILT, 3);

set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_FTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("hit_light"));
set_hitbox_value(AT_FTILT, 1, HG_MUNO_HITBOX_MISC_ADD, "Becomes techable if the move is cancelled into.");


set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("hit_light"));

set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 46);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 70);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 40);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .5)
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 1);
}

