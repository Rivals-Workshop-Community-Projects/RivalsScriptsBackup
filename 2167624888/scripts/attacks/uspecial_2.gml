set_attack_value(AT_USPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_2, AG_SPRITE, sprite_get("red_uspecial"));
set_attack_value(AT_USPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("red_uspecial_hurt"));
set_attack_value(AT_USPECIAL_2, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_LENGTH, 14);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL_2, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_TYPE, 1); // boost
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_VSPEED, -11.5);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.9);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_2, 2, AG_WINDOW_SFX, sound_get("uspecial_jump"));

set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_TYPE, 1); // land
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 12);


set_num_hitboxes(AT_USPECIAL_2, 2);

set_hitbox_value(AT_USPECIAL_2, 1, HG_PARENT_HITBOX, 1); // this is literally the nspec arrow
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITBOX_Y, 30);
set_hitbox_value(AT_USPECIAL_2, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_USPECIAL_2, 1, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, nspec_effect_red);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_DESTROY_EFFECT, nspec_effect_red);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_SPRITE, sprite_get("bigredball"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_MASK, sprite_get("bigredball"));
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_PROJECTILE_VSPEED, 10);

set_hitbox_value(AT_USPECIAL_2, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITBOX_Y, -54);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_USPECIAL_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_LIFETIME, 16);
set_hitbox_value(AT_USPECIAL_2, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));