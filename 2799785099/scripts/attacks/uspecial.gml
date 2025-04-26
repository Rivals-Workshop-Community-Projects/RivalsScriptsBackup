set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 0);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

//Startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .05);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_absa_whip_charge"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX, sound_get("sfx_sword_thrust2"));
set_window_value(AT_USPECIAL, 2, AG_WINDOW_SFX_FRAME, 3);

//Rising
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -20);

//Apex
set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 0);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, sound_get("sfx_sand_screech"));

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX, sound_get("sfx_finalcutter_fall"));
set_window_value(AT_USPECIAL, 6, AG_WINDOW_SFX_FRAME, 3);

//Fall
set_window_value(AT_USPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_USPECIAL, 7, AG_WINDOW_VSPEED, 4);


//Land/Endlag
set_window_value(AT_USPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX, sound_get("sfx_finalcutter_land"));
set_window_value(AT_USPECIAL, 8, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_USPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);

set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 52);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 66);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 82);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 13);
set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, .05);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 1, HG_DRIFT_MULTIPLIER, .5);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 0);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 9);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 52);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 68);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 78);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, -80);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 12);
set_hitbox_value(AT_USPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .15);
set_hitbox_value(AT_USPECIAL, 2, HG_HITSTUN_MULTIPLIER, .75);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 7);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 999);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 52);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -34);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 58);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 68);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .4);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, sound_get("sfx_hit_sharp"));
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 36);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 4, HG_FINAL_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .45);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITSTUN_MULTIPLIER, .7);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 361);
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, sound_get("sfx_hit_sharp2"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("uspecial_proj"));
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ANIM_SPEED, .5);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_GROUND_FRICTION, 1.5);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_AIR_FRICTION, 1.5);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_PROJECTILE_DESTROY_EFFECT, 109);