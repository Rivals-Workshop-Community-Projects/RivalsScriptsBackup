#macro atk AT_DSTRONG_2
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("dstrong2"));
av(atk, AG_NUM_WINDOWS, 5);
av(atk, AG_STRONG_CHARGE_WINDOW, 2);
av(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DStrong2 (Bike Spin)");

win(atk, 1, AG_WINDOW_LENGTH, 8);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);

win(atk, 2, AG_WINDOW_LENGTH, 4);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

win(atk, 3, AG_WINDOW_LENGTH, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 3, AG_WINDOW_HAS_SFX, 1);
win(atk, 3, AG_WINDOW_SFX, sound_get("motorbike_spin"));
win(atk, 3, AG_WINDOW_SFX_FRAME, 3);

win(atk, 4, AG_WINDOW_LENGTH, 24);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 12);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 5, AG_WINDOW_LENGTH, 16);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 16);
win(atk, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 4);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 12);
hv(atk, 1, HG_HITBOX_X, 0);
hv(atk, 1, HG_HITBOX_Y, -14);
hv(atk, 1, HG_WIDTH, 108);
hv(atk, 1, HG_HEIGHT, 36);
hv(atk, 1, HG_SHAPE, 2);
hv(atk, 1, HG_PRIORITY, 1);
hv(atk, 1, HG_DAMAGE, 3);
hv(atk, 1, HG_ANGLE, 50);
hv(atk, 1, HG_BASE_KNOCKBACK, 4);
hv(atk, 1, HG_BASE_HITPAUSE, 4);
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_HIT_SFX, sound_get("hit"));
hv(atk, 1, HG_IGNORES_PROJECTILES, 1);
hv(atk, 1, HG_ANGLE_FLIPPER, 9);

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 4);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 12);
hv(atk, 2, HG_HITBOX_GROUP, 2);
hv(atk, 2, HG_LIFETIME, 12);
hv(atk, 2, HG_HITBOX_X, 0);
hv(atk, 2, HG_HITBOX_Y, -14);
hv(atk, 2, HG_WIDTH, 108);
hv(atk, 2, HG_HEIGHT, 36);
hv(atk, 2, HG_SHAPE, 2);
hv(atk, 2, HG_PRIORITY, 1);
hv(atk, 2, HG_DAMAGE, 7);
hv(atk, 2, HG_ANGLE, 50);
hv(atk, 2, HG_BASE_KNOCKBACK, 8);
hv(atk, 2, HG_KNOCKBACK_SCALING, 1);
hv(atk, 2, HG_BASE_HITPAUSE, 10);
hv(atk, 2, HG_HITPAUSE_SCALING, .7);
hv(atk, 2, HG_HIT_LOCKOUT, 10);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));
hv(atk, 2, HG_IGNORES_PROJECTILES, 1);
hv(atk, 2, HG_ANGLE_FLIPPER, 3);

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 16);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1)
}