set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);

set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_ice_shieldup"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX, asset_get("sfx_oly_uspecial_kick"));
set_window_value(AT_BAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_BAIR, 3);

//both are like a part of same thing
var b_angle = 140
var b_bkb = 7
var b_kbg = 0.7
//bottom
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -29);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -9);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 84);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 29);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, b_angle);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, b_bkb);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, b_kbg);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("hitslash"));

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -16);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 71);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_BAIR, 2, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, b_angle);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, b_bkb);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, b_kbg);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("hitslash"));

//sweetspot
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -64);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -1);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 14);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 14);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 9);
set_hitbox_value(AT_BAIR, 3, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 11);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 140);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 113);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("hitharsh"));








