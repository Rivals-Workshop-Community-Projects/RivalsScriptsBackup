set_attack_value(49, AG_MUNO_ATTACK_NAME, "Final Smash");
set_attack_value(49, AG_CATEGORY, 1);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_NUM_WINDOWS, 3);
set_attack_value(49, AG_HAS_LANDING_LAG, 0);
set_attack_value(49, AG_LANDING_LAG, 0);
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));

set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(49, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("sfx_terrain_disappear"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(49, 2, AG_WINDOW_LENGTH, 15);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 2, AG_WINDOW_HSPEED, 12);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 24);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 3, AG_WINDOW_HITPAUSE_FRAME, 5);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED, -.5);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(49, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1.1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 54);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 5, AG_WINDOW_LENGTH, 40);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 2);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 12);
set_hitbox_value(49, 1, HG_HITBOX_X, 12);
set_hitbox_value(49, 1, HG_HITBOX_Y, -30);
set_hitbox_value(49, 1, HG_WIDTH, 100);
set_hitbox_value(49, 1, HG_HEIGHT, 68);
set_hitbox_value(49, 1, HG_PRIORITY, 2);
set_hitbox_value(49, 1, HG_DAMAGE, 0);
set_hitbox_value(49, 1, HG_ANGLE, 60);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 1);
//set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("sfx_charge_hit_med"));

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 2, HG_WINDOW, 5);
set_hitbox_value(49, 2, HG_LIFETIME, 4);
set_hitbox_value(49, 2, HG_HITBOX_X, 190);
set_hitbox_value(49, 2, HG_HITBOX_Y, -50);
set_hitbox_value(49, 2, HG_WIDTH, 150);
set_hitbox_value(49, 2, HG_HEIGHT, 150);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 0);
set_hitbox_value(49, 2, HG_ANGLE, 60);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 30);
set_hitbox_value(49, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(49, 2, HG_HIT_SFX, sound_get("sfx_charge_hit_med"));