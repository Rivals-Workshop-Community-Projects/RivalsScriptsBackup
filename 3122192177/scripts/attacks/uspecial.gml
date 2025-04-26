set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("snd_arrow"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, 0); 
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("se_zelda_special_L01"));

// flight
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_bird_upspecial"));
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -10); 

set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -8); 

set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 13);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1); 
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED, 0); 
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED, -4);

// atk endlag
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 17);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, sound_get("se_zelda_win01_02"));


set_num_hitboxes(AT_USPECIAL, 1);

set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 75);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);