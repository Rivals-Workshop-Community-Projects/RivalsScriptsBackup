set_attack_value(AT_FSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_FSPECIAL, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_FSPECIAL, AG_LANDING_LAG, 16);
set_attack_value(AT_FSPECIAL, AG_AIR_SPRITE, sprite_get("fspecial"));
set_attack_value(AT_FSPECIAL, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

set_window_value(AT_FSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 1, AG_WINDOW_SFX, sound_get("fake_start"));

set_window_value(AT_FSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 48)
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED, 64);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 99);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 99);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 3, AG_WINDOW_SFX, asset_get("sfx_poison_hit_weak"));

set_window_value(AT_FSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
// set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED, -10);
// set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED, 10);
// set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 2);
// set_window_value(AT_FSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 2);
// set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 99);
// set_window_value(AT_FSPECIAL, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 99);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL, 4, AG_WINDOW_SFX, asset_get("sfx_poison_hit_weak"));

set_num_hitboxes(AT_FSPECIAL, 2);

set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_X, 18);
set_hitbox_value(AT_FSPECIAL, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSPECIAL, 1, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 1, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 1, HG_SHAPE, 1);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 1, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT, honey_small);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_Y_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_birdclap"));
set_hitbox_value(AT_FSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);

set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW, 3);
// set_hitbox_value(AT_FSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSPECIAL, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, 41);
set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, -26);
set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_HEIGHT, 45);
set_hitbox_value(AT_FSPECIAL, 2, HG_PRIORITY, 9);
set_hitbox_value(AT_FSPECIAL, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_FSPECIAL, 2, HG_ANGLE, 90);
set_hitbox_value(AT_FSPECIAL, 2, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_FSPECIAL, 2, HG_EFFECT, 6);
set_hitbox_value(AT_FSPECIAL, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT, honey_small);
set_hitbox_value(AT_FSPECIAL, 2, HG_VISUAL_EFFECT_X_OFFSET, 32);
set_hitbox_value(AT_FSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_birdclap"));
set_hitbox_value(AT_FSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);