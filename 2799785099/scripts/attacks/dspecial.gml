set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 9);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

//Startup
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 5);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_cutter_spin2"));
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_SFX_FRAME, 2);

//Active
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .005);

set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .005);

set_window_value(AT_DSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .005);

set_window_value(AT_DSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .005);

set_window_value(AT_DSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 9);

//Endlag

set_window_value(AT_DSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DSPECIAL, 8, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

set_window_value(AT_DSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_DSPECIAL, 9, AG_WINDOW_HAS_WHIFFLAG, 0);

set_num_hitboxes(AT_DSPECIAL, 7);

set_hitbox_value(AT_DSPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 116);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, .75);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 10);

set_hitbox_value(AT_DSPECIAL, 7, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_WINDOW, 7);
set_hitbox_value(AT_DSPECIAL, 7, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_Y, -28);
set_hitbox_value(AT_DSPECIAL, 7, HG_WIDTH, 128);
set_hitbox_value(AT_DSPECIAL, 7, HG_HEIGHT, 56);
set_hitbox_value(AT_DSPECIAL, 7, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 7, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 7, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_DSPECIAL, 7, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL, 7, HG_HIT_SFX, sound_get("sfx_finalcutter_land"));
set_hitbox_value(AT_DSPECIAL, 7, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 7, HG_HITBOX_GROUP, -1);