set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -2);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, -.1);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_frog_nspecial_shove"));

set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 35);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, -.5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX, asset_get("sfx_birdclap"));
set_window_value(AT_UAIR, 3, AG_WINDOW_SFX_FRAME, 34);

set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, -.5);


set_num_hitboxes(AT_UAIR,3);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -110);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 68);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 75);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

set_hitbox_value(AT_UAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_UAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_UAIR, 3, HG_WIDTH, 95);
set_hitbox_value(AT_UAIR, 3, HG_HEIGHT, 110);
set_hitbox_value(AT_UAIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_UAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_UAIR, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_UAIR, 3, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_UAIR, 3, HG_VISUAL_EFFECT, confetti);
set_hitbox_value(AT_UAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_UAIR, 3, HG_HITBOX_GROUP, -1);
