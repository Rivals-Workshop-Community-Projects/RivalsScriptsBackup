#macro atk AT_DAIR
#macro av set_attack_value
#macro win set_window_value
#macro hv set_hitbox_value

av(atk, AG_CATEGORY, 1);
av(atk, AG_SPRITE, sprite_get("dair"));
av(atk, AG_HAS_LANDING_LAG, 0);
av(atk, AG_LANDING_LAG, 7);
av(atk, AG_NUM_WINDOWS, 5);
av(atk, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
av(atk, AG_MUNO_ATTACK_NAME, "DAir (Bubble Bounce)");
av(atk, AG_MUNO_ATTACK_MISC, "Shield cancellable on decent from Frame 29 onwards. Special cancellable on hit. Jump cancellable on hit. Cancellabe into any other aerial except DAir on hit.");

win(atk, 1, AG_WINDOW_LENGTH, 13);
win(atk, 1, AG_WINDOW_ANIM_FRAMES, 3);
win(atk, 1, AG_WINDOW_HAS_SFX, 1);
win(atk, 1, AG_WINDOW_SFX, sound_get ("rolling"));
win(atk, 1, AG_WINDOW_SFX_FRAME, 12);

win(atk, 2, AG_WINDOW_LENGTH, 20);
win(atk, 2, AG_WINDOW_TYPE, 10);
win(atk, 2, AG_WINDOW_ANIM_FRAMES, 8);
win(atk, 2, AG_WINDOW_ANIM_FRAME_START, 3);
win(atk, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
win(atk, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
win(atk, 2, AG_WINDOW_VSPEED, 18);
win(atk, 2, AG_WINDOW_VSPEED_TYPE, 1);

win(atk, 3, AG_WINDOW_LENGTH, 3);
win(atk, 3, AG_WINDOW_ANIM_FRAMES, 1);
win(atk, 3, AG_WINDOW_ANIM_FRAME_START, 11);
win(atk, 3, AG_WINDOW_HAS_SFX, 1);
//win(atk, 3, AG_WINDOW_SFX, asset_get ("sfx_frog_nspecial_shove"));
win(atk, 3, AG_WINDOW_SFX, sound_get ("bubble_bouncing"));
win(atk, 3, AG_WINDOW_VSPEED, 0);
win(atk, 3, AG_WINDOW_VSPEED_TYPE, 1);

win(atk, 4, AG_WINDOW_LENGTH, 10);
win(atk, 4, AG_WINDOW_ANIM_FRAMES, 5);
win(atk, 4, AG_WINDOW_ANIM_FRAME_START, 12);
win(atk, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
win(atk, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
win(atk, 4, AG_WINDOW_VSPEED, -9.5);
win(atk, 4, AG_WINDOW_VSPEED_TYPE, 2);

win(atk, 5, AG_WINDOW_LENGTH, 24);
win(atk, 5, AG_WINDOW_ANIM_FRAMES, 6);
win(atk, 5, AG_WINDOW_ANIM_FRAME_START, 17);
win(atk, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(atk, 2);

hv(atk, 1, HG_HITBOX_TYPE, 1);
hv(atk, 1, HG_WINDOW, 2);
hv(atk, 1, HG_LIFETIME, 3);
hv(atk, 1, HG_HITBOX_X, -4);
hv(atk, 1, HG_HITBOX_Y, -4);
hv(atk, 1, HG_PRIORITY, 2);
hv(atk, 1, HG_WIDTH, 50);
hv(atk, 1, HG_HEIGHT, 15);
hv(atk, 1, HG_SHAPE, 2);
hv(atk, 1, HG_DAMAGE, 10);
hv(atk, 1, HG_ANGLE, 270);
hv(atk, 1, HG_ANGLE_FLIPPER, 6);
hv(atk, 1, HG_BASE_KNOCKBACK, 7);
hv(atk, 1, HG_KNOCKBACK_SCALING, .4);
hv(atk, 1, HG_BASE_HITPAUSE, 8);
hv(atk, 1, HG_HITPAUSE_SCALING, 1);
hv(atk, 1, HG_HIT_SFX, sound_get("hit_heavy"));
hv(atk, 1, HG_VISUAL_EFFECT, hit_large);
hv(atk, 1, HG_MUNO_HITBOX_MISC_ADD, "On hit will bounce on opponents and move upwards instead.");

hv(atk, 2, HG_HITBOX_TYPE, 1);
hv(atk, 2, HG_WINDOW, 2);
hv(atk, 2, HG_WINDOW_CREATION_FRAME, 3);
hv(atk, 2, HG_LIFETIME, 37);
hv(atk, 2, HG_HITBOX_X, -4);
hv(atk, 2, HG_HITBOX_Y, -4);
hv(atk, 2, HG_PRIORITY, 1);
hv(atk, 2, HG_WIDTH, 50);
hv(atk, 2, HG_HEIGHT, 15);
hv(atk, 2, HG_SHAPE, 2);
hv(atk, 2, HG_DAMAGE, 10);
hv(atk, 2, HG_ANGLE, 90);
hv(atk, 2, HG_BASE_KNOCKBACK, 9);
hv(atk, 2, HG_KNOCKBACK_SCALING, .4);
hv(atk, 2, HG_BASE_HITPAUSE, 4);
hv(atk, 2, HG_HITPAUSE_SCALING, .6);
hv(atk, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
hv(atk, 2, HG_VISUAL_EFFECT, hit_large);
hv(atk, 2, HG_MUNO_HITBOX_MISC_ADD, "On hit will bounce on opponents and move upwards instead.");


if has_rune ("O")
{
    hv(atk, 1, HG_BASE_KNOCKBACK, 12);
    hv(atk, 1, HG_KNOCKBACK_SCALING, 1)
    hv(atk, 2, HG_BASE_KNOCKBACK, 12);
    hv(atk, 2, HG_KNOCKBACK_SCALING, 1)
}