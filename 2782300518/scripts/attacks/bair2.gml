set_attack_value(39, AG_CATEGORY, 1);
set_attack_value(39, AG_SPRITE, sprite_get("bair2"));
set_attack_value(39, AG_NUM_WINDOWS, 3);
set_attack_value(39, AG_HAS_LANDING_LAG, 1);
set_attack_value(39, AG_LANDING_LAG, 7);
set_attack_value(39, AG_HURTBOX_SPRITE, sprite_get("bair2_hurt"));
//set_attack_value(39, AG_MUNO_ATTACK_NAME, "BAir2");

set_window_value(39, 1, AG_WINDOW_LENGTH, 9);
set_window_value(39, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(39, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(39, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(39, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(39, 2, AG_WINDOW_LENGTH, 4);
set_window_value(39, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(39, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(39, 3, AG_WINDOW_LENGTH, 12);
set_window_value(39, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(39, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(39, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(39, 1);

set_hitbox_value(39, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(39, 1, HG_WINDOW, 2);
set_hitbox_value(39, 1, HG_LIFETIME, 4);
set_hitbox_value(39, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(39, 1, HG_HITBOX_X, -44);
set_hitbox_value(39, 1, HG_HITBOX_Y, -20);
set_hitbox_value(39, 1, HG_WIDTH, 50);
set_hitbox_value(39, 1, HG_HEIGHT, 40);
set_hitbox_value(39, 1, HG_PRIORITY, 2);
set_hitbox_value(39, 1, HG_DAMAGE, 8);
set_hitbox_value(39, 1, HG_ANGLE, 140);
set_hitbox_value(39, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(39, 1, HG_KNOCKBACK_SCALING, .75)
set_hitbox_value(39, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(39, 1, HG_HITPAUSE_SCALING, .8)
set_hitbox_value(39, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(39, 1, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    set_hitbox_value(39, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(39, 1, HG_KNOCKBACK_SCALING, 1);
}