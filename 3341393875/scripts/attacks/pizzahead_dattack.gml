set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("pizzahead_dattack"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("pizzahead_dattack"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("pizzahead_dattack_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED, 9.5);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, sound_get("pspin"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_EXTRA_2, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, air_friction);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, sound_get("shine"));
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_EXTRA_2, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 21);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_EXTRA_2, 3);

set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_2, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_2, 1, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, HFX_GEN_SPIN);

set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -38);
set_hitbox_value(AT_EXTRA_2, 2, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_2, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_2, 2, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_2, 2, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_EXTRA_2, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_EXTRA_2, 2, HG_VISUAL_EFFECT, HFX_GEN_SPIN);

set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_EXTRA_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y, -38);
set_hitbox_value(AT_EXTRA_2, 3, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_2, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_EXTRA_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_2, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_2, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_2, 3, HG_ANGLE, 40);
set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_EXTRA_2, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_EXTRA_2, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_2, 3, HG_SDI_MULTIPLIER, 0.5);
set_hitbox_value(AT_EXTRA_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_2, 3, HG_VISUAL_EFFECT, HFX_GEN_SPIN);