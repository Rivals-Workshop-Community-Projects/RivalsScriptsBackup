#macro atk AT_NSPECIAL_2
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_SPRITE, sprite_get("nspecial2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("nspecial2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "NSpecial2 (Bike Fu Wild Kick)");
av(atk, AG_MUNO_ATTACK_MISC, "Lasts for as long as the pop up meter is active as long as Special is held down. Can be jump cancelled on hit.");

win(atk, 1, AG_WINDOW_TYPE, 1);
win(atk, 1, AG_WINDOW_LENGTH, 13);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("wild_kick"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 7);

win(atk, 2, AG_WINDOW_TYPE, 9);
win(atk, 2, AG_WINDOW_LENGTH, 24);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 8);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 3, AG_WINDOW_TYPE, 1);
win(atk, 3, AG_WINDOW_LENGTH, 14);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 12);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_WINDOW_CREATION_FRAME, 0);
hv(atk, 1, HG_HITBOX_GROUP, -1);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_Y, -52);
hv(atk, 1, HG_HITBOX_X, 62);
hv(atk, 1, HG_WIDTH, 38);
hv(atk, 1, HG_HEIGHT, 80);
hv(atk, 1, HG_PRIORITY, 5);
hv(atk, 1, HG_DAMAGE, 1);
hv(atk, 1, HG_ANGLE, 361);
hv(atk, 1, HG_ANGLE_FLIPPER, 9);
hv(atk, 1, HG_BASE_KNOCKBACK, 2);
hv(atk, 1, HG_VISUAL_EFFECT, hit_small);
hv(atk, 1, HG_BASE_HITPAUSE, 1);
//hv(atk, 1, HG_HITSTUN_MULTIPLIER, 1.5);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_light"));
hv(atk, 1, HG_IGNORES_PROJECTILES, 1);

hv(atk, 2, HG_HITBOX_TYPE, 1);
//hv(AT_NSPECIAL, 2, HG_WINDOW, 2);
//hv(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
hv(atk, 2, HG_HITBOX_GROUP, -1);
hv(atk, 2, HG_LIFETIME, 3);
hv(atk, 2, HG_HITBOX_Y, -52);
hv(atk, 2, HG_HITBOX_X, 62);
hv(atk, 2, HG_WIDTH, 38);
hv(atk, 2, HG_HEIGHT, 80);
hv(atk, 2, HG_PRIORITY, 5);
hv(atk, 2, HG_DAMAGE, 1);
hv(atk, 2, HG_ANGLE, 361);
hv(atk, 2, HG_BASE_KNOCKBACK, 8);
hv(atk, 2, HG_KNOCKBACK_SCALING, .2);
hv(atk, 2, HG_BASE_HITPAUSE, 8);
hv(atk, 2, HG_HITPAUSE_SCALING, .65);
hv(atk, 2, HG_HIT_LOCKOUT, 10);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));
hv(atk, 2, HG_IGNORES_PROJECTILES, 1);

if has_rune ("O")
{
    hv(atk, 2, HG_BASE_KNOCKBACK, 12);
    hv(atk, 2, HG_KNOCKBACK_SCALING, 1);
}