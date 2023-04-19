set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(AT_FSTRONG, AG_CATEGORY, 0);
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);

var ig = 1;

//Forward Special Charge
set_window_value(AT_FSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_LENGTH, 15); //Riptide Update, from 10
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_SFX, asset_get("sfx_absa_concentrate"));

ig++;

//Forward Special Release Lag
set_window_value(AT_FSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 4);

ig++;

//Forward Special Start
set_window_value(AT_FSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSTRONG, ig, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_FSTRONG, ig, AG_WINDOW_SFX, asset_get("sfx_ori_bash_use"));

ig++;

//Forward Special Hit
set_window_value(AT_FSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_HSPEED, 3);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 6);

ig++;

//Forward Special End
set_window_value(AT_FSTRONG, ig, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_LENGTH, 20); //UPDATE 1-1-2023, 15 to 20
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, ig, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 3);
ig = 1;

//Sweetspot
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, ig, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, ig, HG_LIFETIME, 3);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_Y, -23);
set_hitbox_value(AT_FSTRONG, ig, HG_WIDTH, 31);
set_hitbox_value(AT_FSTRONG, ig, HG_HEIGHT, 29);
set_hitbox_value(AT_FSTRONG, ig, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, ig, HG_DAMAGE, 17); //UPDATE 1-1-2023, 13 to 17
set_hitbox_value(AT_FSTRONG, ig, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, ig, HG_BASE_KNOCKBACK, 9); //UPDATE 1-1-2023, 13 to 17
set_hitbox_value(AT_FSTRONG, ig, HG_KNOCKBACK_SCALING, 1.1); //UPDATE 1-1-2023, 13 to 17
set_hitbox_value(AT_FSTRONG, ig, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_FSTRONG, ig, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG, ig, HG_HIT_LOCKOUT, 14);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FSTRONG, ig, HG_ANGLE_FLIPPER, 0);

ig++;

//Punch
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, ig, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, ig, HG_LIFETIME, 3); //UPDATE 1-1-2023, 10 to 3
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_X, 59);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_Y, -25);
set_hitbox_value(AT_FSTRONG, ig, HG_WIDTH, 60);
set_hitbox_value(AT_FSTRONG, ig, HG_HEIGHT, 48); //from 60
set_hitbox_value(AT_FSTRONG, ig, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, ig, HG_DAMAGE, 13); //UPDATE 1-1-2023, 10 to 13
set_hitbox_value(AT_FSTRONG, ig, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, ig, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, ig, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_FSTRONG, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, ig, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_FSTRONG, ig, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, ig, HG_ANGLE_FLIPPER, 0);

ig++;

/*
//Sour
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSTRONG, ig, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, ig, HG_LIFETIME, 10);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_X, 43);
set_hitbox_value(AT_FSTRONG, ig, HG_HITBOX_Y, -55);
set_hitbox_value(AT_FSTRONG, ig, HG_WIDTH, 83);
set_hitbox_value(AT_FSTRONG, ig, HG_HEIGHT, 110);
set_hitbox_value(AT_FSTRONG, ig, HG_SHAPE, 0);
set_hitbox_value(AT_FSTRONG, ig, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, ig, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, ig, HG_ANGLE, 70);
set_hitbox_value(AT_FSTRONG, ig, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSTRONG, ig, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FSTRONG, ig, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSTRONG, ig, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG, ig, HG_HIT_LOCKOUT, 20);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSTRONG, ig, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, ig, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSTRONG, ig, HG_ANGLE_FLIPPER, 1);
*/