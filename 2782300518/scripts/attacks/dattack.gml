#macro atk AT_DATTACK
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_SPRITE, sprite_get("dattack"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_AIR_SPRITE, sprite_get("dattack"));
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DAttack (Cat Roll)");


win(atk, 1, AG_WINDOW_LENGTH, 7);
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

hv(atk, 1, HG_PARENT_HITBOX, 1);
hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 8);
hv(atk, 1, HG_HITBOX_X, 0);
hv(atk, 1, HG_HITBOX_Y, -28);
hv(atk, 1, HG_WIDTH, 68);
hv(atk, 1, HG_HEIGHT, 68);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 5);
hv(atk, 1, HG_ANGLE, 60);
hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_KNOCKBACK_SCALING, 0.35);
hv(atk, 1, HG_BASE_HITPAUSE, 7);
hv(atk, 1, HG_HITPAUSE_SCALING, .35);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
hv(atk, 1, HG_HITSTUN_MULTIPLIER, .85);
//hv(atk, 1, HG_ANGLE_FLIPPER, 10);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));
hv(atk, 1, HG_MUNO_HITBOX_MISC_ADD, "Can be attack cancelled. Can be jump cancelled.");


if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1)
}