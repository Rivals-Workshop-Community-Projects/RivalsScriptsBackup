set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 7);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, sound_get("claw1"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_SFX, sound_get("jab1"));

set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UTILT, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_SFX, sound_get("claw1"));

set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 20);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_UTILT, 3);

set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -47);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 74);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 1, HG_HITSTUN_MULTIPLIER, 1.5)
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_UTILT, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 29);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 58);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_UTILT, 2, HG_HITSTUN_MULTIPLIER, 1.5)
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 6);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -47);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 64);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 74);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .2)
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, hit_small);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_weak1"));

if has_rune ("O")
{
    set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, 1);
}
