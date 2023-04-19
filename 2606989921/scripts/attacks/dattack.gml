set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_syl_uspecial_travel_start"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH) - 1);

//rising
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed*2.6);

//peak
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed*1.2);

//fall
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CANCEL_FRAME, 16); //Jumpcancellable after this point
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed*1.2);

//Landing
set_window_value(AT_DATTACK, 5, AG_WINDOW_SFX, sound_get("octazooka"));
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);


set_num_hitboxes(AT_DATTACK, 3);

//early
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, get_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 64);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_orca_crunch"));
set_hitbox_value(AT_DATTACK, 1, HG_HIT_LOCKOUT, 5);

//late
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 65535);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 56);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 56);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_orca_crunch"));
set_hitbox_value(AT_DATTACK, 2, HG_HIT_LOCKOUT, 5);

//land
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 120);
set_hitbox_value(AT_DATTACK, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 20);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DATTACK, 3, HG_HIT_LOCKOUT, 5);