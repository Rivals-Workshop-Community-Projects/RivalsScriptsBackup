set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial_air_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_GOTO, 7);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HITPAUSE_FRAME, 11);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);


set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -41);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 1.4);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 130);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -43);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 111);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 105);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 130);
