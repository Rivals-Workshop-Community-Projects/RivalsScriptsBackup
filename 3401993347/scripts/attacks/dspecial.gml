set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);

//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dspecial"));

//active counter
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

//endlag
// set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);

set_num_hitboxes(AT_DSPECIAL, 1);

// set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 80);
// set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
// set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 20);
// set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
// set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
// set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
// set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
// set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 80);
// set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
// set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
// set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
// set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 4);
// set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
