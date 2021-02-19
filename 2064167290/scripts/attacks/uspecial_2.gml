set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("uspecial2"));
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("uspecial2_hurt"));
set_attack_value(AT_USPECIAL_2, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL_2, AG_LANDING_LAG, 15);

set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 4);

// leaving to a better world
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, sound_get("specterleave"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 0);



// emerging
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_infinidagger"));
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX_FRAME, 0);

// King knight open arm
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_SFX_FRAME, 0);

// falling to pratfall
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 32);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.15);


set_num_hitboxes(AT_USPECIAL_2, 3);

set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW,1)
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME,3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 55);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 14);
set_hitbox_value(AT_USPECIAL_2, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, 1);


set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW,2)
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME,14);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 1.1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW,3)
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME,6);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WIDTH, 72);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HEIGHT, 72);
set_hitbox_value(AT_USPECIAL_2, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USPECIAL_2, 3, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL_2, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITPAUSE_SCALING, 1.5);
set_hitbox_value(AT_USPECIAL_2, 3, HG_GROUNDEDNESS, 0);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_LOCKOUT, 4);
set_hitbox_value(AT_USPECIAL_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, 3);












