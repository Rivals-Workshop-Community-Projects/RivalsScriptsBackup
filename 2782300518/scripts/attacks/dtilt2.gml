#macro atk AT_DTHROW
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("dtilt2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("dtilt2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DTilt2 (Bike Saw)");

win(atk, 1, AG_WINDOW_LENGTH, 6);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("motorbike_saw"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 5);

win(atk, 2, AG_WINDOW_LENGTH, 12);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
win(atk, 2, AG_WINDOW_HSPEED, 6);

win(atk, 3, AG_WINDOW_LENGTH, 12);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 6);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 4);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 2);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_HITBOX_X, 42);
hv(atk, 1, HG_HITBOX_Y, -16);
hv(atk, 1, HG_WIDTH, 38);
hv(atk, 1, HG_HEIGHT, 38);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 1);
hv(atk, 1, HG_ANGLE, 70);
hv(atk, 1, HG_ANGLE_FLIPPER, 9);
hv(atk, 1, HG_BASE_KNOCKBACK, 4);
hv(atk, 1, HG_BASE_HITPAUSE, 3);
hv(atk, 1, HG_VISUAL_EFFECT, hit_small);
hv(atk, 1, HG_TECHABLE, 1);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_light"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 2);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 3);
hv(atk, 2, HG_LIFETIME, 2);
hv(atk, 2, HG_HITBOX_GROUP, 2);
hv(atk, 2, HG_HITBOX_X, 42);
hv(atk, 2, HG_HITBOX_Y, -16);
hv(atk, 2, HG_WIDTH, 38);
hv(atk, 2, HG_HEIGHT, 38);
hv(atk, 2, HG_PRIORITY, 2);
hv(atk, 2, HG_DAMAGE, 1);
hv(atk, 2, HG_ANGLE, 70);
hv(atk, 2, HG_ANGLE_FLIPPER, 9);
hv(atk, 2, HG_BASE_KNOCKBACK, 4);
hv(atk, 2, HG_BASE_HITPAUSE, 3);
hv(atk, 2, HG_VISUAL_EFFECT, hit_small);
hv(atk, 2, HG_TECHABLE, 1);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_light"));

hv(atk, 3, HG_HITBOX_TYPE, 1);
hv(atk, 3, HG_WINDOW, 2);
hv(atk, 3, HG_WINDOW_CREATION_FRAME, 6);
hv(atk, 3, HG_LIFETIME, 2);
hv(atk, 3, HG_HITBOX_GROUP, 3);
hv(atk, 3, HG_HITBOX_X, 42);
hv(atk, 3, HG_HITBOX_Y, -16);
hv(atk, 3, HG_WIDTH, 38);
hv(atk, 3, HG_HEIGHT, 38);
hv(atk, 3, HG_PRIORITY, 2);
hv(atk, 3, HG_DAMAGE, 1);
hv(atk, 3, HG_ANGLE, 70);
hv(atk, 3, HG_ANGLE_FLIPPER, 9);
hv(atk, 3, HG_BASE_KNOCKBACK, 4);
hv(atk, 3, HG_BASE_HITPAUSE, 3);
hv(atk, 3, HG_VISUAL_EFFECT, hit_small);
hv(atk, 3, HG_TECHABLE, 1);
hv(atk, 3, HG_HIT_SFX, sound_get("hit_light"));

hv(atk, 4, HG_HITBOX_TYPE, 1);
hv(atk, 4, HG_WINDOW, 2);
hv(atk, 4, HG_WINDOW_CREATION_FRAME, 9);
hv(atk, 4, HG_LIFETIME, 3);
hv(atk, 4, HG_HITBOX_GROUP, 4);
hv(atk, 4, HG_HITBOX_X, 42);
hv(atk, 4, HG_HITBOX_Y, -16);
hv(atk, 4, HG_WIDTH, 40);
hv(atk, 4, HG_HEIGHT, 40);
hv(atk, 4, HG_PRIORITY, 2);
hv(atk, 4, HG_DAMAGE, 4);
hv(atk, 4, HG_ANGLE, atk);
hv(atk, 4, HG_BASE_KNOCKBACK, 6);
hv(atk, 4, HG_KNOCKBACK_SCALING, .6);
hv(atk, 4, HG_BASE_HITPAUSE, 7);
hv(atk, 4, HG_HITPAUSE_SCALING, .5);
hv(atk, 4, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 4, HG_HIT_SFX, sound_get("hit"));


if has_rune ("O")
{
    hv(atk, 3, HG_BASE_KNOCKBACK, 12);
    hv(atk, 3, HG_KNOCKBACK_SCALING, 1)
}