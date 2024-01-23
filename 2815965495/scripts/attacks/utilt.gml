
set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UTILT, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UTILT, AG_LANDING_LAG, 7); // 4
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 9); // 4
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_ell_steam_hit"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 8); // 2

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 9); 
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 8); 
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_ell_steam_hit"));
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX_FRAME, 7)

set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 14); // 7
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,2);


set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -56); // -40
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 78); // 65
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 54); // 65
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 50);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX,  asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 1, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE_FLIPPER, 9);

set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW_CREATION_FRAME, 4); 
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -56); // -40
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 78); // 65
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 54); // 65
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 50);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX,  asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_UTILT, 2, HG_SDI_MULTIPLIER, .8);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE_FLIPPER, 9);


set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW_CREATION_FRAME, 4); 
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3); // 3
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -56); // -40
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 80); // 70
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 56); // 70
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 5);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3); // 5
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .6); // 2
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX,  asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_GROUP, 2);