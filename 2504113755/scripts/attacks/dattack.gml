set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
//set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_spin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 8);


set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 7);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 3);
//set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);




set_num_hitboxes(AT_DATTACK, 6);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 42);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -37);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 35);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .15);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
//set_hitbox_value(AT_DATTACK, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, plasma_line );
//set_hitbox_value(AT_DATTACK, 1, HG_TECHABLE, 3 );




set_hitbox_value(AT_DATTACK, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 42);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -35);;
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 42);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 4, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DATTACK, 4, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_X, 42);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 4, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DATTACK, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 5, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DATTACK, 5, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_X, 42);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 5, HG_HITBOX_GROUP, -1);


set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 6, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_DATTACK, 6, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_X, 42);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_Y, -35);
set_hitbox_value(AT_DATTACK, 6, HG_WIDTH, 85);
set_hitbox_value(AT_DATTACK, 6, HG_HEIGHT, 45);
set_hitbox_value(AT_DATTACK, 6, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 6, HG_DAMAGE, 3);
set_hitbox_value(AT_DATTACK, 6, HG_ANGLE,  40);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 6, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DATTACK, 6, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 6, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));
set_hitbox_value(AT_DATTACK, 6, HG_HIT_LOCKOUT, 5);
set_hitbox_value(AT_DATTACK, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 6, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_DATTACK, 6, HG_VISUAL_EFFECT, plasma_x_circle_small );
