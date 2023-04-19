set_attack_value(AT_USTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 10);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));

//startup
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 1);

//release
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("meteorsignal"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 2);

//grab
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 1);

//spawn set
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 3);

//spawn
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 3);

//endlag
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_GOTO, 8);

//throw
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(AT_USTRONG_2, 1);

set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, 27);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 48);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 30);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 100);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));

set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 9);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 600);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, 60);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 60);
set_hitbox_value(AT_USTRONG_2, 2, HG_EFFECT, 1);
//set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_USTRONG_2, 2, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_SPRITE, sprite_get("ustrong_meteor"));
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("ustrong_meteor_hurt"));
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, meteor_destroy);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_VSPEED, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ANIM_SPEED, .4);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_PROJECTILE_DESTROY_EFFECT, meteor_destroy);