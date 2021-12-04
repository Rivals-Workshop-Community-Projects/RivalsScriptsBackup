set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 4);
//set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_2, AG_LANDING_LAG, 5);
set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);

set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED, 8 + (4 * has_rune("B")));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 12);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_INVINCIBILITY, 2);
//set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_FSPECIAL_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSPECIAL_2, 2);

set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_GROUP, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_ANGLE, 100);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));


