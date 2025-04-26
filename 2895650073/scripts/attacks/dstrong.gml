set_attack_value(AT_DSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 6);

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, ground_friction/5);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, asset_get("sfx_ice_fspecial_hit_ground"));
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_bird_nspecial"));
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, asset_get("sfx_bird_sidespecial"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_DSTRONG, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG, 5);

set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 121);
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 34);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 28);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
//^
set_hitbox_value(AT_DSTRONG, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 2, HG_HITBOX_GROUP, 2);
//^
set_hitbox_value(AT_DSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 3, HG_HITBOX_GROUP, 3);
//^
set_hitbox_value(AT_DSTRONG, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSTRONG, 4, HG_HITBOX_GROUP, 4);

//final
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_WINDOW, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_X, 4);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSTRONG, 5, HG_WIDTH, 130);
set_hitbox_value(AT_DSTRONG, 5, HG_HEIGHT, 40);
set_hitbox_value(AT_DSTRONG, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG, 5, HG_HITBOX_GROUP, 5);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_LOCKOUT, 30);
set_hitbox_value(AT_DSTRONG, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, 5, HG_ANGLE_FLIPPER, 6)
set_hitbox_value(AT_DSTRONG, 5, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_DSTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG, 5, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSTRONG, 5, HG_VISUAL_EFFECT, 199);
set_hitbox_value(AT_DSTRONG, 5, HG_HIT_SFX, asset_get("sfx_icehit_heavy2"));


















