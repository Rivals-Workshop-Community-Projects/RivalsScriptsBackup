set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("dspecial_air_hurt"));

//startup/reset momentum
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("sm64_groundpound"));

//lift
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_VSPEED, -1);

//fall reset hsp
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL, 3, AG_WINDOW_HITPAUSE_FRAME, 7);

//fall loop
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL, 4, AG_WINDOW_HITPAUSE_FRAME, 7);

//slam !
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//endlag
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_GOTO, 10);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 9);

//boiiing (unused cuz bouncing was fun but overcentralizing)
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL, 7, AG_WINDOW_VSPEED, -10);

set_num_hitboxes(AT_DSPECIAL, 2);

set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 40);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_PARTICLE_NUM, 3);

//GROUNDED SHOCKWAVE
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Shockwave");
set_hitbox_value(AT_DSPECIAL, 2, HG_MUNO_HITBOX_MISC_ADD, "Only activates if the falling hit whiffs");
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_X, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_DSPECIAL, 2, HG_WIDTH, 175);
set_hitbox_value(AT_DSPECIAL, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_DSPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL, 2, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL, 2, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_DSPECIAL, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSPECIAL, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DSPECIAL, 2, HG_HIT_PARTICLE_NUM, 1);