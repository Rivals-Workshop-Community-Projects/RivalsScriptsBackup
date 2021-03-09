set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 10);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

cat_attack_spr[AT_FSTRONG] = sprite_get("cat_fstrong");
cat_attack_hurtbox_spr[AT_FSTRONG] = sprite_get("cat_fstrong_hurt");
cat_window_amount[AT_FSTRONG] = 10;
cat_window_min[AT_FSTRONG] = 11;
cat_window_max[AT_FSTRONG] = 20;
cat_hitbox_amount[AT_FSTRONG] = 3;
cat_window_hitbox_min[AT_FSTRONG] = 7;
cat_window_hitbox_max[AT_FSTRONG] = 9;
 
//For Mitama
set_window_value(AT_FSTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
 
//Straight
set_window_value(AT_FSTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//Down
set_window_value(AT_FSTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 7, AG_WINDOW_HAS_WHIFFLAG, 1);

//Up
set_window_value(AT_FSTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_FSTRONG, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSTRONG, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

//For Cat
set_window_value(AT_FSTRONG, 11, AG_WINDOW_TYPE, 9);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 11, AG_WINDOW_ANIM_FRAMES, 1);
 
//Straight
set_window_value(AT_FSTRONG, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 12, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 13, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSTRONG, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG, 14, AG_WINDOW_HAS_WHIFFLAG, 1);

//Down
set_window_value(AT_FSTRONG, 15, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 15, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 16, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 16, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FSTRONG, 17, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSTRONG, 17, AG_WINDOW_HAS_WHIFFLAG, 1);

//Up
set_window_value(AT_FSTRONG, 18, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSTRONG, 18, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(AT_FSTRONG, 19, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 19, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_FSTRONG, 20, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_LENGTH, 24);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_FSTRONG, 20, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSTRONG, 6);
// (first hitbox is base, second hitbox is tipper)
//For Mitama

//Straight
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 1, HG_WIDTH, 44);
set_hitbox_value(AT_FSTRONG, 1, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, 1, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSTRONG, 1, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 1, HG_HITBOX_TYPE, 1);

set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSTRONG, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSTRONG, 2, HG_WIDTH, 48);
set_hitbox_value(AT_FSTRONG, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 2, HG_ANGLE, 60);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FSTRONG, 2, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG, 2, HG_VISUAL_EFFECT, 305);
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG, 2, HG_HIT_LOCKOUT, 10);

//Down
set_hitbox_value(AT_FSTRONG, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 3, HG_HITBOX_Y, -18);
set_hitbox_value(AT_FSTRONG, 3, HG_ANGLE, 55);

set_hitbox_value(AT_FSTRONG, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 4, HG_WINDOW, 6);
set_hitbox_value(AT_FSTRONG, 4, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSTRONG, 4, HG_HITBOX_Y, -14);
set_hitbox_value(AT_FSTRONG, 4, HG_ANGLE, 55);

//Up
set_hitbox_value(AT_FSTRONG, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 5, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 5, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSTRONG, 5, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 5, HG_ANGLE, 75);

set_hitbox_value(AT_FSTRONG, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 6, HG_WINDOW, 9);
set_hitbox_value(AT_FSTRONG, 6, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_X, 64);
set_hitbox_value(AT_FSTRONG, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_FSTRONG, 6, HG_ANGLE, 75);

//For Cat

//Straight
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_WINDOW, 13);
set_hitbox_value(AT_FSTRONG, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSTRONG, 7, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, 7, HG_HEIGHT, 32);
set_hitbox_value(AT_FSTRONG, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FSTRONG, 7, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG, 7, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSTRONG, 7, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_FSTRONG, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_FSTRONG, 7, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_FSTRONG, 7, HG_HITBOX_TYPE, 1);

//Down
set_hitbox_value(AT_FSTRONG, 8, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 8, HG_WINDOW, 16);
set_hitbox_value(AT_FSTRONG, 8, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG, 8, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG, 8, HG_ANGLE, 30);

//Up
set_hitbox_value(AT_FSTRONG, 9, HG_PARENT_HITBOX, 7);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG, 9, HG_WINDOW, 19);
set_hitbox_value(AT_FSTRONG, 9, HG_LIFETIME, 5);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_X, 26);
set_hitbox_value(AT_FSTRONG, 9, HG_HITBOX_Y, -35);
set_hitbox_value(AT_FSTRONG, 9, HG_ANGLE, 60);

