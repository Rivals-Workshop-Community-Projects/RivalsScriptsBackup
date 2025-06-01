#macro atk AT_FSPECIAL_2
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_OFF_LEDGE, 0);
av(atk, AG_SPRITE, sprite_get("fspecial2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "FSpecial2 (Nitro Boost)");
av(atk, AG_MUNO_ATTACK_MISC, "Can attack, jump, shield and strong cancel on hit or after 24 active frames.");

win(atk, 1, AG_WINDOW_TYPE, 1);
win(atk, 1, AG_WINDOW_LENGTH, 18);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 6);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("motorbike_start"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 14);

win(atk, 2, AG_WINDOW_TYPE, 1);
win(atk, 2, AG_WINDOW_LENGTH, 14);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 5);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 6);

win(atk, 3, AG_WINDOW_TYPE, 1);
win(atk, 3, AG_WINDOW_LENGTH, 6);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(atk, 1);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_SHAPE, 2);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 14);
hv(atk, 1, HG_HITBOX_Y, -20);
hv(atk, 1, HG_HITBOX_X, 16);
hv(atk, 1, HG_WIDTH, 60);
hv(atk, 1, HG_HEIGHT, 50);
hv(atk, 1, HG_PRIORITY, 6);
hv(atk, 1, HG_DAMAGE, 10);
hv(atk, 1, HG_ANGLE, 361);
hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_FINAL_BASE_KNOCKBACK, 6);
hv(atk, 1, HG_BASE_HITPAUSE, 9);
hv(atk, 1, HG_KNOCKBACK_SCALING, 0.95);
hv(atk, 1, HG_HITPAUSE_SCALING, 0.8);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
hv(atk, 1, HG_IGNORES_PROJECTILES, 1);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_FINAL_BASE_KNOCKBACK, 10);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
}
