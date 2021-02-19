set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 5);
//set_attack_value(AT_FSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("fspecial_air"));
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
//set_attack_value(AT_FSPECIAL_AIR, AG_USES_CUSTOM_GRAVITY, 1); //air version should fall slowly.


//startup.
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 13);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("tool_drawer_edited_by_mixkit"));
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 6);

//startup w. gun 1
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//startup w. gun 2
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//hold onto gun until hit or jump-cancelled.
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 60);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 9);
//halt movement when this move's armor activates.
//set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.01);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.01);

//cooldown
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);

set_num_hitboxes(AT_FSPECIAL_AIR, 1);


//melee hit
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 23);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 5); 
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SDI_MULTIPLIER, 1);

set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304 ); //"basic large"
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

