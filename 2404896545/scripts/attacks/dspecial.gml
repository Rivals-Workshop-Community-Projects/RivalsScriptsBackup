set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

//Start
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 40);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED, -12);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("two4"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

//Going down
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 600);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, 25);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

//Hits the ground
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_tow_anchor_land"));


set_num_hitboxes(AT_DSPECIAL, 4);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 20);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_hitbox_value(AT_DSPECIAL, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 600);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 3);

set_hitbox_value(AT_DSPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_DSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL, 3, HG_LIFETIME, 39);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_X, -4);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITBOX_Y, -120);
set_hitbox_value(AT_DSPECIAL, 3, HG_WIDTH, 70);
set_hitbox_value(AT_DSPECIAL, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_DSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL, 3, HG_DAMAGE, 15);
set_hitbox_value(AT_DSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 3, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL, 3, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));

set_hitbox_value(AT_DSPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL, 4, HG_LIFETIME, 600);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_X, -2);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITBOX_Y, -18);
set_hitbox_value(AT_DSPECIAL, 4, HG_WIDTH, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_HEIGHT, 45);
set_hitbox_value(AT_DSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_DSPECIAL, 4, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 4, HG_DAMAGE, 13);
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE, 290);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DSPECIAL, 4, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_DSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy2"));
set_hitbox_value(AT_DSPECIAL, 4, HG_ANGLE_FLIPPER, 3);