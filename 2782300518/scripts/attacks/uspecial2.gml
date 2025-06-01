#macro atk AT_USPECIAL_2
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_SPRITE, sprite_get("uspecial2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_USES_CUSTOM_GRAVITY, 1);
av(atk, AG_MUNO_ATTACK_NAME, "USpecial2 (Rising Wild Claw)");
av(atk, AG_MUNO_ATTACK_MISC, "Can wall jump cancel after 12 frames.");

win(atk, 1, AG_WINDOW_LENGTH, 9);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
win(atk, 1, AG_WINDOW_VSPEED, 0);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("wild_claw2"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 5);

win(atk, 2, AG_WINDOW_LENGTH, 6);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);
win(atk, 2, AG_WINDOW_VSPEED_TYPE, 2);
win(atk, 2, AG_WINDOW_VSPEED, -7);

win(atk, 3, AG_WINDOW_LENGTH, 15);
win(atk, 3, AG_WINDOW_TYPE, 7);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 5);
win(atk, 3, AG_WINDOW_CUSTOM_GRAVITY, .5);


set_num_hitboxes(atk, 1);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_X, 36);
hv(atk, 1, HG_HITBOX_Y, -44);
hv(atk, 1, HG_WIDTH, 64);
hv(atk, 1, HG_HEIGHT, 66);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 9);
hv(atk, 1, HG_ANGLE, 90);
hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_KNOCKBACK_SCALING, .8);
hv(atk, 1, HG_BASE_HITPAUSE, 9);
hv(atk, 1, HG_HITPAUSE_SCALING, .9);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune("G")
{
    win(atk, 3, AG_WINDOW_TYPE, 0);
}

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
}