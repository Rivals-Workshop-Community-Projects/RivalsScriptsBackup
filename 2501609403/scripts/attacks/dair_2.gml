set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 5);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 0);
set_attack_value(AT_EXTRA_1, AG_AIR_SPRITE, sprite_get("dair"));
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));
set_attack_value(AT_EXTRA_1, AG_USES_CUSTOM_GRAVITY, 1);

//ok dissapearing now
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HSPEED, 0);

//I've dissapeared
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 10);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_VSPEED, 140);

//WOAH IM BACK ON THE FLOOR, okay im gonna spit you out now
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 24);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 4);

//Get spat out
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);

//ADD A RECOVERY WINDOW HERE DUMBUS
//Recovery :)
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 2);

set_num_hitboxes(AT_EXTRA_1, 1);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 61);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 94);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, fx_smallhit2 );
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, sound_get("bhit_medium_2"));