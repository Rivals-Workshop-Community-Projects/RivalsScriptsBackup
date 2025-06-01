#macro atk AT_USPECIAL
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 2);
av(atk, AG_OFF_LEDGE, 1);
av(atk, AG_SPRITE, sprite_get("uspecial"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "USpecial (Pounce)");
av(atk, AG_MUNO_ATTACK_MISC, "Can attack, shield and strong cancel on hit after 15 frames, special cancel on hit after 15 frames except into another pounce, shield and strong cancel on hit or after 24 active frames. Cancelling into NAir will increase the potency of NAir. Pouncing on a parked bike will cause it to spin into the air.");

win(atk, 1, AG_WINDOW_TYPE, 2);
win(atk, 1, AG_WINDOW_LENGTH, 7);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 1, AG_WINDOW_HSPEED_TYPE, 1);
//win(atk, 1, AG_WINDOW_VSPEED_TYPE, 1);
//win(atk, 1, AG_WINDOW_VSPEED, -1);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("pounce"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 5);

win(atk, 2, AG_WINDOW_TYPE, 2);
win(atk, 2, AG_WINDOW_LENGTH, 25);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 8);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);
win(atk, 2, AG_WINDOW_HSPEED_TYPE, 1);
win(atk, 2, AG_WINDOW_HSPEED, 6);
win(atk, 2, AG_WINDOW_VSPEED, -4);

win(atk, 3, AG_WINDOW_TYPE, 7);
win(atk, 3, AG_WINDOW_LENGTH, 9);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_LIFETIME, 25);
hv(atk, 1, HG_HITBOX_X, 8);
hv(atk, 1, HG_HITBOX_Y, -24);
hv(atk, 1, HG_SHAPE, 2);
hv(atk, 1, HG_WIDTH, 38);
hv(atk, 1, HG_HEIGHT, 48);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 5);
hv(atk, 1, HG_ANGLE, 45);
hv(atk, 1, HG_BASE_KNOCKBACK, 6);
hv(atk, 1, HG_BASE_HITPAUSE, 4);
hv(atk, 1, HG_HITSTUN_MULTIPLIER, 1.5);
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_ANGLE_FLIPPER, 6);
hv(atk, 1, HG_TECHABLE, 1);
hv(atk, 1, HG_HIT_SFX, sound_get("hit"));

hv(atk, 2, HG_HITBOX_TYPE, 2);
hv(atk, 2, HG_LIFETIME, 999);
hv(atk, 2, HG_HITBOX_X, 0);
hv(atk, 2, HG_HITBOX_Y, 0);
hv(atk, 2, HG_SHAPE, 0);
hv(atk, 2, HG_WIDTH, 80);
hv(atk, 2, HG_HEIGHT, 80);
hv(atk, 2, HG_PRIORITY, 9);
hv(atk, 2, HG_DAMAGE, 1);
hv(atk, 2, HG_ANGLE, 45);
hv(atk, 2, HG_BASE_KNOCKBACK, 5);
hv(atk, 2, HG_KNOCKBACK_SCALING, 0);
hv(atk, 2, HG_BASE_HITPAUSE, 4);
hv(atk, 2, HG_EXTRA_HITPAUSE, 0);
hv(atk, 2, HG_HITPAUSE_SCALING, 0);
hv(atk, 2, HG_HIT_SFX, sound_get("hit_deep"));
hv(atk, 2, HG_VISUAL_EFFECT, hit_proj);
hv(atk, 2, HG_ANGLE_FLIPPER, 9);
hv(atk, 2, HG_TECHABLE, 0);
hv(atk, 2, HG_IGNORES_PROJECTILES, 1);
hv(atk, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
hv(atk, 2, HG_PROJECTILE_MASK, -1);
hv(atk, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
hv(atk, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
hv(atk, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
hv(atk, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
hv(atk, 2, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
hv(atk, 2, HG_PROJECTILE_UNBASHABLE, 1);
hv(atk, 2, HG_PROJECTILE_PLASMA_SAFE, 1);
hv(atk, 2, HG_PROJECTILE_DESTROY_EFFECT, 1);
hv(atk, 2, HG_TECHABLE, 1);
hv(atk, 2, HG_HITBOX_GROUP, -1);
hv(atk, 2, HG_MUNO_HITBOX_MISC_ADD, "This hitbox is applied to parked bikes only. Multihit that refreshes every 10 frames for the stated value, hitbox size is the bike itself.");


if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
}