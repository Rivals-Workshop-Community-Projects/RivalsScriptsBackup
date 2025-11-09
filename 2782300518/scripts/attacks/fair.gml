#macro atk AT_FAIR
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 1);
av(atk, AG_SPRITE, sprite_get("fair"));
av(atk, AG_NUM_WINDOWS, 3);
av(atk, AG_HAS_LANDING_LAG, 1);
av(atk, AG_LANDING_LAG, 7);
av(atk, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
//av(atk, AG_USES_CUSTOM_GRAVITY, 1);
av(atk, AG_MUNO_ATTACK_NAME, "FAir (Low Kick)");
av(atk, AG_MUNO_ATTACK_MISC, "Can be walljump cancelled frame 9 onwards");

win(atk, 1, AG_WINDOW_LENGTH, 8);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get("jab1"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 7);
//win(atk, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);

win(atk, 2, AG_WINDOW_LENGTH, 6);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 2);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 1);
win(atk, 2, AG_WINDOW_HSPEED_TYPE, 2);
win(atk, 2, AG_WINDOW_HSPEED, 7);
//win(atk, 2, AG_WINDOW_VSPEED_TYPE, 1);
//win(atk, 2, AG_WINDOW_VSPEED, .5);
//win(atk, 2, AG_WINDOW_CUSTOM_GRAVITY, 0);

win(atk, 3, AG_WINDOW_LENGTH, 15);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 5);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 3);
//win(atk, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.35);
//win(atk, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_HITBOX_GROUP, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 6);
hv(atk, 1, HG_HITBOX_X, 44);
hv(atk, 1, HG_HITBOX_Y, -24);
hv(atk, 1, HG_WIDTH, 40);
hv(atk, 1, HG_HEIGHT, 34);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_SHAPE, 2);
hv(atk, 1, HG_DAMAGE, 6);
hv(atk, 1, HG_ANGLE, 361);
hv(atk, 1, HG_BASE_KNOCKBACK, 6);
hv(atk, 1, HG_KNOCKBACK_SCALING, .25)
hv(atk, 1, HG_BASE_HITPAUSE, 7);
hv(atk, 1, HG_HITPAUSE_SCALING, .4);
hv(atk, 1, HG_VISUAL_EFFECT, hit_medium);
hv(atk, 1, HG_HIT_SFX, sound_get("hit"));

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_HITBOX_GROUP, 1);
hv(atk, 2, HG_WINDOW, 2);
hv(atk, 2, HG_LIFETIME, 1);
hv(atk, 2, HG_HITBOX_X, 60);
hv(atk, 2, HG_HITBOX_Y, -30);
hv(atk, 2, HG_WIDTH, 10);
hv(atk, 2, HG_HEIGHT, 18);
hv(atk, 2, HG_PRIORITY, 4);
hv(atk, 2, HG_DAMAGE, 8);
hv(atk, 2, HG_ANGLE, 361);
hv(atk, 2, HG_BASE_KNOCKBACK, 8);
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