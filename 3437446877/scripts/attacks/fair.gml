set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
//set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
//set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, asset_get("sfx_waveland_ori"));
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, -3);
set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
//set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);

set_num_hitboxes(AT_FAIR,1);

set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 54);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 6);
