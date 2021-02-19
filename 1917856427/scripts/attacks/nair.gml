set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 6); //OLD 3
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));


set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_VSPEED, -1);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_NAIR, 3, AG_WINDOW_CUSTOM_GRAVITY, 1.0);

set_num_hitboxes(AT_NAIR,1);

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -40);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 5); //OLD 6
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 65);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_NAIR, 1, HG_HITSTUN_MULTIPLIER, 1.0); //OLD 1.2
