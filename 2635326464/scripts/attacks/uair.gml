set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 10);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, sound_get("Spark"));

set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,2);

set_hitbox_value(AT_UAIR, 1, HG_MUNO_HITBOX_NAME, "Sweetspot");

//Sweetspot
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -86);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 88);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_tip_strong"));
set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_EXTRA_CAMERA_SHAKE, 1);

set_hitbox_value(AT_UAIR, 2, HG_MUNO_HITBOX_NAME, "Lightning");

//Lightning
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -365);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 26);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 590);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 60);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_absa_singlezap2"));
set_hitbox_value(AT_UAIR, 2, HG_ANGLE_FLIPPER, 6);

set_attack_value(AT_UAIR, AG_MUNO_ATTACK_MISC_ADD, "Has 3 points of self damage. Has 90 frames of cooldown where the lightning won't spawn.");
set_attack_value(AT_UAIR, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH)));