set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 17);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("uspecial_flyup"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1); //Quick push upwards
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -16);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("uspecial_flying"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1); //Holding that speed
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
if (attack_button == 0){
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 0);
}
if (attack_button == 1){
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0);
}
set_window_value(AT_USPECIAL, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1); //Missed grab
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_GOTO, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.1);

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1); //Grabbing and holding
if (attack_button == 0){
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 70);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 0); //Flying upwards in Attack Update
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 8);
}
if (attack_button == 1){
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 0);
}
set_window_value(AT_USPECIAL, 5, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.9);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1); //Throwing
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 30);
if (attack_button == 0){
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
}
if (attack_button == 1){
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5); 
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, 0);
}
set_window_value(AT_USPECIAL, 6, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, sound_get("uspecial_throw"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_GOTO, 20); //Not a window
set_window_value(AT_USPECIAL, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.5);

set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1); 
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 0);

set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1); //We got a floater
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 31);
if (attack_button == 0){
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED, 0);
}
if (attack_button == 1){
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HSPEED, 0);
}
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1); //End floating
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_GOTO, 20); //Not a window

//--------SUPER FORM--------//

set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 1); //Starting up
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 10, AG_WINDOW_SFX, sound_get("uspecial_flyup"));
set_window_value(AT_USPECIAL, 10, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

set_window_value(AT_USPECIAL, 11, AG_WINDOW_TYPE, 1); //Teleport up
set_window_value(AT_USPECIAL, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_VSPEED, -50);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 11, AG_WINDOW_SFX, sound_get("uspecial_flying"));
set_window_value(AT_USPECIAL, 11, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 12, AG_WINDOW_TYPE, 1); //Quick stop
set_window_value(AT_USPECIAL, 12, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_VSPEED, -15);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 12, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 13, AG_WINDOW_TYPE, 1); //Missed grab
set_window_value(AT_USPECIAL, 13, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_CUSTOM_GRAVITY, 0);
set_window_value(AT_USPECIAL, 13, AG_WINDOW_GOTO, 16);

set_window_value(AT_USPECIAL, 14, AG_WINDOW_TYPE, 1); //Fly past and elbow
set_window_value(AT_USPECIAL, 14, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_VSPEED, 0); //Flying upwards in Attack Update
set_window_value(AT_USPECIAL, 14, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 14, AG_WINDOW_CUSTOM_GRAVITY, 0.9);

set_window_value(AT_USPECIAL, 15, AG_WINDOW_TYPE, 1); //Endlag of elbow
set_window_value(AT_USPECIAL, 15, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_ANIM_FRAME_START, 28);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_SFX, sound_get("uspecial_throw"));
set_window_value(AT_USPECIAL, 15, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_CUSTOM_GRAVITY, 1.5);
set_window_value(AT_USPECIAL, 15, AG_WINDOW_GOTO, 20); //Not a window

set_window_value(AT_USPECIAL, 16, AG_WINDOW_TYPE, 1); //Floating and blastin
set_window_value(AT_USPECIAL, 16, AG_WINDOW_LENGTH, 115);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_VSPEED, 5);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(AT_USPECIAL, 16, AG_WINDOW_CUSTOM_GRAVITY, -0.1);

set_window_value(AT_USPECIAL, 17, AG_WINDOW_TYPE, 1); //End floating
set_window_value(AT_USPECIAL, 17, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_CUSTOM_AIR_FRICTION, 9);
set_window_value(AT_USPECIAL, 17, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

//-----UNUSED FOLLOW UP-----//
/*
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1); //Follow up teleport gut punch back down
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 40);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX, sound_get("ARC_BTL_CMN_PC_AirDash"));
set_window_value(AT_USPECIAL, 7, AG_WINDOW_SFX_FRAME, 9);
*/

set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1); //Flying up hitbox
if (attack_button == 0){
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .1);
}
if (attack_button == 1){
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
}
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 42);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("uspecial_grab"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 3);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1); //Throw them down
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 6);
if (attack_button == 0){
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -95);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.1);
}
if (attack_button == 1){
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.5);
}
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 100);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("uspecial_hardthrow"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_TECHABLE, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 2); //Giga beam to hit the ground
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 100);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 200);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("rocket_hit"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("shine"));
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_HSPEED, -130);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_VSPEED, 90);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 110);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, true);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2); //Gigabeam big blast
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 100);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 150);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 500);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 11);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0); 
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 113);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 30);
//set_hitbox_value(AT_USPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("gigabeam_hitground"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("shine"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_UNBASHABLE, true);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_PLASMA_SAFE, true); 