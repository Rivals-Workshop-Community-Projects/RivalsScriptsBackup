#macro atk 44
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 1);
av(atk, AG_SPRITE, sprite_get("nair2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HAS_LANDING_LAG, 1);
av(atk, AG_LANDING_LAG, 7);
av(atk, AG_HURTBOX_SPRITE, sprite_get("nair2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "NAir2 (Bike Fu)");

win(atk, 1, AG_WINDOW_LENGTH, 12);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("motorbike_uppercut"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 11);

win(atk, 2, AG_WINDOW_LENGTH, 10);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 4);

win(atk, 3, AG_WINDOW_LENGTH, 13);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 8);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 4);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 2);
hv(atk, 1, HG_HITBOX_X, 0);
hv(atk, 1, HG_HITBOX_Y, -30);
hv(atk, 1, HG_WIDTH, 118);
hv(atk, 1, HG_HEIGHT, 58);
hv(atk, 1, HG_PRIORITY, 1);
hv(atk, 1, HG_DAMAGE, 7);
hv(atk, 1, HG_ANGLE, 65);
hv(atk, 1, HG_ANGLE_FLIPPER, 6);
hv(atk, 1, HG_BASE_KNOCKBACK, 7);
hv(atk, 1, HG_KNOCKBACK_SCALING, .5);
hv(atk, 1, HG_BASE_HITPAUSE, 8);
hv(atk, 1, HG_HITPAUSE_SCALING, .5);
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_WINDOW, 2);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 3);
hv(atk, 2, HG_LIFETIME, 2);
hv(atk, 2, HG_HITBOX_X, 24);
hv(atk, 2, HG_HITBOX_Y, -59);
hv(atk, 2, HG_WIDTH, 58);
hv(atk, 2, HG_HEIGHT, 118);
hv(atk, 2, HG_PRIORITY, 1);
hv(atk, 2, HG_DAMAGE, 7);
hv(atk, 2, HG_ANGLE, 65);
hv(atk, 2, HG_ANGLE_FLIPPER, 6);
hv(atk, 2, HG_BASE_KNOCKBACK, 7);
hv(atk, 2, HG_KNOCKBACK_SCALING, .5);
hv(atk, 2, HG_BASE_HITPAUSE, 8);
hv(atk, 2, HG_HITPAUSE_SCALING, .5);
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_heavy"));

hv(atk, 3, HG_HITBOX_TYPE, 1);
hv(atk, 3, HG_HITBOX_GROUP, 1);
hv(atk, 3, HG_WINDOW, 2);
hv(atk, 3, HG_WINDOW_CREATION_FRAME, 5);
hv(atk, 3, HG_LIFETIME, 2);
hv(atk, 3, HG_HITBOX_X, 0);
hv(atk, 3, HG_HITBOX_Y, -90);
hv(atk, 3, HG_WIDTH, 118);
hv(atk, 3, HG_HEIGHT, 58);
hv(atk, 3, HG_PRIORITY, 1);
hv(atk, 3, HG_DAMAGE, 7);
hv(atk, 3, HG_ANGLE, 65);
hv(atk, 3, HG_ANGLE_FLIPPER, 6);
hv(atk, 3, HG_BASE_KNOCKBACK, 7);
hv(atk, 3, HG_KNOCKBACK_SCALING, .5);
hv(atk, 3, HG_BASE_HITPAUSE, 8);
hv(atk, 3, HG_HITPAUSE_SCALING, .5);
hv(atk, 3, HG_VISUAL_EFFECT, hit_large);
hv(atk, 3, HG_HIT_SFX, sound_get("hit_heavy"));

hv(atk, 4, HG_HITBOX_TYPE, 1);
hv(atk, 4, HG_HITBOX_GROUP, 1);
hv(atk, 4, HG_WINDOW, 2);
hv(atk, 4, HG_WINDOW_CREATION_FRAME, 8);
hv(atk, 4, HG_LIFETIME, 2);
hv(atk, 4, HG_HITBOX_X, -24);
hv(atk, 4, HG_HITBOX_Y, -59);
hv(atk, 4, HG_WIDTH, 58);
hv(atk, 4, HG_HEIGHT, 118);
hv(atk, 4, HG_PRIORITY, 1);
hv(atk, 4, HG_DAMAGE, 7);
hv(atk, 4, HG_ANGLE, 65);
hv(atk, 4, HG_ANGLE_FLIPPER, 6);
hv(atk, 4, HG_BASE_KNOCKBACK, 7);
hv(atk, 4, HG_KNOCKBACK_SCALING, .5);
hv(atk, 4, HG_BASE_HITPAUSE, 8);
hv(atk, 4, HG_HITPAUSE_SCALING, .5);
hv(atk, 4, HG_VISUAL_EFFECT, hit_large);
hv(atk, 4, HG_HIT_SFX, sound_get("hit_heavy"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
    hv(atk, 2, HG_BASE_KNOCKBACK, 12);
    hv(atk, 2, HG_KNOCKBACK_SCALING, 1);
    hv(atk, 3, HG_BASE_KNOCKBACK, 12);
    hv(atk, 3, HG_KNOCKBACK_SCALING, 1);
    hv(atk, 4, HG_BASE_KNOCKBACK, 12);
    hv(atk, 4, HG_KNOCKBACK_SCALING, 1);
}