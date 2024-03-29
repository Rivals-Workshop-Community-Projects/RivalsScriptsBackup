set_attack_value(AT_USPECIAL_GROUND, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_GROUND, AG_SPRITE, sprite_get("dragon_punch_empowered"));
set_attack_value(AT_USPECIAL_GROUND, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_GROUND, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL_GROUND, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_GROUND, AG_AIR_SPRITE, sprite_get("dragon_punch_empowered"));
set_attack_value(AT_USPECIAL_GROUND, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
//set_attack_value(AT_USPECIAL_GROUND, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED, 2);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_GROUND, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_VSPEED, -15.5);
set_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_GROUND, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_GROUND, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_USPECIAL_GROUND, 2);

set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_GROUND, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HEIGHT, 100);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_FINAL_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_KNOCKBACK_SCALING, 0.89);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL_GROUND, 2, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));

