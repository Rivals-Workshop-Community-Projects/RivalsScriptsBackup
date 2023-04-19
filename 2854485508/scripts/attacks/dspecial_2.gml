set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));
set_attack_value(AT_DSPECIAL_2, AG_MUNO_ATTACK_USES_ROLES, 1);

set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.3);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_forsburn_combust"));
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_MUNO_WINDOW_ROLE, 1);

//No Mark
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_MUNO_WINDOW_ROLE, 3);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);
set_window_value(AT_DSPECIAL_2, 3, AG_MUNO_WINDOW_ROLE, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_GOTO, 6);

//Mark
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.3);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(AT_DSPECIAL_2, 4, AG_WINDOW_GOTO, 5);

set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_2, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.1);

set_num_hitboxes(AT_DSPECIAL_2, 2);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_MUNO_HITBOX_NAME, "No Mark");
set_hitbox_value(AT_DSPECIAL_2, 1, HG_MUNO_HITBOX_MISC_ADD, "Adds Transformation status to marked opponent");
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL_2, 1, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DRIFT_MULTIPLIER, 0.5);

set_hitbox_value(AT_DSPECIAL_2, 2, HG_MUNO_HITBOX_NAME, "With Mark");
set_hitbox_value(AT_DSPECIAL_2, 2, HG_MUNO_HITBOX_MISC_ADD, "Adds Transformation status to marked opponent");
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_WIDTH, 120);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HEIGHT, 120);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_USPECIAL_2, 2, HG_VISUAL_EFFECT, 13);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_EXTRA_CAMERA_SHAKE, -1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_THROWS_ROCK, 2);
set_hitbox_value(AT_DSPECIAL_2, 2, HG_DRIFT_MULTIPLIER, 0.5);

