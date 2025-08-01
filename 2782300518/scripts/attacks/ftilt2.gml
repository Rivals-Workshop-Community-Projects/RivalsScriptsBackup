#macro atk AT_FTHROW
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("ftilt2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("ftilt2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "FTilt2 (Claw Swipe)");

win(atk, 1, AG_WINDOW_LENGTH, 8);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("claw2"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 7);

win(atk, 2, AG_WINDOW_LENGTH, 3);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
win(atk, 2, AG_WINDOW_HSPEED, 6);

win(atk, 3, AG_WINDOW_LENGTH, 11);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 1);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_GROUP, -1);
hv(atk, 1, HG_HITBOX_X, 40);
hv(atk, 1, HG_HITBOX_Y, -42);
hv(atk, 1, HG_WIDTH, 70);
hv(atk, 1, HG_HEIGHT, 48);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 8);
hv(atk, 1, HG_ANGLE, 361);
hv(atk, 1, HG_ANGLE_FLIPPER, 6);
hv(atk, 1, HG_BASE_KNOCKBACK, 7);
hv(atk, 1, HG_KNOCKBACK_SCALING, .65)
hv(atk, 1, HG_BASE_HITPAUSE, 7);
hv(atk, 1, HG_HITPAUSE_SCALING, .65);
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_HIT_SFX, sound_get("hit"));


if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
}