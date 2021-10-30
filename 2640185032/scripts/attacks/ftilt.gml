set_attack_value(AT_FTILT, AG_SPRITE, sprite_get("ftilt"));
set_attack_value(AT_FTILT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTILT, AG_HURTBOX_SPRITE, sprite_get("ftilt_hurt"));

//hit 1-------------------------------------------------------------------------
set_window_value(AT_FTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 1, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX, sound_get("swipe_Er02"));
set_window_value(AT_FTILT, 1, AG_WINDOW_SFX_FRAME, 7);

set_window_value(AT_FTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_FTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 3, AG_WINDOW_ANIM_FRAME_START, 4);


//hit 2-------------------------------------------------------------------------
set_window_value(AT_FTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 4, AG_WINDOW_ANIM_FRAME_START, 7);
//sfx played in attack update to change the pitch

set_window_value(AT_FTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 5, AG_WINDOW_ANIM_FRAME_START, 9);

set_window_value(AT_FTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FTILT, 6, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_FTILT, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


//knife throw-------------------------------------------------------------------
set_window_value(AT_FTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTILT, 7, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_FTILT, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX, sound_get("sfx_dag_throw"));
set_window_value(AT_FTILT, 7, AG_WINDOW_SFX_FRAME, 4);

set_window_value(AT_FTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FTILT, 8, AG_WINDOW_ANIM_FRAME_START, 16);

set_window_value(AT_FTILT, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTILT, 9, AG_WINDOW_LENGTH, 15);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FTILT, 9, AG_WINDOW_ANIM_FRAME_START, 17);


set_num_hitboxes(AT_FTILT, 3);

//hit 1
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FTILT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_Y, -33);
set_hitbox_value(AT_FTILT, 1, HG_WIDTH, 84);
set_hitbox_value(AT_FTILT, 1, HG_HEIGHT, 62);
set_hitbox_value(AT_FTILT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_FTILT, 1, HG_ANGLE, 80);
set_hitbox_value(AT_FTILT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_FTILT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_FTILT, 1, HG_HIT_SFX, sound_get("sfx_knifehit_s"));
set_hitbox_value(AT_FTILT, 1, HG_HITBOX_GROUP, -1);

//hit 2
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTILT, 2, HG_WINDOW, 5);
set_hitbox_value(AT_FTILT, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_X, 40);
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_Y, -51);
set_hitbox_value(AT_FTILT, 2, HG_WIDTH, 90);
set_hitbox_value(AT_FTILT, 2, HG_HEIGHT, 101);
set_hitbox_value(AT_FTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_FTILT, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_FTILT, 2, HG_ANGLE, 55);
set_hitbox_value(AT_FTILT, 2, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FTILT, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_FTILT, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FTILT, 2, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(AT_FTILT, 2, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_FTILT, 2, HG_HITBOX_GROUP, -1);

//knife
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FTILT, 3, HG_LIFETIME, 25);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_FTILT, 3, HG_WIDTH, 25);
set_hitbox_value(AT_FTILT, 3, HG_HEIGHT, 25);
set_hitbox_value(AT_FTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_FTILT, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_FTILT, 3, HG_DAMAGE, 2);
set_hitbox_value(AT_FTILT, 3, HG_ANGLE, 70);
set_hitbox_value(AT_FTILT, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FTILT, 3, HG_VISUAL_EFFECT, vfx_knifebreak);
set_hitbox_value(AT_FTILT, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FTILT, 3, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_FTILT, 3, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_FTILT, 3, HG_HIT_SFX, sound_get("sfx_knifehit_m"));
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("nspec_proj"));
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_ANIM_SPEED, .25);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_DESTROY_EFFECT, vfx_knifebreak);
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_HSPEED, 15.58); //i did the math
set_hitbox_value(AT_FTILT, 3, HG_PROJECTILE_VSPEED, 9);
set_hitbox_value(AT_FTILT, 3, HG_EFFECT, 12);
set_hitbox_value(AT_FTILT, 3, HG_EXTENDED_PARRY_STUN, true); //parrystun is set manually in hitbox_update, they only have parrystun when delayed