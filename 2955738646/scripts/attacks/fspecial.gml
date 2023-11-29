set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1); //Start up
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("mfx_star"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1); //Vanishing forward
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 13);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -0.1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_GOTO, 5);

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1); //Hard punch
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_VSPEED, 0.1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, sound_get("fspecial_forward"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_GOTO, 10); //Not a window

//----Follow up-----//

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1); //Follow-up from teleporting
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 65);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_WHIFFLAG, 2);

//----End Lag----//

set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1); //Idling after dash
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_VSPEED, 0);

//----Special Vanish-----//

set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1); //Vanishing forward
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HSPEED, 11);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_VSPEED, -0.1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_INVINCIBILITY, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_GOTO, 5);

set_num_hitboxes(AT_FSPECIAL, 5);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1); //Boom, holding arm shot
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 100);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 21);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, -5);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, sound_get("fspecial_hit"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1); //Teleport hit
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 2, HG_EXTRA_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITSTUN_MULTIPLIER, 1.5);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, 138);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
//set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 11);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1); //Follow up knee
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_FSPECIAL, 3, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
//set_hitbox_value(AT_FSPECIAL, 3, HG_EFFECT, 11);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP,-1);

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1); //Follow up down overhead
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW_CREATION_FRAME, 48);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 35);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 90);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 120);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 20);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 25);
set_hitbox_value(AT_FSPECIAL, 4, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 5);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_FSPECIAL, 4, HG_EFFECT, 11);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_TYPE, 2); //Follow up timer
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW, 10);
set_hitbox_value(AT_FSPECIAL, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_LIFETIME, 30);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_X, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_Y, -90);
set_hitbox_value(AT_FSPECIAL, 5, HG_WIDTH, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_HEIGHT, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_PRIORITY, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_DAMAGE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_ANGLE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_X_OFFSET, 1);
set_hitbox_value(AT_FSPECIAL, 5, HG_VISUAL_EFFECT_Y_OFFSET, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("bar"));
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSPECIAL, 5, HG_PROJECTILE_ANIM_SPEED, 1.3);
//set_hitbox_value(AT_FSPECIAL, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
//set_hitbox_value(AT_FSPECIAL, 5, HG_EFFECT, 11);
set_hitbox_value(AT_FSPECIAL, 5, HG_HITBOX_GROUP, 1);