#macro atk AT_DSTRONG
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("dstrong"));
av(atk, AG_NUM_WINDOWS, 6);
av(atk, AG_STRONG_CHARGE_WINDOW, 2);
av(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DStrong (Splits Kick)");

win(atk, 1, AG_WINDOW_LENGTH, 5);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);

win(atk, 2, AG_WINDOW_LENGTH, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);

win(atk, 3, AG_WINDOW_LENGTH, 5);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
win(atk, 3, AG_WINDOW_HAS_SFX, 1);
win(atk, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
win(atk, 3, AG_WINDOW_SFX_FRAME, 4);

win(atk, 4, AG_WINDOW_LENGTH, 3);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 5, AG_WINDOW_LENGTH, 8);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 5);
win(atk, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

win(atk, 6, AG_WINDOW_LENGTH, 12);
win(atk, 6, AG_WINDOW_ANIM_FRAMES, 6);
win(atk, 6, AG_WINDOW_ANIM_FRAME_START, 9);
win(atk, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 4);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_X, -21);
hv(atk, 1, HG_HITBOX_Y, -8);
hv(atk, 1, HG_WIDTH, 46);
hv(atk, 1, HG_HEIGHT, 20);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 10);
hv(atk, 1, HG_SHAPE, 2);
hv(atk, 1, HG_ANGLE, 130);
hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_KNOCKBACK_SCALING, .9);
hv(atk, 1, HG_BASE_HITPAUSE, 8);
hv(atk, 1, HG_HITPAUSE_SCALING, .9);
hv(atk, 1, HG_HIT_LOCKOUT, 10);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 4);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_LIFETIME, 3);
hv(atk, 2, HG_HITBOX_X, 28);
hv(atk, 2, HG_HITBOX_Y, -8);
hv(atk, 2, HG_WIDTH, 44);
hv(atk, 2, HG_HEIGHT, 20);
hv(atk, 2, HG_PRIORITY, 2);
hv(atk, 2, HG_DAMAGE, 10);
hv(atk, 2, HG_SHAPE, 2);
hv(atk, 2, HG_ANGLE, 50);
hv(atk, 2, HG_BASE_KNOCKBACK, 8);
hv(atk, 2, HG_KNOCKBACK_SCALING, .9);
hv(atk, 2, HG_BASE_HITPAUSE, 8);
hv(atk, 2, HG_HITPAUSE_SCALING, .9);
hv(atk, 2, HG_HIT_LOCKOUT, 10);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
    hv(atk, 2, HG_BASE_KNOCKBACK, 12);
    hv(atk, 2, HG_KNOCKBACK_SCALING, 1);    
}