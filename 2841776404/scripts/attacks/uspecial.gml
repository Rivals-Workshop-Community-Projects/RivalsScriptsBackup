set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
/*set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("sfx_jet_start"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 5);*/

//main charge
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

//charge transition
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_SFX, sound_get("sfx_jet_charge"));

//full charge
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);

//launch start
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, sound_get("sfx_jet_up")); //full charge is sfx_jet_bit
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -10); //full charge is 15
/*set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.9);*/
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 12); //full charge goes to 21

//launch end
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 8); //full charge is 12
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -8); //full charge is 12
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 16);

//set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.5);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL, 2, HG_IGNORES_PROJECTILES, 1);