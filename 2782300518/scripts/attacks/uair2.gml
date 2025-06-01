#macro atk 42
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 1);
av(atk, AG_SPRITE, sprite_get("uair2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HAS_LANDING_LAG, 1);
av(atk, AG_LANDING_LAG, 6); //4
av(atk, AG_HURTBOX_SPRITE, sprite_get("uair2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "UAir2 (Bike High Kick)");
av(atk, AG_MUNO_ATTACK_MISC, "This attack has a vertical boost of speed once per airtime. The boost is reset when you touch the ground. Using this move a second time in the air will not result in vertical speed.");

win(atk, 1, AG_WINDOW_LENGTH, 7); //10
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("jab2"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 3);

win(atk, 2, AG_WINDOW_LENGTH, 4); //6
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
win(atk, 2, AG_WINDOW_VSPEED_TYPE, 1);
win(atk, 2, AG_WINDOW_VSPEED, -5);

win(atk, 3, AG_WINDOW_LENGTH, 12);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 4); //2
hv(atk, 1, HG_HITBOX_X, 36);
hv(atk, 1, HG_HITBOX_Y, -48);
hv(atk, 1, HG_WIDTH, 64);
hv(atk, 1, HG_HEIGHT, 48);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 7);
hv(atk, 1, HG_ANGLE, 80);
hv(atk, 1, HG_BASE_KNOCKBACK, 8);
hv(atk, 1, HG_KNOCKBACK_SCALING, 0.5);
hv(atk, 1, HG_BASE_HITPAUSE, 6);
hv(atk, 1, HG_HITPAUSE_SCALING, .25);
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_WINDOW, 2);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 2); //3
hv(atk, 2, HG_LIFETIME, 2); //3
hv(atk, 2, HG_HITBOX_X, 54);
hv(atk, 2, HG_HITBOX_Y, -88);
hv(atk, 2, HG_WIDTH, 58);
hv(atk, 2, HG_HEIGHT, 72);
hv(atk, 2, HG_PRIORITY, 2);
hv(atk, 2, HG_DAMAGE, 7);
hv(atk, 2, HG_ANGLE, 80);
hv(atk, 2, HG_BASE_KNOCKBACK, 8);
hv(atk, 2, HG_KNOCKBACK_SCALING, 0.5);
hv(atk, 2, HG_BASE_HITPAUSE, 6);
hv(atk, 2, HG_HITPAUSE_SCALING, .25);
hv(atk, 2, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
}