set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//Pre hit window
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 15);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);
//set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -4);

//Hitbox window
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
//set_window_value(AT_BAIR, 2, AG_WINDOW_HSPEED, -10);


//Recovery window
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
//set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_BAIR, 3, AG_WINDOW_HSPEED, 4);

//Lingering recoery window
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 4);

//=====================================
//Hitboxes
//======================================
set_num_hitboxes(AT_BAIR, 4);

//Sweet spot hitbox. Smaller, and shorter lifespan. This hitbox only affects
//aerial enemies
set_hitbox_value(AT_BAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_BAIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
/*
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 18);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 18);
*/
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -42);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 18);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 18);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 40); //Was 20
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 12);
//set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 112 );
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_BAIR, 1, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_BAIR, 1, HG_ANGLE_FLIPPER, 5);

//Sour spot hitbox. Larger and lasts longer, aerial enemies
set_hitbox_value(AT_BAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -19);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 37);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 40); //was 20
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.75);
//set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 111 );
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(AT_BAIR, 2, HG_GROUNDEDNESS, 0 );
set_hitbox_value(AT_BAIR, 2, HG_ANGLE_FLIPPER, 5);

//Sweet spot hitbox. Smaller, and shorter lifespan. Only affects grounded enemies
//The angle knockback is different from landing the hit on aerial enemies
/*
set_hitbox_value(AT_BAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
//set_hitbox_value(AT_BAIR, 3, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -42);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 18);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 18);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 1.3);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -10);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 110 );
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_BAIR, 3, HG_GROUNDEDNESS, 1 );
set_hitbox_value(AT_BAIR, 3, HG_ANGLE_FLIPPER, 5);
*/

//Sour spot, grounded enemies
/*
set_hitbox_value(AT_BAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 4, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_X, -19);
set_hitbox_value(AT_BAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_BAIR, 4, HG_WIDTH, 64);
set_hitbox_value(AT_BAIR, 4, HG_HEIGHT, 37);
set_hitbox_value(AT_BAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_BAIR, 4, HG_ANGLE, 40);
set_hitbox_value(AT_BAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 4, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_BAIR, 4, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_BAIR, 1, HG_HITSTUN_MULTIPLIER, 0.75);
//set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_X_OFFSET, -32);
set_hitbox_value(AT_BAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_BAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_BAIR, 4, HG_GROUNDEDNESS, 1 );
set_hitbox_value(AT_BAIR, 4, HG_ANGLE_FLIPPER, 5);
*/
