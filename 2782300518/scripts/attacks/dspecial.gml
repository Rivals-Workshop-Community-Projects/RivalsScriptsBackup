#macro atk AT_DSPECIAL
#macro av set_attack_value
#macro win set_window_value

av(atk, AG_SPRITE, sprite_get("dspecial"));
av(atk, AG_NUM_WINDOWS, 2);
av(atk, AG_HURTBOX_SPRITE, asset_get("dspecial_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DSpecial (Motorbike)");
av(atk, AG_MUNO_ATTACK_MISC, "Changes stance to motorbike.");

win(atk, 1, AG_WINDOW_LENGTH, 16);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 8);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("motorbike_start"));

win(atk, 2, AG_WINDOW_LENGTH, 16);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 8);

/*set_num_hitboxes(atk, 2)

set_hitbox_value(atk, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 1, HG_WINDOW, 3);
set_hitbox_value(atk, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, 1, HG_LIFETIME, 2);
set_hitbox_value(atk, 1, HG_HITBOX_X, 14);
set_hitbox_value(atk, 1, HG_HITBOX_Y, -20);
set_hitbox_value(atk, 1, HG_WIDTH, 60);
set_hitbox_value(atk, 1, HG_HEIGHT, 40);
set_hitbox_value(atk, 1, HG_PRIORITY, 1);
set_hitbox_value(atk, 1, HG_DAMAGE, 3);
set_hitbox_value(atk, 1, HG_ANGLE, 60);
set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(atk, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(atk, 1, HG_HIT_LOCKOUT, 15);
set_hitbox_value(atk, 1, HG_VISUAL_EFFECT, hit_small)
set_hitbox_value(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(atk, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(atk, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, 2, HG_WINDOW, 4);
set_hitbox_value(atk, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, 2, HG_LIFETIME, 2);
set_hitbox_value(atk, 2, HG_HITBOX_X, -2);
set_hitbox_value(atk, 2, HG_HITBOX_Y, -38);
set_hitbox_value(atk, 2, HG_WIDTH, 94);
set_hitbox_value(atk, 2, HG_HEIGHT, 94);
set_hitbox_value(atk, 2, HG_PRIORITY, 1);
set_hitbox_value(atk, 2, HG_DAMAGE, 1);
set_hitbox_value(atk, 2, HG_ANGLE, 60);
set_hitbox_value(atk, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(atk, 2, HG_HIT_LOCKOUT, 6);
set_hitbox_value(atk, 2, HG_VISUAL_EFFECT, hit_small)
set_hitbox_value(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(atk, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(atk, 2, HG_IGNORES_PROJECTILES, 1);

if has_rune ("O")
{
    set_hitbox_value(atk, 1, HG_BASE_KNOCKBACK, 12);
    set_hitbox_value(atk, 1, HG_KNOCKBACK_SCALING, 1)
}