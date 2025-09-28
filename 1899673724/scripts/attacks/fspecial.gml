set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 6);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_NAME, "FSpecial: Light Speed Dash");
set_attack_value(AT_FSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Forwards moving dash.
The dash can be angled upwards or downwards.
Has a weak hitbox while travelling, but also has a very strong hitbox right at the end of the move's active frames.
Has no pratfall on hit.");


set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1); //Startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_sonic_homing_startup"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED, -7.5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1); //Movement
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1); //Stronk Hitbox
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 2)
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, -2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 7); //Endlag
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 4);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_sonic_spin"));

set_num_hitboxes(AT_FSPECIAL,3);

//Strong Hitbox
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_MUNO_HITBOX_NAME, "Strong Hitbox");
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, -8);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 72);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, .75);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 125);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 21);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_EXTENDED_PARRY_STUN, 1.5);

//Weak Hitbox
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_MUNO_HITBOX_NAME, "Weak Hitbox");
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -32);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 62);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 256);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 21);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTENDED_PARRY_STUN, 1.5);