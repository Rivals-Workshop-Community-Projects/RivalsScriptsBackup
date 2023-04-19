set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial_air"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, .5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HSPEED, 2.5);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.1);

//charge1
set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_forsburn_consume"));

//charge2
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 7);

//ready
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 11);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);

//fly
set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 13);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, -10);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_SFX, asset_get("sfx_sand_screech"));

//swing
set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HSPEED, .1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED, -5);

//recover1
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 20);

//recovermiss
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 0);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 25);



set_num_hitboxes(AT_USPECIAL, 7);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, -15);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, -1);

//set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_Y, -10);
set_hitbox_value(AT_USPECIAL, 6, HG_WIDTH, 80);
set_hitbox_value(AT_USPECIAL, 6, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 6, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE, 70);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 6, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_USPECIAL, 6, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 6, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 6, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
//set_hitbox_value(AT_USPECIAL, 6, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 6, HG_HITBOX_GROUP, -1);

//set_hitbox_value(AT_USPECIAL, 6, HG_PARENT_HITBOX, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL, 7, HG_LIFETIME, 5);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_WIDTH, 55);
set_hitbox_value(AT_USPECIAL, 7, HG_HEIGHT, 85);
set_hitbox_value(AT_USPECIAL, 7, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 7, HG_DAMAGE, 6);
set_hitbox_value(AT_USPECIAL, 7, HG_ANGLE, 300);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 7, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 7, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USPECIAL, 7, HG_VISUAL_EFFECT, 3);
set_hitbox_value(AT_USPECIAL, 7, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
//set_hitbox_value(AT_USPECIAL 6, HG_ANGLE_FLIPPER, 1);
set_hitbox_value(AT_USPECIAL, 7, HG_HITBOX_GROUP, -1);




/*