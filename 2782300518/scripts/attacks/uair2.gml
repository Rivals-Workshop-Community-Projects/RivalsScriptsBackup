set_attack_value(42, AG_CATEGORY, 1);
set_attack_value(42, AG_SPRITE, sprite_get("uair2"));
set_attack_value(42, AG_NUM_WINDOWS, 3);
set_attack_value(42, AG_HAS_LANDING_LAG, 1);
set_attack_value(42, AG_LANDING_LAG, 6); //4
set_attack_value(42, AG_HURTBOX_SPRITE, sprite_get("uair2_hurt"));
//set_attack_value(42, AG_MUNO_ATTACK_NAME, "UAir2");

set_window_value(42, 1, AG_WINDOW_LENGTH, 7); //10
set_window_value(42, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(42, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(42, 1, AG_WINDOW_SFX, sound_get("jab2"));
set_window_value(42, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(42, 2, AG_WINDOW_LENGTH, 4); //6
set_window_value(42, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(42, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(42, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(42, 2, AG_WINDOW_VSPEED, -5);

set_window_value(42, 3, AG_WINDOW_LENGTH, 12);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(42, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(42, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(42, 2);

set_hitbox_value(42, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(42, 1, HG_WINDOW, 2);
set_hitbox_value(42, 1, HG_LIFETIME, 4); //2
set_hitbox_value(42, 1, HG_HITBOX_X, 36);
set_hitbox_value(42, 1, HG_HITBOX_Y, -48);
set_hitbox_value(42, 1, HG_WIDTH, 64);
set_hitbox_value(42, 1, HG_HEIGHT, 48);
set_hitbox_value(42, 1, HG_PRIORITY, 2);
set_hitbox_value(42, 1, HG_DAMAGE, 7);
set_hitbox_value(42, 1, HG_ANGLE, 80);
set_hitbox_value(42, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(42, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(42, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(42, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(42, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(42, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

set_hitbox_value(42, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(42, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(42, 2, HG_WINDOW, 2);
set_hitbox_value(42, 2, HG_WINDOW_CREATION_FRAME, 2); //3
set_hitbox_value(42, 2, HG_LIFETIME, 2); //3
set_hitbox_value(42, 2, HG_HITBOX_X, 54);
set_hitbox_value(42, 2, HG_HITBOX_Y, -88);
set_hitbox_value(42, 2, HG_WIDTH, 58);
set_hitbox_value(42, 2, HG_HEIGHT, 72);
set_hitbox_value(42, 2, HG_PRIORITY, 2);
set_hitbox_value(42, 2, HG_DAMAGE, 7);
set_hitbox_value(42, 2, HG_ANGLE, 80);
set_hitbox_value(42, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(42, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(42, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(42, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(42, 2, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(42, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

if has_rune ("O")
{
    set_hitbox_value(42, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(42, 1, HG_KNOCKBACK_SCALING, 1);
}