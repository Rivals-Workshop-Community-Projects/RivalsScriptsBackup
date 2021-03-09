set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_3, AG_SPRITE, sprite_get("ex03"));
set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 7);
set_attack_value(AT_EXTRA_3, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_EXTRA_3, AG_LANDING_LAG, 4);
set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, sprite_get("ex03_hurt"));
set_attack_value(AT_EXTRA_3, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0);
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED_TYPE, 1);
//set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_SFX, sound_get("ex3up"));
set_window_value(AT_EXTRA_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED, -18);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_EXTRA_3, 3, AG_WINDOW_TYPE, 10);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_EXTRA_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 8);

set_window_value(AT_EXTRA_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 4, AG_WINDOW_SFX, sound_get("ex3down"));

set_window_value(AT_EXTRA_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HSPEED, 0);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_3, 5, AG_WINDOW_SFX, sound_get("ex3bone2"));

set_window_value(AT_EXTRA_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 6, AG_WINDOW_HSPEED, 0);

set_window_value(AT_EXTRA_3, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_EXTRA_3, 7, AG_WINDOW_HSPEED, 0);



set_num_hitboxes(AT_EXTRA_3,3);

set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 64);
set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 16);
set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_3, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITBOX_Y, -20);
set_hitbox_value(AT_EXTRA_3, 2, HG_WIDTH, 64);
set_hitbox_value(AT_EXTRA_3, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_EXTRA_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 2, HG_DAMAGE, 12);
set_hitbox_value(AT_EXTRA_3, 2, HG_ANGLE, 270);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_3, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_EXTRA_3, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_3, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_EXTRA_3, 2, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_3, 3, HG_GROUNDEDNESS, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_Y, -2);
set_hitbox_value(AT_EXTRA_3, 3, HG_WIDTH, 142);
set_hitbox_value(AT_EXTRA_3, 3, HG_HEIGHT, 18);
set_hitbox_value(AT_EXTRA_3, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_3, 3, HG_DAMAGE, 6);
set_hitbox_value(AT_EXTRA_3, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE, 361);
set_hitbox_value(AT_EXTRA_3, 3, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_EXTRA_3, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_3, 3, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_EXTRA_3, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_EXTRA_3, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_EXTRA_3, 3, HG_HITBOX_GROUP, -1);


