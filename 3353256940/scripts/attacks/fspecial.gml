set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 8);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("fspecial_hurt"));
set_attack_value(AT_FSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSPECIAL, AG_USES_CUSTOM_GRAVITY, 1);

//startup
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX_FRAME, 11);

//spin
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//upper startup
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX_FRAME, 5);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//upper
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

//end
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_TYPE, 0); 
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FSPECIAL, 5, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

set_num_hitboxes(AT_FSPECIAL, 5);

// Multihits
var i = 1;
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, i, HG_WIDTH, 72);
set_hitbox_value(AT_FSPECIAL, i, HG_HEIGHT, 34);
set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 50);
set_hitbox_value(AT_FSPECIAL, i, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FSPECIAL, i, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT, 301);
set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
i++;

set_hitbox_value(AT_FSPECIAL, i, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_Y, -52);
i++;

set_hitbox_value(AT_FSPECIAL, i, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_X, 30);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_Y, -24);
i++;

set_hitbox_value(AT_FSPECIAL, i, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_X, 0);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_Y, -52);
i++;

// Finisher
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_WINDOW, 4);
set_hitbox_value(AT_FSPECIAL, i, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_X, 32);
set_hitbox_value(AT_FSPECIAL, i, HG_HITBOX_Y, -45);
set_hitbox_value(AT_FSPECIAL, i, HG_WIDTH, 78);
set_hitbox_value(AT_FSPECIAL, i, HG_HEIGHT, 90);
set_hitbox_value(AT_FSPECIAL, i, HG_DAMAGE, 5);
set_hitbox_value(AT_FSPECIAL, i, HG_ANGLE, 361);
set_hitbox_value(AT_FSPECIAL, i, HG_PRIORITY, 8);
set_hitbox_value(AT_FSPECIAL, i, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSPECIAL, i, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, i, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, i, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_FSPECIAL, i, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSPECIAL, i, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

