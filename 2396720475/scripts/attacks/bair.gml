set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 7);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));
//set_attack_value(AT_BAIR, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
//set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);
//set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_BAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX, sound_get("bair1_sfx"));
set_window_value(AT_BAIR, 1, AG_WINDOW_SFX_FRAME, 8);
set_window_value(AT_BAIR, 1, AG_WINDOW_CUSTOM_GRAVITY, .1);

// Attack 1
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_GRAVITY, .1);
set_window_value(AT_BAIR, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);

// Endlag 1
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, .1);
set_window_value(AT_BAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, sound_get("bair1_sfx"));
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 2);

// Attack 2
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_BAIR, 4, AG_WINDOW_CUSTOM_GRAVITY, .1);
set_window_value(AT_BAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);

// Endlag 2
set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_BAIR, 5, AG_WINDOW_CUSTOM_GRAVITY, .1);
set_window_value(AT_BAIR, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX, sound_get("bair2_sfx"));
set_window_value(AT_BAIR, 5, AG_WINDOW_SFX_FRAME, 3);

// Attack 3
set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 5);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_BAIR, 6, AG_WINDOW_CUSTOM_GRAVITY, .1);
set_window_value(AT_BAIR, 6, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);

set_window_value(AT_BAIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 7, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_BAIR, 7, AG_WINDOW_HAS_WHIFFLAG, 1);


set_window_value(AT_BAIR, 2, AG_WINDOW_HAS_CUSTOM_FRICTION , 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION , 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION , 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION , 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_CUSTOM_FRICTION , 1);

set_num_hitboxes(AT_BAIR, 3);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -26);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -15);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 75);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 110);
set_hitbox_value(AT_BAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, hit_small3);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, sound_get("fast_hit_sfx"));
set_hitbox_value(AT_BAIR, 1, HG_EXTRA_HITPAUSE, 3);

set_hitbox_value(AT_BAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_X, -25);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_BAIR, 2, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 2, HG_HEIGHT, 65);
set_hitbox_value(AT_BAIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_BAIR, 2, HG_ANGLE, 100);
set_hitbox_value(AT_BAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_BAIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_BAIR, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_BAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_BAIR, 2, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT, hit_small4);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_BAIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 2, HG_HIT_SFX, sound_get("fast_hit_sfx"));
set_hitbox_value(AT_BAIR, 2, HG_EXTRA_HITPAUSE, 3);

set_hitbox_value(AT_BAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 3, HG_WINDOW, 6);
set_hitbox_value(AT_BAIR, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_X, -20);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_BAIR, 3, HG_WIDTH, 55);
set_hitbox_value(AT_BAIR, 3, HG_HEIGHT, 65);
set_hitbox_value(AT_BAIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_BAIR, 3, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 3, HG_SHAPE,0);
set_hitbox_value(AT_BAIR, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_BAIR, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_BAIR, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_BAIR, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT, hit_spiky);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_BAIR, 3, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_BAIR, 3, HG_HIT_SFX, sound_get("sharp_hit_sfx"));

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_BAIR, 3, HG_HITBOX_GROUP, -1);
