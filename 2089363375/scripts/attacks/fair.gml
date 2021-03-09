set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));

cat_attack_spr[AT_FAIR] = sprite_get("cat_fair");
cat_attack_hurtbox_spr[AT_FAIR] = sprite_get("cat_fair_hurt");
cat_window_amount[AT_FAIR] = 5;
cat_window_min[AT_FAIR] = 6;
cat_window_max[AT_FAIR] = 10;
cat_hitbox_amount[AT_FAIR] = 4;
cat_window_hitbox_min[AT_FAIR] = 5;
cat_window_hitbox_max[AT_FAIR] = 8;

//For Mitama
set_window_value(AT_FAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_VSPEED, -2.5);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_FAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 3, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

//For Cat
set_window_value(AT_FAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FAIR, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 6, AG_WINDOW_VSPEED, -2.5);
set_window_value(AT_FAIR, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_FAIR, 6, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 7, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 8, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_FAIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_FAIR, 8, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_FAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 9, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FAIR, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FAIR, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 10, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FAIR, 10, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FAIR, 4);

//For Mitama
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -64);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 46);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 36);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 1, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_FAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 36);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 36);

set_hitbox_value(AT_FAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_X, 9);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_FAIR, 3, HG_WIDTH, 50);
set_hitbox_value(AT_FAIR, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_FAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FAIR, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 3, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_FAIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(AT_FAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FAIR, 4, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FAIR, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FAIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 4, HG_WIDTH, 46);
set_hitbox_value(AT_FAIR, 4, HG_HEIGHT, 36);

//For Cat
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 5, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_X, 22);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 5, HG_WIDTH, 36);
set_hitbox_value(AT_FAIR, 5, HG_HEIGHT, 24);
set_hitbox_value(AT_FAIR, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 5, HG_ANGLE, 75);
set_hitbox_value(AT_FAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FAIR, 5, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 5, HG_HITPAUSE_SCALING, .1);
set_hitbox_value(AT_FAIR, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 5, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FAIR, 5, HG_ANGLE_FLIPPER, 7);

set_hitbox_value(AT_FAIR, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 6, HG_WINDOW, 7);
set_hitbox_value(AT_FAIR, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_X, 18);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 6, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 6, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, 6, HG_HEIGHT, 34);

set_hitbox_value(AT_FAIR, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 7, HG_WINDOW, 9);
set_hitbox_value(AT_FAIR, 7, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_X, 4);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_Y, -42);
set_hitbox_value(AT_FAIR, 7, HG_WIDTH, 38);
set_hitbox_value(AT_FAIR, 7, HG_HEIGHT, 26);
set_hitbox_value(AT_FAIR, 7, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 7, HG_DAMAGE, 4);
set_hitbox_value(AT_FAIR, 7, HG_ANGLE, 45);
set_hitbox_value(AT_FAIR, 7, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FAIR, 7, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 7, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FAIR, 7, HG_HITPAUSE_SCALING, .55);
set_hitbox_value(AT_FAIR, 7, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(AT_FAIR, 7, HG_VISUAL_EFFECT_Y_OFFSET, -4);
set_hitbox_value(AT_FAIR, 7, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_FAIR, 8, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 8, HG_WINDOW, 9);
set_hitbox_value(AT_FAIR, 8, HG_LIFETIME, 3);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_X, 24);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FAIR, 8, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FAIR, 8, HG_WIDTH, 32);
set_hitbox_value(AT_FAIR, 8, HG_HEIGHT, 34);