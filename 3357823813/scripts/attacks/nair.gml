set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

//Startup
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_cape_swipe"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 9);

//Active
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Active (Sourspot)
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//Endlag
set_window_value(AT_NAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR, 6);

//Body Hitbox (Sweetspot)
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 65);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 304);

//Wing Right (Sweetspot)
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 92);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -64);
set_hitbox_value(AT_NAIR, 2, HG_WIDTH, 120);
set_hitbox_value(AT_NAIR, 2, HG_HEIGHT, 85);
set_hitbox_value(AT_NAIR, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Left Right (Sweetspot)
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, -67);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -113);
set_hitbox_value(AT_NAIR, 3, HG_WIDTH, 100);
set_hitbox_value(AT_NAIR, 3, HG_HEIGHT, 86);
set_hitbox_value(AT_NAIR, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_NAIR, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_NAIR, 3, HG_ANGLE, 130);
set_hitbox_value(AT_NAIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 3, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NAIR, 3, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_NAIR, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));

//Body Hitbox (Sourspot)
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 9);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 11);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -74);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 107);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 63);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 6);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 60);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_NAIR, 4, HG_ANGLE_FLIPPER, 6);

//Wing Right (Sourspot)
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 5, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 5, HG_LIFETIME, 9);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_X, 94);
set_hitbox_value(AT_NAIR, 5, HG_HITBOX_Y, -64);
set_hitbox_value(AT_NAIR, 5, HG_WIDTH, 114);
set_hitbox_value(AT_NAIR, 5, HG_HEIGHT, 79);
set_hitbox_value(AT_NAIR, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 5, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 5, HG_ANGLE, 50);
set_hitbox_value(AT_NAIR, 5, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 5, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 5, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 5, HG_HIT_SFX, asset_get("sfx_blow_medium1"));

//Left Right (Sourspot)
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 6, HG_WINDOW, 3);
set_hitbox_value(AT_NAIR, 6, HG_LIFETIME, 9);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_X, -67);
set_hitbox_value(AT_NAIR, 6, HG_HITBOX_Y, -104);
set_hitbox_value(AT_NAIR, 6, HG_WIDTH, 93);
set_hitbox_value(AT_NAIR, 6, HG_HEIGHT, 73);
set_hitbox_value(AT_NAIR, 6, HG_PRIORITY, 4);
set_hitbox_value(AT_NAIR, 6, HG_DAMAGE, 4);
set_hitbox_value(AT_NAIR, 6, HG_ANGLE, 130);
set_hitbox_value(AT_NAIR, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NAIR, 6, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_NAIR, 6, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_NAIR, 6, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_NAIR, 6, HG_HIT_SFX, asset_get("sfx_blow_medium1"));