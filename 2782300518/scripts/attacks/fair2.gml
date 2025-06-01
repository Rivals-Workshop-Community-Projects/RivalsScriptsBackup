#macro atk 43
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 1);
av(atk, AG_SPRITE, sprite_get("fair2"));
av(atk, AG_NUM_WINDOWS, 5);
av(atk, AG_HAS_LANDING_LAG, 1);
av(atk, AG_LANDING_LAG, 11);
av(atk, AG_HURTBOX_SPRITE, sprite_get("fair2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "FAir2 (Bike Swing)");

win(atk, 1, AG_WINDOW_LENGTH, 14);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 13);

win(atk, 2, AG_WINDOW_LENGTH, 3);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);

win(atk, 3, AG_WINDOW_LENGTH, 2);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 4);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

win(atk, 4, AG_WINDOW_LENGTH, 6);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 5);
win(atk, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

win(atk, 5, AG_WINDOW_LENGTH, 6);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 6);
win(atk, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_X, 24);
hv(atk, 1, HG_HITBOX_Y, -54);
hv(atk, 1, HG_WIDTH, 30);
hv(atk, 1, HG_HEIGHT, 100);
hv(atk, 1, HG_PRIORITY, 3);
hv(atk, 1, HG_DAMAGE, 6);
hv(atk, 1, HG_ANGLE, 361);
hv(atk, 1, HG_BASE_KNOCKBACK, 6);
hv(atk, 1, HG_KNOCKBACK_SCALING, .75)
hv(atk, 1, HG_BASE_HITPAUSE, 7);
hv(atk, 1, HG_HITPAUSE_SCALING, .75);
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_HIT_SFX, sound_get("hit"));
hv(atk, 1, HG_MUNO_HITBOX_MISC_ADD, "Sourspot");

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_WINDOW, 2);
hv(atk, 2, HG_LIFETIME, 3);
hv(atk, 2, HG_HITBOX_X, 58);
hv(atk, 2, HG_HITBOX_Y, -54);
hv(atk, 2, HG_WIDTH, 70);
hv(atk, 2, HG_HEIGHT, 134);
hv(atk, 2, HG_PRIORITY, 2);
hv(atk, 2, HG_DAMAGE, 10);
hv(atk, 2, HG_ANGLE, 361);
hv(atk, 2, HG_BASE_KNOCKBACK, 7);
hv(atk, 2, HG_KNOCKBACK_SCALING, .75)
hv(atk, 2, HG_BASE_HITPAUSE, 9);
hv(atk, 2, HG_HITPAUSE_SCALING, .75);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1)
    hv(atk, 2, HG_BASE_KNOCKBACK, 16);
    hv(atk, 2, HG_KNOCKBACK_SCALING, 1)   
}