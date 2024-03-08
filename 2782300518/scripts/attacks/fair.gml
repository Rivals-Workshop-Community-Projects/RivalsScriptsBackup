set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_NAME, "FAir (Low Kick)");
set_attack_value(AT_FAIR, AG_MUNO_ATTACK_MISC, "Can be walljump cancelled frame 9 onwards");

set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("jab1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 7);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, .5);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.35);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 2);

set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .25)
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("hit"));

set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 10);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 18);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .75)
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, hit_large);
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, 1)
    set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 16);
    set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, 1)   
}