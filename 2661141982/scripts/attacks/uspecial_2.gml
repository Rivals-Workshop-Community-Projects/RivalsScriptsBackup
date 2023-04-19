set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_AIR_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_AIR_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);

set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 6);
// set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, -7);
// // set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 3);


set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
// set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, 10);
// set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);


set_num_hitboxes(AT_USPECIAL_2, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, -5);//19
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -35);//65
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 84);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_HITPAUSE, 6);	
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 1.2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, ewgf_fx );//251
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);//161
//set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, lanternfx);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
//set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_LOCKOUT, 10);
//set_hitbox_value(AT_USPECIAL_2, 1, HG_TECHABLE, 1);
