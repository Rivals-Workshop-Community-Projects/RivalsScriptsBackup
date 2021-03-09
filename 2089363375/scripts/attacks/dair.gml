set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 3);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

cat_attack_spr[AT_DAIR] = sprite_get("cat_dair");
cat_attack_hurtbox_spr[AT_DAIR] = sprite_get("cat_dair_hurt");
cat_window_amount[AT_DAIR] = 7;
cat_window_min[AT_DAIR] = 8;
cat_window_max[AT_DAIR] = 14;
cat_hitbox_amount[AT_DAIR] = 3;
cat_window_hitbox_min[AT_DAIR] = 4;
cat_window_hitbox_max[AT_DAIR] = 6;

//For Mitama
set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, 3.5);
set_window_value(AT_DAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 4 , AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.4);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

set_window_value(AT_DAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 7, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DAIR, 7, AG_WINDOW_CUSTOM_GRAVITY, 0.4);

//For Cat
set_window_value(AT_DAIR, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_VSPEED, 3.5);
set_window_value(AT_DAIR, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 8, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 8, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 9, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(AT_DAIR, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 10, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 10, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_DAIR, 10, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 11, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_DAIR, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 12, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 12, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 12, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 12, AG_WINDOW_VSPEED, -1);
set_window_value(AT_DAIR, 12, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 12, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_DAIR, 12, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 13, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 13, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 13, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 13, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DAIR, 14, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 14, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 14, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 14, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DAIR,3);

//For Mitama
set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 56);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3);

//For Cat
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 9);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 38);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(AT_DAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 6);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 11);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 13);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 6, HG_WIDTH, 42);
set_hitbox_value(AT_DAIR, 6, HG_HEIGHT, 56);
set_hitbox_value(AT_DAIR, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_DAIR, 6, HG_ANGLE, 90);
set_hitbox_value(AT_DAIR, 6, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DAIR, 6, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DAIR, 6, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 3);