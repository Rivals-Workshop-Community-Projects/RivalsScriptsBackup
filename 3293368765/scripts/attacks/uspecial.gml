set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
// set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

var win_num = 1;

//Startup
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX, sound_get("us_spin"));
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX_FRAME, 8);
win_num++;

//Active
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 8);//14
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 4);//8
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED, 6)
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED, -10.5);
win_num++;

//Initial Cancel Window
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 22);//16
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 7);//3
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 8);//12
win_num++;

//Endlag
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 15);
win_num++;

//Landing Lag
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, prat_land_time + 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 17);
win_num++;

//--- Cancel 

//Down Attack
tn_uspec_down_window = win_num;
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX, sound_get("us_dive")); //asset_get("sfx_absa_whip_charge")
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX_FRAME, 9);//1
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED, 7);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED, 12);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 23);
// set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HAS_SFX, 1);
// set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX, sound_get("us_dive"));
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 26);
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 26);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED, -2.5);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED, -8);
win_num++;

//Forward Attack -- Grab
tn_uspec_side_window = win_num;
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 29);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 31);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX, sound_get("us_lunge"));
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED, 7 + (has_rune("D")) * 3);
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 36);
win_num++;

//Forward Attack -- Throw
tn_uspec_throw_window = win_num;
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 38);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 42);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
win_num++;

// set_window_value(AT_USPECIAL, win_num, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 43);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
win_num++;

//Up Attack
tn_uspec_up_window = win_num;
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 49);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX, sound_get("us_upward"));
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_SFX_FRAME, 7);
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 53);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_HSPEED, 3);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_VSPEED, -8 - (has_rune("D")) * 4);
win_num++;

set_window_value(AT_USPECIAL, win_num, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL, win_num, AG_WINDOW_ANIM_FRAME_START, 56);


set_num_hitboxes(AT_USPECIAL, 7);

var hbox_num = 1;

//Hitbox 1 (Flip)
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 55);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 75);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DRIFT_MULTIPLIER, 1 - (has_rune("D") * .9));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT, 21);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITSTUN_MULTIPLIER, .6 + (has_rune("D") * .4));
hbox_num++;

//Hitbox 2 (Down Attack)
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, tn_uspec_down_window + 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, get_window_value(AT_USPECIAL, tn_uspec_down_window+1, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, 12); 
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, -29);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT, 21);
// set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_GROUP, 1);
hbox_num++;

//Hitbox 3 (Down Attack, Sweet Spot)
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, tn_uspec_down_window + 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_X, 28);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, 8);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 280);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_KNOCKBACK_SCALING, .55 + (has_rune("D") * .55));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT, fx_special);
// set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_GROUP, 1);
hbox_num++;

//Hitbox 4 (Upward Attack)
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, tn_uspec_up_window + 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_X, 30);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 45);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 120);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 9);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_KNOCKBACK_SCALING, .85 + (has_rune("D")) * .35);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT, fx_special);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_GROUP, 1);
hbox_num++;

//Hitbox 5 (Grab)
tn_uspec_grab_box_num = hbox_num;
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, tn_uspec_side_window + 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_X, 40);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 48);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, sound_get("us_grab"));
hbox_num++;

//Hitbox 6 (Throw)
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, tn_uspec_throw_window + 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, get_window_value(AT_USPECIAL, tn_uspec_throw_window+1, AG_WINDOW_LENGTH));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_X, 25);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_KNOCKBACK_SCALING, 0.55 + (has_rune("D") * .55));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, sound_get("us_throw"));
hbox_num++;

//Hitbox 7 (Down Attack, Sourspot 2)
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, tn_uspec_down_window + 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, 4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_X, 28);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, 8);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 30);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 6);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT, 21);
// set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_GROUP, 1);
hbox_num++;