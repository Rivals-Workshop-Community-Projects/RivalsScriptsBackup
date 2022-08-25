set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);

set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 6);

//windup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);

//teleport away
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_frog_uspecial_cast"));
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 4);

//in the void
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_frog_uspecial_cast"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);

//teleports behind you (swipes)
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 20);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_charge_blade_swing"));
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);

//NANI
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.6);

//dshfkahfkjadjf
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL, 3);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 306);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 99);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 157);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 1);

//detection hitbox
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);