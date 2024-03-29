set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

// Flame first flares out
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0);

// Constant flame
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

// No flame
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);

// Penalty Zone
set_window_value(AT_USPECIAL, penalty_window, AG_WINDOW_LENGTH, max_penalty_frames);


set_num_hitboxes(AT_USPECIAL, 0);


/*
// Vertical boost

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_may_arc_cointoss"));
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -28);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);
//set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_CUSTOM_GRAVITY, 5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_num_hitboxes(AT_USPECIAL_2, 0);
*/





/*
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 6);

set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 4, AG_WINDOW_SFX, asset_get("sfx_sand_screech"));

set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .1);


set_num_hitboxes(AT_USPECIAL_2, 5);

set_hitbox_value(AT_USPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "Multihit 2");

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 3, HG_MUNO_HITBOX_NAME, "Multihit 3");

set_hitbox_value(AT_USPECIAL_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 4, HG_MUNO_HITBOX_NAME, "Multihit 4");

set_hitbox_value(AT_USPECIAL_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_USPECIAL_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_USPECIAL_2, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_NAME, "Launcher");

set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_LIFETIME, 10);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HITBOX_Y, -33);
set_hitbox_value(AT_USPECIAL_2, 5, HG_WIDTH, 125);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HEIGHT, 125);
set_hitbox_value(AT_USPECIAL_2, 5, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_2, 5, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 5, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL_2, 5, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL_2, 5, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL_2, 5, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL_2, 5, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_GROUP, -1);



set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_MISC_ADD, "Flight loop lasts up to " + string(get_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH) * 11) + " frames. Canceling endlag lasts " + string(get_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH)) + " frames. Duration measured by immediately performing the launcher attack. Launcher active frames measured from point when button is pressed. Endlag measured after launcher hit.");
set_attack_value(AT_USPECIAL_2, AG_MUNO_ATTACK_ENDLAG, string(get_window_value(AT_USPECIAL_2, 6, AG_WINDOW_LENGTH)));
set_hitbox_value(AT_USPECIAL_2, 5, HG_MUNO_HITBOX_ACTIVE, "4-13");
*/