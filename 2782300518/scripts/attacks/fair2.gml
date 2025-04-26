set_attack_value(43, AG_CATEGORY, 1);
set_attack_value(43, AG_SPRITE, sprite_get("fair2"));
set_attack_value(43, AG_NUM_WINDOWS, 5);
set_attack_value(43, AG_HAS_LANDING_LAG, 1);
set_attack_value(43, AG_LANDING_LAG, 11);
set_attack_value(43, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
set_attack_value(43, AG_MUNO_ATTACK_NAME, "FAir2 (Bike Swing)");

set_window_value(43, 1, AG_WINDOW_LENGTH, 14);
set_window_value(43, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(43, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(43, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(43, 1, AG_WINDOW_SFX_FRAME, 13);

set_window_value(43, 2, AG_WINDOW_LENGTH, 3);
set_window_value(43, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(43, 3, AG_WINDOW_LENGTH, 2);
set_window_value(43, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(43, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(43, 4, AG_WINDOW_LENGTH, 6);
set_window_value(43, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(43, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(43, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(43, 5, AG_WINDOW_LENGTH, 6);
set_window_value(43, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(43, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(43, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(43, 2);

set_hitbox_value(43, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(43, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(43, 1, HG_WINDOW, 2);
set_hitbox_value(43, 1, HG_LIFETIME, 3);
set_hitbox_value(43, 1, HG_HITBOX_X, 24);
set_hitbox_value(43, 1, HG_HITBOX_Y, -54);
set_hitbox_value(43, 1, HG_WIDTH, 30);
set_hitbox_value(43, 1, HG_HEIGHT, 100);
set_hitbox_value(43, 1, HG_PRIORITY, 3);
set_hitbox_value(43, 1, HG_DAMAGE, 6);
set_hitbox_value(43, 1, HG_ANGLE, 361);
set_hitbox_value(43, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(43, 1, HG_KNOCKBACK_SCALING, .75)
set_hitbox_value(43, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(43, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(43, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(43, 1, HG_HIT_SFX, sound_get("hit"));
set_hitbox_value(43, 1, HG_MUNO_HITBOX_MISC_ADD, "Sourspot");

set_hitbox_value(43, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(43, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(43, 2, HG_WINDOW, 2);
set_hitbox_value(43, 2, HG_LIFETIME, 3);
set_hitbox_value(43, 2, HG_HITBOX_X, 58);
set_hitbox_value(43, 2, HG_HITBOX_Y, -54);
set_hitbox_value(43, 2, HG_WIDTH, 70);
set_hitbox_value(43, 2, HG_HEIGHT, 134);
set_hitbox_value(43, 2, HG_PRIORITY, 2);
set_hitbox_value(43, 2, HG_DAMAGE, 10);
set_hitbox_value(43, 2, HG_ANGLE, 361);
set_hitbox_value(43, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(43, 2, HG_KNOCKBACK_SCALING, .75)
set_hitbox_value(43, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(43, 2, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(43, 2, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(43, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    set_hitbox_value(43, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(43, 1, HG_KNOCKBACK_SCALING, 1)
    set_hitbox_value(43, 2, HG_BASE_KNOCKBACK, 16);
    set_hitbox_value(43, 2, HG_KNOCKBACK_SCALING, 1)   
}