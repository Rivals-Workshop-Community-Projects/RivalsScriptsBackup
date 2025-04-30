set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_start"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 6);

//Sweetspot
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Flip Active
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED, -10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);

//Endlag
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED, -3);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);

set_num_hitboxes(AT_DSPECIAL, 5);

//Sweetspot
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, 47);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -17);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 161);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_waterhit_heavy"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_GROUP, 1);

//Somersault Start 1
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 46);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 65);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.9);

//Somersault Start 1
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, 44);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -84);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 58);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_waterhit_heavy2"));
set_hitbox_value(AT_DSPECIAL, 3, HG_VISUAL_EFFECT, 195);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);

//Somersault End 1
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -95);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 110);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DSPECIAL, 4, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_GROUP, 1);

//Somersault End 2
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_X, 40);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_Y, -76);
set_hitbox_value(AT_DSPECIAL, 5, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 5, HG_HEIGHT, 65);
set_hitbox_value(AT_DSPECIAL, 5, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 5, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_ANGLE, 110);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 5, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
set_hitbox_value(AT_DSPECIAL, 5, HG_VISUAL_EFFECT, 6);
set_hitbox_value(AT_DSPECIAL, 5, HG_HITBOX_GROUP, 1);