set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 40);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 18);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.0);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 9);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 16);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HSPEED, 3);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);


set_num_hitboxes(AT_DSPECIAL_AIR, 2);

//set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 320);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("SMASH"));
//set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_TECHABLE, 2);

//set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 42);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, sound_get("hit6"));
//set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_TECHABLE, 1);