set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

// Anim Frame 0
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));

// Anim Frame 1 and 2
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -2.5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .04);

//Anim Frame 3 and 4
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DATTACK, 3, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Anim Frame 5 and 6
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Anim Frame 7 and 8
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 4);

//set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
//set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 8);
//set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
//set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 12);
//set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 140);
//set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64);
//set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
//set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
//set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
//set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
//set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .3);
//set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
//set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
//set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
//set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sfx_hit1);
//set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 100);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 56);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sfx_hit1);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -60);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 75);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sfx_hit2);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -29);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 46);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, sfx_hit3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 76);
set_hitbox_value(AT_DATTACK, 4, HG_WIDTH, 20);
set_hitbox_value(AT_DATTACK, 4, HG_HEIGHT, 20);
set_hitbox_value(AT_DATTACK, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 4, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 4, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DATTACK, 4, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 4, HG_HIT_SFX, sfx_bat);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, 2);