set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);

//dss   dsan  dsa1  dsh1  dsa2  dsh2   dsr
//0-3:4 4-4:1 5-5:1 6-7:2 8-8:1 9-10:2 11-13:3

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("ding_3"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("swing_7"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX, sound_get("swing_8"));
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 14);//9 on hit, changed in attack_update
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.15);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);

set_num_hitboxes(AT_DSPECIAL, 2);

//1
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -7);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 139);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 63);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("hit_medium_2"));

//2
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -33);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 139);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 63);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.3);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 110);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_abyss_hex_hit"));








