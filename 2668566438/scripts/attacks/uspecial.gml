set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
// launch
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_absa_whip"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 16);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);

// atk startup
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 3);

// atk active
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 15);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_USPECIAL, 3);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 4); // 2
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 6); // 2
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 310);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4); // 2
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_absa_uair"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);