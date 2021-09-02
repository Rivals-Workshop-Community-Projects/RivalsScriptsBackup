set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 5);


//startup
set_window_value(AT_UAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_UAIR, 1, AG_WINDOW_HSPEED, 0);
//set_window_value(AT_UAIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

//forward
set_window_value(AT_UAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UAIR, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_UAIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED, -16);
set_window_value(AT_UAIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_light1"));

//active
set_window_value(AT_UAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_UAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UAIR, 3, AG_WINDOW_HSPEED, -5);
set_window_value(AT_UAIR, 3, AG_WINDOW_HSPEED_TYPE, 0);

//retract
set_window_value(AT_UAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_UAIR, 4, AG_WINDOW_HSPEED, -16);
set_window_value(AT_UAIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED, 32);
set_window_value(AT_UAIR, 4, AG_WINDOW_VSPEED_TYPE, 1);

//recovery
set_window_value(AT_UAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_UAIR, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_UAIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED, 8);
set_window_value(AT_UAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_UAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


//hitboxes
set_num_hitboxes(AT_UAIR, 1);

set_hitbox_value(AT_UAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -22);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 240);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_UAIR, 1, HG_EFFECT, 3);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_ell_utilt_fire"));

