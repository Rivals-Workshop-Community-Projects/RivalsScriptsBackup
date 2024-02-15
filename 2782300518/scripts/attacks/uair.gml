set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 6); //4
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_NAME, "UAir (High Kick)");
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_MISC, "This attack has a vertical boost of speed once per airtime. The boost is reset when you touch the ground. Using this move a second time in the air will not result in vertical speed.");

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 5); //6
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("jab2"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 4); //6
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -6); //-5

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 12); //8
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1)

set_num_hitboxes(AT_UAIR, 2);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, sound_get("hit"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 38);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 58);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, hit_medium);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 1);
}