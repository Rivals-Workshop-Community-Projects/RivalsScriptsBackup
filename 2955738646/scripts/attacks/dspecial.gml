set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial_ground"));
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 17);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_ground_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1); //Start up flying back
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("dspecial_dash"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 17);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1); //Diving
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 11);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 11);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1); //Done / missed
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_GOTO, 20); //Not a window, just so it ends

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1); //Kicking them in
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
if (attack_button == 0){
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, 14);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, 18);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
}
if (attack_button == 1){
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, -1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
}
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1); //Done with them
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_WHIFFLAG, 5);
if (attack_button == 0){
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -6);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, -2);
}
if (attack_button == 1){
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_VSPEED, -7);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HSPEED, -3);
}
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_GOTO, 20); //Not a window, just so it ends

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1); //In the wall
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 90);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_kragg_rock_land"));
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_GOTO, 20); //Not a window, just so it ends

//--------SUPER MECHA---------//

set_window_value(AT_DSPECIAL, 10, AG_WINDOW_TYPE, 1); //Start up boosting
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX, sound_get("super_dspecial_fly"));
set_window_value(AT_DSPECIAL, 10, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DSPECIAL, 11, AG_WINDOW_TYPE, 1); //Super Diving
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_LENGTH, 21);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_VSPEED, 20);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_HSPEED, 20.40);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_DSPECIAL, 11, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);

set_window_value(AT_DSPECIAL, 12, AG_WINDOW_TYPE, 1); //Done / missed
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSPECIAL, 12, AG_WINDOW_GOTO, 20); //Not a window, just so it ends

set_window_value(AT_DSPECIAL, 13, AG_WINDOW_TYPE, 1); //Destroying them across the stage
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_VSPEED, 27);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_HSPEED, 27);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_DSPECIAL, 13, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL, 14, AG_WINDOW_TYPE, 1); //Done with them kick
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_VSPEED, -4);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL, 14, AG_WINDOW_GOTO, 20);

set_window_value(AT_DSPECIAL, 15, AG_WINDOW_TYPE, 1); //Dash up the wall
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_VSPEED, -25);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_SFX, sound_get("S3&K_spinout2"));
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSPECIAL, 15, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_DSPECIAL, 16, AG_WINDOW_TYPE, 1); //End of dashing up wall
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_VSPEED, -7);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_HSPEED, 7);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_DSPECIAL, 16, AG_WINDOW_GOTO, 20);

set_window_value(AT_DSPECIAL, 17, AG_WINDOW_TYPE, 1); //Teleport elbow
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_SFX, sound_get("ftilt_startup"));
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 17, AG_WINDOW_INVINCIBILITY, 2);

set_num_hitboxes(AT_DSPECIAL, 12);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1); //Diving hit
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 210);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("dspecial_hit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1); //Letting go kick off
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 130);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.01);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.01);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL, 2, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 148);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_ustrong_launch"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1); //Lock into wall
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -13);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 155);
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, sound_get("dspecial_wallpin"));
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, sound_get("dspecial_kickoff"));
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 40);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, sound_get("dspecial_kickoff"));
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_TYPE, 1); //Rapid little hits while holding them
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 6, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 6, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 6, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_DSPECIAL, 6, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_EXTRA_CAMERA_SHAKE, 0);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT, 200);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 6, HG_VISUAL_EFFECT_Y_OFFSET, 30);
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_SFX, asset_get("sfx_ori_spirit_flame_hit_1"));
set_hitbox_value(AT_DSPECIAL, 6, HG_HIT_LOCKOUT, 2);
set_hitbox_value(AT_DSPECIAL, 6, HG_HITBOX_GROUP, -1);

//-----Super Mecha-----//

set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1); //Super Diving
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 11);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 7, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_EXTRA_HITPAUSE, 11);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITSTUN_MULTIPLIER, 2);
set_hitbox_value(AT_DSPECIAL, 7, HG_TECHABLE, 3);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT_Y_OFFSET, 15);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, sound_get("dspecial_hit"));
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW, 7); //not a real window
set_hitbox_value(AT_DSPECIAL, 8, HG_WINDOW_CREATION_FRAME, 30);
set_hitbox_value(AT_DSPECIAL, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 8, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 8, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 8, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 8, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 8, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_DSPECIAL, 8, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 8, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 8, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 8, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 8, HG_HIT_SFX, sound_get("dspecial_kickoff"));
set_hitbox_value(AT_DSPECIAL, 8, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 7); //not a real window
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 40);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 23);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 9, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT_Y_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, sound_get("dspecial_kickoff"));
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_TYPE, 1); //Letting go hard spin turn
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW, 14);
set_hitbox_value(AT_DSPECIAL, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 10, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL, 10, HG_WIDTH, 130);
set_hitbox_value(AT_DSPECIAL, 10, HG_HEIGHT, 130);
set_hitbox_value(AT_DSPECIAL, 10, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 10, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 10, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL, 10, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSPECIAL, 10, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 10, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL, 10, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSPECIAL, 10, HG_DRIFT_MULTIPLIER, 0.1);
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 10, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 10, HG_HIT_SFX, sound_get("dspecial_turnhit"));
set_hitbox_value(AT_DSPECIAL, 10, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_TYPE, 1); //Rapid hard hits while holding them
set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW, 100); //Not a window
set_hitbox_value(AT_DSPECIAL, 11, HG_WINDOW_CREATION_FRAME, 10);
set_hitbox_value(AT_DSPECIAL, 11, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_X, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSPECIAL, 11, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 11, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 11, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 11, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 11, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_ANGLE, 60);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 11, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 11, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HIT_SFX, sound_get("super_dspecial_hardhit"));
set_hitbox_value(AT_DSPECIAL, 11, HG_HIT_LOCKOUT, 1);
set_hitbox_value(AT_DSPECIAL, 11, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_TYPE, 1); //Hard hit ending elbow
set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW, 17);
set_hitbox_value(AT_DSPECIAL, 12, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_DSPECIAL, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_Y, -25);
set_hitbox_value(AT_DSPECIAL, 12, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 12, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 12, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 12, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 12, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 12, HG_ANGLE, 240);
set_hitbox_value(AT_DSPECIAL, 12, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_DSPECIAL, 12, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 12, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 12, HG_HITSTUN_MULTIPLIER, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 12, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_DSPECIAL, 12, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(AT_DSPECIAL, 12, HG_HIT_SFX, sound_get("dair_sweetspot"));
set_hitbox_value(AT_DSPECIAL, 12, HG_HITBOX_GROUP, -1);