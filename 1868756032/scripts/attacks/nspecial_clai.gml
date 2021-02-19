set_attack_value(AT_NSPECIAL_CLAI, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_CLAI, AG_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_CLAI, AG_NUM_WINDOWS, 6);
set_attack_value(AT_NSPECIAL_CLAI, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_CLAI, AG_OFF_LEDGE, 1);
set_attack_value(AT_NSPECIAL_CLAI, AG_AIR_SPRITE, sprite_get("AT_JAB"));
set_attack_value(AT_NSPECIAL_CLAI, AG_HURTBOX_SPRITE, sprite_get("AT_JAB_hurt"));

set_window_value(AT_NSPECIAL_CLAI, 1, AG_WINDOW_TYPE, 1); //Startup
set_window_value(AT_NSPECIAL_CLAI, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_CLAI, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_CLAI, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_CLAI, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_nspecial_grab_miss"));
set_window_value(AT_NSPECIAL_CLAI, 1, AG_WINDOW_SFX_FRAME, 9);

set_window_value(AT_NSPECIAL_CLAI, 2, AG_WINDOW_TYPE, 1); //Grab
set_window_value(AT_NSPECIAL_CLAI, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL_CLAI, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_CLAI, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_NSPECIAL_CLAI, 3, AG_WINDOW_TYPE, 1); //Heldgrab
set_window_value(AT_NSPECIAL_CLAI, 3, AG_WINDOW_LENGTH, 20);
set_window_value(AT_NSPECIAL_CLAI, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_CLAI, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_NSPECIAL_CLAI, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_CLAI, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_CLAI, 4, AG_WINDOW_TYPE, 1); //Fthrow
set_window_value(AT_NSPECIAL_CLAI, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_CLAI, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_CLAI, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL_CLAI, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_CLAI, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_CLAI, 5, AG_WINDOW_TYPE, 1); //Bthrow
set_window_value(AT_NSPECIAL_CLAI, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_CLAI, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL_CLAI, 5, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL_CLAI, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL_CLAI, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_NSPECIAL_CLAI, 6, AG_WINDOW_TYPE, 1); //Endlag
set_window_value(AT_NSPECIAL_CLAI, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL_CLAI, 6, AG_WINDOW_ANIM_FRAMES, 2);




set_num_hitboxes(AT_NSPECIAL_CLAI, 3);

set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_PARENT_HITBOX, 1); //Suck
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_HITBOX_Y, -16);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_WIDTH, 50);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_ANGLE, 90);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_HITSTUN_MULTIPLIER, 3);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_CLAI, 1, HG_THROWS_ROCK, 2);

set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_PARENT_HITBOX, 2); //Spit
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_WINDOW, 4);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_WIDTH, 70);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NSPECIAL_CLAI, 2, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_PARENT_HITBOX, 3); //Swallow
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_WINDOW, 5);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_HITBOX_Y, -32);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_WIDTH, 80);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_HEIGHT, 100);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_ANGLE, 70);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_NSPECIAL_CLAI, 3, HG_HITBOX_GROUP, 2);