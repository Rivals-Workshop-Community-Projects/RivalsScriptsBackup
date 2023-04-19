set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get ("jab2"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 80);
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 80);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 18);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 1);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, hit_large);

if has_rune ("O")
{
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1)
}