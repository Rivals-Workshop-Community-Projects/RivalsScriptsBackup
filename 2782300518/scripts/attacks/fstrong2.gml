#macro atk AT_FSTRONG_2
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("fstrong2"));
av(atk, AG_NUM_WINDOWS, 5);
av(atk, AG_STRONG_CHARGE_WINDOW, 2);
av(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "FStrong2 (Rev Swipe)");

win(atk, 1, AG_WINDOW_LENGTH, 12);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);

win(atk, 2, AG_WINDOW_LENGTH, 6);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 3, AG_WINDOW_LENGTH, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
win(atk, 3, AG_WINDOW_HAS_SFX, 1);
win(atk, 3, AG_WINDOW_SFX, sound_get("motorbike_uppercut"));
win(atk, 3, AG_WINDOW_SFX_FRAME, 2);
win(atk, 3, AG_WINDOW_HSPEED, 6);

win(atk, 4, AG_WINDOW_LENGTH, 6);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 7);

win(atk, 5, AG_WINDOW_LENGTH, 21);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 7);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 9);
win(atk, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 4);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_X, 32);
hv(atk, 1, HG_HITBOX_Y, -48);
hv(atk, 1, HG_WIDTH, 56);
hv(atk, 1, HG_HEIGHT, 86);
hv(atk, 1, HG_PRIORITY, 1);
hv(atk, 1, HG_DAMAGE, 12);
hv(atk, 1, HG_ANGLE, 40);
hv(atk, 1, HG_HIT_LOCKOUT, 10);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
hv(atk, 1, HG_BASE_HITPAUSE, 10);
hv(atk, 1, HG_HITPAUSE_SCALING, .8);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 4);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 3);
hv(atk, 2, HG_LIFETIME, 3);
hv(atk, 2, HG_HITBOX_X, 32);
hv(atk, 2, HG_HITBOX_Y, -60);
hv(atk, 2, HG_WIDTH, 66);
hv(atk, 2, HG_HEIGHT, 96);
hv(atk, 2, HG_PRIORITY, 1);
hv(atk, 2, HG_DAMAGE, 10);
hv(atk, 2, HG_ANGLE, 55);
hv(atk, 2, HG_HIT_LOCKOUT, 10);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_BASE_KNOCKBACK, 8);
hv(atk, 2, HG_KNOCKBACK_SCALING, 1);
hv(atk, 2, HG_BASE_HITPAUSE, 10);
hv(atk, 2, HG_HITPAUSE_SCALING, .8);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 16);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1.2);
    hv(atk, 2, HG_BASE_KNOCKBACK, 16);
    hv(atk, 2, HG_KNOCKBACK_SCALING, 1.2);
}