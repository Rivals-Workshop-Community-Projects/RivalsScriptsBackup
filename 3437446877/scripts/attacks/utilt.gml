set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 8);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
/*set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 2);*/

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//hit
set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_UTILT, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 6);

/*set_window_value(AT_UTILT, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UTILT, 5, AG_WINDOW_ANIM_FRAME_START, 2);
//hit 2
set_window_value(AT_UTILT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 6, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_UTILT, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 7, AG_WINDOW_ANIM_FRAME_START, 6);*/

set_window_value(AT_UTILT, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 8, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_UTILT,1);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 74);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 92);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_waveland_gus"));

/*set_hitbox_value(AT_UTILT, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 6);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, -2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -39);*/


/*set_hitbox_value(AT_UTILT, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 30);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 32);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 90);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 50);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT_Y_OFFSET, -16);
set_hitbox_value(AT_UTILT, 3, HG_HITSTUN_MULTIPLIER, -1);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_MASK, sprite_get("nspecial_proj"));
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(AT_UTILT, 3, HG_PROJECTILE_HSPEED, 18);*/