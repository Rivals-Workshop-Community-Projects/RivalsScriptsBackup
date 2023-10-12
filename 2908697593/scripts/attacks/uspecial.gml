set_attack_value(AT_USPECIAL, AG_CATEGORY, 1);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_AIR_SPRITE, sprite_get("uspecial"));
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));
set_attack_value(AT_USPECIAL, AG_USES_CUSTOM_GRAVITY, 1);


set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 50);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 1)
set_window_value(AT_USPECIAL, 1, AG_WINDOW_VSPEED, -3.6)
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("isaac_thruster_fly"));

set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 50);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 50);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -5);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_CUSTOM_GRAVITY, -0.007);

set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7)

set_num_hitboxes(AT_USPECIAL, 2);

set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_LIFETIME, 76);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_USPECIAL, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, 2, HG_HEIGHT, 15);
set_hitbox_value(AT_USPECIAL, 2, HG_SHAPE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_USPECIAL, 2, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, 2, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_USPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, 2, HG_HIT_SFX, asset_get("sfx_forsburn_reappear_hit"));
