set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);
set_attack_value(AT_USTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

cat_attack_spr[AT_USTRONG] = sprite_get("cat_ustrong");
cat_attack_hurtbox_spr[AT_USTRONG] = sprite_get("cat_ustrong_hurt");
cat_window_amount[AT_USTRONG] = 4;
cat_window_min[AT_USTRONG] = 5;
cat_window_max[AT_USTRONG] = 8;
cat_hitbox_amount[AT_USTRONG] = 3;
cat_window_hitbox_min[AT_USTRONG] = 4;
cat_window_hitbox_max[AT_USTRONG] = 6;

//For Mitama
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.1);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 12);

//For Cat
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);

set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_USTRONG, 6, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 28);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HAS_WHIFFLAG, 12);

set_num_hitboxes(AT_USTRONG,3);

//For Mitama

//Early
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 46);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 69);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 48);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, -4);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Good
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -66);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 100);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 2, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 2, HG_VISUAL_EFFECT_Y_OFFSET, -56);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Late
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -36);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 69);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 48);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 3, HG_VISUAL_EFFECT_X_OFFSET, -4);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//For Cat

//Early
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, 28);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 58);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 36);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 75);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 4, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 4, HG_VISUAL_EFFECT_X_OFFSET, -4);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Good
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 5, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USTRONG, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 5, HG_HITBOX_Y, -50);
set_hitbox_value(AT_USTRONG, 5, HG_WIDTH, 86);
set_hitbox_value(AT_USTRONG, 5, HG_HEIGHT, 46);
set_hitbox_value(AT_USTRONG, 5, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 5, HG_DAMAGE, 9);
set_hitbox_value(AT_USTRONG, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USTRONG, 5, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_USTRONG, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 5, HG_VISUAL_EFFECT_Y_OFFSET, -40);
set_hitbox_value(AT_USTRONG, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

//Late
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG, 6, HG_WINDOW_CREATION_FRAME, 7);
set_hitbox_value(AT_USTRONG, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_X, -28);
set_hitbox_value(AT_USTRONG, 6, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USTRONG, 6, HG_WIDTH, 42);
set_hitbox_value(AT_USTRONG, 6, HG_HEIGHT, 36);
set_hitbox_value(AT_USTRONG, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG, 6, HG_DAMAGE, 7);
set_hitbox_value(AT_USTRONG, 6, HG_ANGLE, 105);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG, 6, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG, 6, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USTRONG, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 6, HG_VISUAL_EFFECT_X_OFFSET, -4);
set_hitbox_value(AT_USTRONG, 6, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));