set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);

//start
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);

//atk
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);

//hold?? wait??
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_forsburn_disappear"));
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX_FRAME, 1);

//RISE
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 23);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -20);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -13);

//end
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 26);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);



//umbrella start
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, asset_get("sfx_ori_glide_featherout"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 7);

//umbrella atk
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);

//umbrella hold ... loop i guess
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 60);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);

//umbrella close GROUND
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 2);

//umbrella close AIR
set_window_value(AT_USPECIAL, 10, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);




set_num_hitboxes(AT_USPECIAL, 5); 

//start kick blast thing GROUNDED
//set_hitbox_value(AT_USPECIAL, 1, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 110);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);//maypul up b value
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0.5);//maypul up b value
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);//maypul up b value
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//start kick blast thing AERIAL, this is the spike
//set_hitbox_value(AT_USPECIAL, 2, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 22);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 56);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, -90);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 3);//etalus up b value
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);//etalus up b value
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 9);//8
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.6);//0.4
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 112);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));



//rise kick EARLY
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 52);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, 0.8);//0.7
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);//maypul up b value
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0.7);//maypul up b value
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//rise kick LATE (weak)
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 16);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -70);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 42);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 90);//80
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);//ranno up b value
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, 0.2);//ranno up b value
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 5);//ranno up b value
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, 0.2);//ranno up b value
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));


//umbrella openned
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 85);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_NAME, "umbrella open start");
set_hitbox_value(AT_USPECIAL, 5, HG_MUNO_HITBOX_MISC_ADD, "no im not going to put an umbrella active hitbox im too lazy");

//im not going to put an umbrella active hitbox im too lazy







