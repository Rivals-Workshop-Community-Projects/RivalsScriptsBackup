#macro atk AT_NTHROW
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("jab2"));
av(atk, AG_NUM_WINDOWS, 9);
av(atk, AG_HURTBOX_SPRITE, sprite_get("jab2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "Jab2 (Claw Combo)");
av(atk, AG_NO_PARRY_STUN, 1);
av(atk, AG_MUNO_ATTACK_MISC, "Cancels into Hit 2 on frame 13 and Hit 3 on frame 32.");


win(atk, 1, AG_WINDOW_LENGTH, 4);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 1, AG_WINDOW_HSPEED, hsp);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("claw3"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 3);

win(atk, 2, AG_WINDOW_LENGTH, 2);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
win(atk, 2, AG_WINDOW_HSPEED, hsp + 1);

win(atk, 3, AG_WINDOW_LENGTH, 15);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 2);
win(atk, 3, AG_WINDOW_HSPEED, hsp);
win(atk, 3, AG_WINDOW_CANCEL_TYPE, 1);
win(atk, 3, AG_WINDOW_CANCEL_FRAME, 4);

win(atk, 4, AG_WINDOW_LENGTH, 4);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
win(atk, 4, AG_WINDOW_HSPEED, hsp);
win(atk, 4, AG_WINDOW_HAS_SFX, 1);
win(atk, 4, AG_WINDOW_SFX, sound_get("claw3"));
win(atk, 4, AG_WINDOW_SFX_FRAME, 3);

win(atk, 5, AG_WINDOW_LENGTH, 2);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);
win(atk, 5, AG_WINDOW_HSPEED, hsp + 1);

win(atk, 6, AG_WINDOW_LENGTH, 15);
win(atk, 6, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 6, AG_WINDOW_ANIM_FRAME_START, 7);
win(atk, 6, AG_WINDOW_HSPEED, hsp);
win(atk, 6, AG_WINDOW_CANCEL_TYPE, 1);
win(atk, 6, AG_WINDOW_CANCEL_FRAME, 4);

win(atk, 7, AG_WINDOW_LENGTH, 4);
win(atk, 7, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 7, AG_WINDOW_ANIM_FRAME_START, 10);
win(atk, 7, AG_WINDOW_HSPEED, hsp);
win(atk, 7, AG_WINDOW_HAS_SFX, 1);
win(atk, 7, AG_WINDOW_SFX, sound_get("claw3"));
win(atk, 7, AG_WINDOW_SFX_FRAME, 3);

win(atk, 8, AG_WINDOW_LENGTH, 2);
win(atk, 8, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 8, AG_WINDOW_ANIM_FRAME_START, 11);
win(atk, 8, AG_WINDOW_HSPEED, hsp + 1);

win(atk, 9, AG_WINDOW_LENGTH, 15);
win(atk, 9, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 9, AG_WINDOW_ANIM_FRAME_START, 12);
win(atk, 9, AG_WINDOW_HSPEED, hsp);

set_num_hitboxes(atk, 3);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 2);
hv(atk, 1, HG_HITBOX_X, 42);
hv(atk, 1, HG_HITBOX_Y, -38);
hv(atk, 1, HG_WIDTH, 60);
hv(atk, 1, HG_HEIGHT, 62);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 2);
hv(atk, 1, HG_ANGLE, 75);
hv(atk, 1, HG_BASE_KNOCKBACK, 3);
hv(atk, 1, HG_BASE_HITPAUSE, 4);
hv(atk, 1, HG_HITSTUN_MULTIPLIER, 1.5);
hv(atk, 1, HG_VISUAL_EFFECT, hit_small);
hv(atk, 1, HG_FORCE_FLINCH, 1);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_light"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 5);
hv(atk, 2, HG_HITBOX_GROUP, 2);
hv(atk, 2, HG_LIFETIME, 2);
hv(atk, 2, HG_HITBOX_X, 38);
hv(atk, 2, HG_HITBOX_Y, -40);
hv(atk, 2, HG_WIDTH, 66);
hv(atk, 2, HG_HEIGHT, 56);
hv(atk, 2, HG_PRIORITY, 2);
hv(atk, 2, HG_DAMAGE, 2);
hv(atk, 2, HG_ANGLE, 75);
hv(atk, 2, HG_BASE_KNOCKBACK, 3);
hv(atk, 2, HG_BASE_HITPAUSE, 4);
hv(atk, 2, HG_HITSTUN_MULTIPLIER, 1.5);
hv(atk, 2, HG_VISUAL_EFFECT, hit_small);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_light"));

hv(atk, 3, HG_HITBOX_TYPE, 1);
hv(atk, 3, HG_WINDOW, 8);
hv(atk, 3, HG_LIFETIME, 2);
hv(atk, 3, HG_HITBOX_GROUP, 3);
hv(atk, 3, HG_HITBOX_X, 42);
hv(atk, 3, HG_HITBOX_Y, -48);
hv(atk, 3, HG_WIDTH, 60);
hv(atk, 3, HG_HEIGHT, 48);
hv(atk, 3, HG_PRIORITY, 2);
hv(atk, 3, HG_DAMAGE, 4);
hv(atk, 3, HG_ANGLE, 361);
hv(atk, 3, HG_BASE_KNOCKBACK, 8);
hv(atk, 3, HG_KNOCKBACK_SCALING, .5)
hv(atk, 3, HG_BASE_HITPAUSE, 8);
hv(atk, 3, HG_HITPAUSE_SCALING, .5);
hv(atk, 3, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 3, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    hv(atk, 3, HG_BASE_KNOCKBACK, 12);
    hv(atk, 3, HG_KNOCKBACK_SCALING, 1);
}
