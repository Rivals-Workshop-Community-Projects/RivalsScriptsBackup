set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//Startup
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 10);

//Active
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Endlag
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 22);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_BAIR, 3);

//Tridentless Punch
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -48);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 67);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 7);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Trident Hit Sourspot
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -64);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -41);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 94);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

//Trident Hit Sweetspot
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -117);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -42);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 25);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 12);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 135);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 13);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));