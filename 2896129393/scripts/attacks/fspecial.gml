set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
//set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX_FRAME, get_window_value(AT_FSPECIAL,2,AG_WINDOW_LENGTH)-1);

//dash
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);

//whiff
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 7);

//hit
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 13);

//pummel1
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_FSPECIAL, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 16);

//pummel2
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_FSPECIAL, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 19);

//final hit
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 20);

set_window_value(AT_FSPECIAL, 11, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 23);

set_window_value(AT_FSPECIAL, 12, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_VSPEED, -6);
set_window_value(AT_FSPECIAL, 12, AG_WINDOW_VSPEED_TYPE, 2);


set_num_hitboxes(AT_FSPECIAL, 4);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, get_window_value(AT_FSPECIAL,3,AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 70);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 7);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, get_window_value(AT_FSPECIAL,7,AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 25);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_BLEED, 1);

set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_WINDOW, 9);
set_hitbox_value(AT_FSPECIAL, 3, HG_LIFETIME, get_window_value(AT_FSPECIAL,9,AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_FSPECIAL, 3, HG_WIDTH, 25);
set_hitbox_value(AT_FSPECIAL, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_FSPECIAL, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_FSPECIAL, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_FSPECIAL, 3, HG_HITPAUSE_SCALING, 0);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 3, HG_HIT_BLEED, 1)

set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_WINDOW, 11);
set_hitbox_value(AT_FSPECIAL, 4, HG_LIFETIME, get_window_value(AT_FSPECIAL,11,AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_X, 10);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_Y, -10);
set_hitbox_value(AT_FSPECIAL, 4, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_FSPECIAL, 4, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 4, HG_ANGLE, 270);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSPECIAL, 4, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_FSPECIAL, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 4, HG_HITPAUSE_SCALING, 0.6);
//set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_X_OFFSET, 15);
set_hitbox_value(AT_FSPECIAL, 4, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL, 4, HG_HIT_BLEED, 1)


