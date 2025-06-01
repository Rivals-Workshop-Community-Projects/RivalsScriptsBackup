#macro atk 39
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 1);
av(atk, AG_SPRITE, sprite_get("bair2"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HAS_LANDING_LAG, 1);
av(atk, AG_LANDING_LAG, 7);
av(atk, AG_HURTBOX_SPRITE, sprite_get("bair2_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "BAir2 (Bike Back Kick)");

win(atk, 1, AG_WINDOW_LENGTH, 9);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 8);

win(atk, 2, AG_WINDOW_LENGTH, 4);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 2);

win(atk, 3, AG_WINDOW_LENGTH, 12);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 4);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 1);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 4);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_HITBOX_X, -44);
hv(atk, 1, HG_HITBOX_Y, -20);
hv(atk, 1, HG_WIDTH, 50);
hv(atk, 1, HG_HEIGHT, 40);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_DAMAGE, 8);
hv(atk, 1, HG_ANGLE, 140);
hv(atk, 1, HG_BASE_KNOCKBACK, 6);
hv(atk, 1, HG_KNOCKBACK_SCALING, .75)
hv(atk, 1, HG_BASE_HITPAUSE, 7);
hv(atk, 1, HG_HITPAUSE_SCALING, .8)
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_HIT_SFX, sound_get("hit"));

if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1);
}