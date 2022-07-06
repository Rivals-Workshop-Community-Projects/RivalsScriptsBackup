set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 8);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8); //this is normal landing lag for a strong aerial
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

//startup window
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 14); //12>16
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_icehit_weak1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 13);

//active window 1
set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);


//Recoil window 1
set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_icehit_weak1"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 2);

//active window 2
set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);

//Recoil window 2
set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX, asset_get("sfx_icehit_weak1"));
set_window_value(AT_FAIR, 5, AG_WINDOW_SFX_FRAME, 2);

//active window 3
set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAME_START, 11);

//Recoil window 3
set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 5);

//recovery window, these should have whifflag if the move is a melee hitbox
set_window_value(AT_FAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_WHIFFLAG, true);

set_num_hitboxes(AT_FAIR, 3);

//set_hitbox_value(AT_FAIR, 1, HG_PARENT_HITBOX, 1);//use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 45);//44
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -32);//-33
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 52);//70
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 52);//70
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 45);//this is angle 45 hitting behind
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 4); //this is high knockback for an aerial
//set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .2); //this is high scaling for an aerial
//set_hitbox_value(AT_FAIR, 1, HG_EXTRA_HITPAUSE, 2); //4
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 2); //4
// set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .3); //note: multihits should usually never have hitpause scaling
//set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, shatter);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 9); //2
//set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -32);
//set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
//set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_icehit_medium1")); //hitplayer.gml

//set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);//use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 45);//44
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -23);//-33
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 52);//70
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 52);//70
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 270);//this is angle 45 hitting behind
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 4); //this is high knockback for an aerial
//set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .2); //this is high scaling for an aerial
//set_hitbox_value(AT_FAIR, 2, HG_EXTRA_HITPAUSE, 2); //4
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 2); //4
//set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, .3); //note: multihits should usually never have hitpause scaling
//set_hitbox_value(AT_FAIR, 2, HG_ANGLE_FLIPPER, 10); //2
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, shatter);
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
//set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
//set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, asset_get("sfx_icehit_medium1")); //hitplayer.gml

//set_hitbox_value(AT_FAIR, 3, HG_PARENT_HITBOX, 1);//use this line to make follow up hitboxes share values with this one, remove it if it should be different
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 45);//39
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -21);//-16
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 60);//75
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 60);//75
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);//this is angle 45 hitting behind
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 7); //this is high knockback for an aerial
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .7); //this is high scaling for an aerial
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .8);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, hfx_explode);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -32);
//set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_icehit_medium1")); //sfx_icehit_heavy1
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT, frost_fx);
