set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);
set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("frocktoss"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 6);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG_2, AG_AIR_SPRITE, sprite_get("frocktoss_air"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("frocktoss_hurt"));
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_AIR_SPRITE, sprite_get("frocktoss_air_hurt"));

//start up
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);

//charge
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//start up
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 1);

//active
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//recovery
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);


set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_FSTRONG_2, 1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 360);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 46);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, .25);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 192);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("rock"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("rock"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 20);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 193);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GRAVITY, 0.05);