//Jab and Nair are usually the same move, but are separated due to engine limitations.
//You can copy and paste nair and repace all AT_EXTRA_2 with AT_EXTRA_2

set_attack_value(AT_EXTRA_2, AG_CATEGORY, 1);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("oldnair"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_2, AG_LANDING_LAG, 10);
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("oldnair_hurt"));

//startup window
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_rag_axe_swing"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 0);

//active window
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_VSPEED_TYPE, 0);

//recovery window made sperate to handle animation timing
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_VSPEED_TYPE, 0);

//recovery window, does not have whifflag because it is a projectile
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_TYPE, 7);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_VSPEED_TYPE, 0);



set_num_hitboxes(AT_EXTRA_2, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_X, 23);//30
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 100);//50
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 78);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 5);//8
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 300);
set_hitbox_value(AT_EXTRA_2, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 6);//6
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, .6);//.6
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, .8);//.25
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_CAMERA_SHAKE, 2);
// set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 20)
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_icehit_heavy1"));