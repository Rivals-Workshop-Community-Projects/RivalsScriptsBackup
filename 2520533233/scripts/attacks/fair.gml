set_attack_value(AT_FAIR, AG_CATEGORY, 1);
set_attack_value(AT_FAIR, AG_SPRITE, sprite_get("fair"));
set_attack_value(AT_FAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FAIR, AG_HURTBOX_SPRITE, sprite_get("fair_hurt"));
set_attack_value(AT_FAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_FAIR, AG_USES_CUSTOM_GRAVITY, 1);

// Startup
set_window_value(AT_FAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .6);
set_window_value(AT_FAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX, sound_get("fairdash"));
set_window_value(AT_FAIR, 1, AG_WINDOW_SFX_FRAME, 10);



//dash
set_window_value(AT_FAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX, sound_get("fair"));
set_window_value(AT_FAIR, 2, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_FAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .3);
//set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FAIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED, 7);
set_window_value(AT_FAIR, 2, AG_WINDOW_HSPEED_TYPE, 2);

// Active
set_window_value(AT_FAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

// Endlag
set_window_value(AT_FAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED, -2);
set_window_value(AT_FAIR, 4, AG_WINDOW_HSPEED_TYPE, 0);

set_num_hitboxes(AT_FAIR, 2);

//hitbox
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FAIR, 1, HG_HITBOX_Y, -70);
set_hitbox_value(AT_FAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FAIR, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 1, HG_VISUAL_EFFECT, 4 );
set_hitbox_value(AT_FAIR, 1, HG_HIT_SFX, sound_get("fairhit"));

//sour spot
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_FAIR, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_X, 44);
set_hitbox_value(AT_FAIR, 2, HG_HITBOX_Y, -34);
set_hitbox_value(AT_FAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FAIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_FAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FAIR, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FAIR, 2, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FAIR, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FAIR, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_FAIR, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FAIR, 2, HG_VISUAL_EFFECT, 4 );
set_hitbox_value(AT_FAIR, 2, HG_HIT_SFX, sound_get("fairhit"));