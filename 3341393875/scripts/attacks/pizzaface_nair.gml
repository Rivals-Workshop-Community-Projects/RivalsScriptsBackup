set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("pizzaface_nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("pizzaface_nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_NAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NAIR, 2, AG_WINDOW_HSPEED, 1);

set_window_value(AT_NAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 4);

set_num_hitboxes(AT_NAIR,4);

set_hitbox_value(AT_NAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 23);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 115);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 115);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE_FLIPPER, 10);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, 0.25);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 18);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_leafy_hit2"));
set_hitbox_value(AT_NAIR, 1, HG_SDI_MULTIPLIER, 0.5);

set_hitbox_value(AT_NAIR, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_X, 23);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_X, 23);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 3, HG_HITBOX_GROUP, 2);

set_hitbox_value(AT_NAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 4, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_NAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_X, 23);
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_Y, -56);
set_hitbox_value(AT_NAIR, 4, HG_WIDTH, 115);
set_hitbox_value(AT_NAIR, 4, HG_HEIGHT, 115);
set_hitbox_value(AT_NAIR, 4, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 4, HG_DAMAGE, 3);
set_hitbox_value(AT_NAIR, 4, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 4, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NAIR, 4, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_NAIR, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_NAIR, 4, HG_VISUAL_EFFECT, 17);
set_hitbox_value(AT_NAIR, 4, HG_HIT_SFX, asset_get("sfx_leafy_hit1"));
set_hitbox_value(AT_NAIR, 4, HG_HITBOX_GROUP, 3);