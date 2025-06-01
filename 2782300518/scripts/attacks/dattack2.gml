#macro atk 3
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("dattack2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_AIR_SPRITE, sprite_get("dattack2"));
av(atk, AG_HURTBOX_SPRITE, sprite_get("dattack2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DAttack2 (Bike Roll)");

win(atk, 1, AG_WINDOW_LENGTH, 8);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("rolling"));

win(atk, 2, AG_WINDOW_LENGTH, 8);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

win(atk, 3, AG_WINDOW_LENGTH, 12);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(atk, 1);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 8);
hv(atk, 1, HG_HITBOX_X, 0);
hv(atk, 1, HG_HITBOX_Y, -38);
hv(atk, 1, HG_WIDTH, 84);
hv(atk, 1, HG_HEIGHT, 84);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 6);
hv(atk, 1, HG_ANGLE, 60);
hv(atk, 1, HG_BASE_KNOCKBACK, 9);
hv(atk, 1, HG_KNOCKBACK_SCALING, 0.5);
hv(atk, 1, HG_BASE_HITPAUSE, 7);
hv(atk, 1, HG_HITPAUSE_SCALING, .3);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
hv(atk, 1, HG_HITSTUN_MULTIPLIER, .55);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1)
}