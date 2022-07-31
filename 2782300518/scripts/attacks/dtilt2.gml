set_attack_value(45, AG_SPRITE, sprite_get("dtilt2"));
set_attack_value(45, AG_NUM_WINDOWS, 7);
set_attack_value(45, AG_HURTBOX_SPRITE, sprite_get("dtilt2_hurt"));

set_window_value(45, 1, AG_WINDOW_LENGTH, 6);
set_window_value(45, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(45, 2, AG_WINDOW_LENGTH, 6);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(45, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(45, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(45, 2, AG_WINDOW_SFX, sound_get("claw4"));

set_window_value(45, 3, AG_WINDOW_LENGTH, 17);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(45, 4, AG_WINDOW_LENGTH, 6);
set_window_value(45, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(45, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(45, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(45, 4, AG_WINDOW_SFX, sound_get("claw4"));

set_window_value(45, 5, AG_WINDOW_LENGTH, 17);
set_window_value(45, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(45, 6, AG_WINDOW_LENGTH, 6);
set_window_value(45, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(45, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(45, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(45, 6, AG_WINDOW_SFX, sound_get("claw4"));
set_window_value(45, 6, AG_WINDOW_SFX_FRAME, 3);

set_window_value(45, 7, AG_WINDOW_LENGTH, 17);
set_window_value(45, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(45, 7, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(45, 3);

set_hitbox_value(45, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(45, 1, HG_WINDOW, 2);
set_hitbox_value(45, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(45, 1, HG_LIFETIME, 6);
set_hitbox_value(45, 1, HG_HITBOX_X, 33);
set_hitbox_value(45, 1, HG_HITBOX_Y, -24);
set_hitbox_value(45, 1, HG_WIDTH, 76);
set_hitbox_value(45, 1, HG_HEIGHT, 76);
set_hitbox_value(45, 1, HG_PRIORITY, 2);
set_hitbox_value(45, 1, HG_DAMAGE, 3);
set_hitbox_value(45, 1, HG_ANGLE, 361);
set_hitbox_value(45, 1, HG_TECHABLE, 1);
set_hitbox_value(45, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(45, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(45, 1, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(45, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(45, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(45, 2, HG_WINDOW, 4);
set_hitbox_value(45, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(45, 2, HG_LIFETIME, 6);
set_hitbox_value(45, 2, HG_HITBOX_X, 33);
set_hitbox_value(45, 2, HG_HITBOX_Y, -24);
set_hitbox_value(45, 2, HG_WIDTH, 76);
set_hitbox_value(45, 2, HG_HEIGHT, 76);
set_hitbox_value(45, 2, HG_PRIORITY, 2);
set_hitbox_value(45, 2, HG_DAMAGE, 3);
set_hitbox_value(45, 2, HG_ANGLE, 361);
set_hitbox_value(45, 2, HG_TECHABLE, 1);
set_hitbox_value(45, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(45, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(45, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(45, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(45, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(45, 3, HG_WINDOW, 6);
set_hitbox_value(45, 3, HG_LIFETIME, 6);
set_hitbox_value(45, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(45, 3, HG_HITBOX_X, 33);
set_hitbox_value(45, 3, HG_HITBOX_Y, -24);
set_hitbox_value(45, 3, HG_WIDTH, 76);
set_hitbox_value(45, 3, HG_HEIGHT, 76);
set_hitbox_value(45, 3, HG_PRIORITY, 2);
set_hitbox_value(45, 3, HG_DAMAGE, 3);
set_hitbox_value(45, 3, HG_ANGLE, 45);
set_hitbox_value(45, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(45, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(45, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(45, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(45, 3, HG_HITBOX_GROUP, 1);


if has_rune ("O")
{
    set_hitbox_value(45, 3, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(45, 3, HG_KNOCKBACK_SCALING, 1)
}