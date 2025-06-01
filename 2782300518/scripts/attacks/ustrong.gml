#macro atk AT_USTRONG
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("ustrong"));
av(atk, AG_NUM_WINDOWS, 7);
av(atk, AG_STRONG_CHARGE_WINDOW, 2);
av(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "UStrong (Handstand)");

win(atk, 1, AG_WINDOW_LENGTH, 9);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);

win(atk, 2, AG_WINDOW_LENGTH, 3);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

win(atk, 3, AG_WINDOW_LENGTH, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 3, AG_WINDOW_HAS_SFX, 1);
win(atk, 3, AG_WINDOW_SFX, sound_get("jab2"));

win(atk, 4, AG_WINDOW_LENGTH, 6);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 5, AG_WINDOW_LENGTH, 6);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);
win(atk, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

win(atk, 6, AG_WINDOW_LENGTH, 10);
win(atk, 6, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 6, AG_WINDOW_ANIM_FRAME_START, 8);
win(atk, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

win(atk, 7, AG_WINDOW_LENGTH, 6);
win(atk, 7, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 7, AG_WINDOW_ANIM_FRAME_START, 9);
win(atk, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_WINDOW, 4);
hv(atk, 1, HG_LIFETIME, 6);
hv(atk, 1, HG_HITBOX_X, 28);
hv(atk, 1, HG_HITBOX_Y, -40);
hv(atk, 1, HG_WIDTH, 38);
hv(atk, 1, HG_HEIGHT, 68);
hv(atk, 1, HG_PRIORITY, 3);
hv(atk, 1, HG_DAMAGE, 10);
hv(atk, 1, HG_ANGLE, 90);
hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_KNOCKBACK_SCALING, 1.1);
hv(atk, 1, HG_BASE_HITPAUSE, 8);
hv(atk, 1, HG_HITPAUSE_SCALING, 1);
hv(atk, 1, HG_HIT_LOCKOUT, 10);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_WINDOW, 4);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 3);
hv(atk, 2, HG_LIFETIME, 3);
hv(atk, 2, HG_HITBOX_X, 8);
hv(atk, 2, HG_HITBOX_Y, -74);
hv(atk, 2, HG_WIDTH, 64);
hv(atk, 2, HG_HEIGHT, 46);
hv(atk, 2, HG_PRIORITY, 3);
hv(atk, 2, HG_DAMAGE, 10);
hv(atk, 2, HG_ANGLE, 90);
hv(atk, 2, HG_BASE_KNOCKBACK, 8);
hv(atk, 2, HG_KNOCKBACK_SCALING, 1.1);
hv(atk, 2, HG_BASE_HITPAUSE, 8);
hv(atk, 2, HG_HITPAUSE_SCALING, 1);
hv(atk, 2, HG_HIT_LOCKOUT, 10);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 16);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
}