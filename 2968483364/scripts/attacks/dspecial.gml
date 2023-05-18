set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


/* 
 * LET ME FEEL THE POWEEER
 * THAT CAN RIP ME TO SHREEEEEEEDS.
 * CAN'T LAST ONE MORE HOUR, HOW SOON WILL I MEET
 * MY EEEEEND.
 */

/*for(var j = 0; j < 8; j++){
    set_window_value(AT_DSPECIAL, j+1, AG_WINDOW_CUSTOM_GRAVITY, 0);
}*/

//startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_ell_strong_attack_explosion"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);

//multihits
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);

//endlag
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);

//disappear
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);

//reappear
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 26);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX, asset_get("sfx_ori_energyhit_light"));
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_SFX_FRAME, 1);
//wing flap
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 7);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_CUSTOM_GRAVITY, 0.2);

set_num_hitboxes(AT_DSPECIAL, 9);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -55);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 69);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 158);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 4.5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 3);

for(var i = 0; i < 8; i++){
    set_hitbox_value(AT_DSPECIAL, i+1, HG_PARENT_HITBOX, 1);
    set_hitbox_value(AT_DSPECIAL, i+1, HG_HITBOX_TYPE, 1);
    set_hitbox_value(AT_DSPECIAL, i+1, HG_WINDOW, 3);
    set_hitbox_value(AT_DSPECIAL, i+1, HG_WINDOW_CREATION_FRAME, i*4);
    set_hitbox_value(AT_DSPECIAL, i+1, HG_LIFETIME, 2);
    set_hitbox_value(AT_DSPECIAL, i+1, HG_HITBOX_X, 0);
    set_hitbox_value(AT_DSPECIAL, i+1, HG_HITBOX_Y, -55);
    set_hitbox_value(AT_DSPECIAL, i+1, HG_HITBOX_GROUP, -1);
}

set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 9, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL, 9, HG_WIDTH, 79);
set_hitbox_value(AT_DSPECIAL, 9, HG_HEIGHT, 174);
set_hitbox_value(AT_DSPECIAL, 9, HG_PRIORITY, 5);
set_hitbox_value(AT_DSPECIAL, 9, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 9, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 9, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 9, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 9, HG_HITPAUSE_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 9, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(AT_DSPECIAL, 9, HG_TECHABLE, 0);
set_hitbox_value(AT_DSPECIAL, 9, HG_HIT_LOCKOUT, 5);