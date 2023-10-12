set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, sound_get ("rolling"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 12);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED, 18);
set_window_value(AT_DAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get ("sfx_frog_nspecial_shove"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get ("bubble_bouncing"));
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED, -9.5);
set_window_value(AT_DAIR, 4, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 15);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, sound_get("hit_heavy"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, hit_large);

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 37);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 50);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, hit_large);

if has_rune ("O")
{
    set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 1)
    set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 1)
}