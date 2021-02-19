/*set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("dash"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 10);

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 10);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 11);//*/

set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_USPECIAL, AG_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -20);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.6);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_USPECIAL, 2, AG_WINDOW_HITPAUSE_FRAME, 5);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_USPECIAL, 3, AG_WINDOW_VSPEED, -7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, .63);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_USPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_USPECIAL, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_VSPEED, 20);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_USPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_LENGTH, 30);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_USPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 15);

set_num_hitboxes(AT_USPECIAL, 4);

set_hitbox_value(AT_USPECIAL, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 1, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_USPECIAL, 1, HG_HITBOX_Y, -8);
set_hitbox_value(AT_USPECIAL, 1, HG_WIDTH, 54);
set_hitbox_value(AT_USPECIAL, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_USPECIAL, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 1, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
//set_hitbox_value(AT_USPECIAL, 1, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 1, HG_FINAL_BASE_KNOCKBACK, 7);

set_hitbox_value(AT_USPECIAL, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_X, 19);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 54);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 32);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
//set_hitbox_value(AT_USPECIAL, 2, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_FINAL_BASE_KNOCKBACK, 5);

set_hitbox_value(AT_USPECIAL, 3, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_WINDOW, 5);
set_hitbox_value(AT_USPECIAL, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_USPECIAL, 3, HG_HITBOX_Y, -28);
set_hitbox_value(AT_USPECIAL, 3, HG_WIDTH, 84);
set_hitbox_value(AT_USPECIAL, 3, HG_HEIGHT, 54);
set_hitbox_value(AT_USPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 3, HG_ANGLE, 270);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 3, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 3, HG_HITSTUN_MULTIPLIER, 0.7);
set_hitbox_value(AT_USPECIAL, 3, HG_HIT_SFX, asset_get("sfx_icehit_weak2"));
set_hitbox_value(AT_USPECIAL, 3, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 3, HG_VISUAL_EFFECT, 1);

set_hitbox_value(AT_USPECIAL, 4, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 4, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_X, 14);
set_hitbox_value(AT_USPECIAL, 4, HG_HITBOX_Y, -8);
set_hitbox_value(AT_USPECIAL, 4, HG_WIDTH, 104);
set_hitbox_value(AT_USPECIAL, 4, HG_HEIGHT, 16);
set_hitbox_value(AT_USPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_USPECIAL, 4, HG_ANGLE, 40);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_USPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 4, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_USPECIAL, 4, HG_HIT_SFX, asset_get("sfx_icehit_medium2"));
set_hitbox_value(AT_USPECIAL, 4, HG_VISUAL_EFFECT, 1);

/*set_hitbox_value(AT_USPECIAL, 5, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_LIFETIME, 6);
set_hitbox_value(AT_USPECIAL, 5, HG_SHAPE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_X, 12);
set_hitbox_value(AT_USPECIAL, 5, HG_HITBOX_Y, -20);
set_hitbox_value(AT_USPECIAL, 5, HG_WIDTH, 20);
set_hitbox_value(AT_USPECIAL, 5, HG_HEIGHT, 64);
set_hitbox_value(AT_USPECIAL, 5, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL, 5, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_KNOCKBACK, 11);
set_hitbox_value(AT_USPECIAL, 5, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USPECIAL, 5, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USPECIAL, 5, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(AT_USPECIAL, 5, HG_TECHABLE, 3);
set_hitbox_value(AT_USPECIAL, 5, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 5, HG_FINAL_BASE_KNOCKBACK, 5);//*/