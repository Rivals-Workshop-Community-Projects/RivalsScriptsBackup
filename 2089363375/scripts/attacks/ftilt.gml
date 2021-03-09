set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

cat_attack_spr[AT_FTILT] = sprite_get("cat_ftilt");
cat_attack_hurtbox_spr[AT_FTILT] = sprite_get("cat_ftilt_hurt");
cat_window_amount[AT_FTILT] = 4;
cat_window_min[AT_FTILT] = 5;
cat_window_max[AT_FTILT] = 8;
cat_hitbox_amount[AT_FTILT] = 2;
cat_window_hitbox_min[AT_FTILT] = 3;
cat_window_hitbox_max[AT_FTILT] = 4;

//For Mitama
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

//For Cat
set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FTILT, 5, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FTILT, 6, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FTILT, 8, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FTILT,2);

//For Mitama
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 26);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 64);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 44);
set_hitbox_value(AT_FTILT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 1, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_FTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 2, HG_ANGLE_FLIPPER, 6);

//For Cat
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 3, HG_WINDOW, 6);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 20);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 34);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 75);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FTILT, 3, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 3, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_FTILT, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 4, HG_WINDOW, 7);
set_hitbox_value(AT_FTILT, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_Y, -40);
set_hitbox_value(AT_FTILT, 4, HG_WIDTH, 74);
set_hitbox_value(AT_FTILT, 4, HG_HEIGHT, 48);
set_hitbox_value(AT_FTILT, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 4, HG_ANGLE, 361);
set_hitbox_value(AT_FTILT, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_FTILT, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FTILT, 4, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FTILT, 4, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_FTILT, 4, HG_HIT_LOCKOUT, 6);
set_hitbox_value(AT_FTILT, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FTILT, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FTILT, 4, HG_ANGLE_FLIPPER, 6);