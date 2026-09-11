set_attack_value(49, AG_CATEGORY, 1);
set_attack_value(49, AG_SPRITE, sprite_get("alt_fair"));
set_attack_value(49, AG_HAS_LANDING_LAG, 1);
set_attack_value(49, AG_LANDING_LAG, 5);
set_attack_value(49, AG_HURTBOX_SPRITE, asset_get("ex_guy_hurt_box"));

set_attack_value(49, AG_NUM_WINDOWS, 4);

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 9);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("whip2"));

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 3);
//set_window_value(49, 2, AG_WINDOW_SFX_FRAME, 1);
//set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
//set_window_value(49, 2, AG_WINDOW_SFX, sound_get("whip2"));

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 3);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 15);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(49, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(49, 1);

//Sideways Whip
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 1, HG_WINDOW, 3);
set_hitbox_value(49, 1, HG_LIFETIME, 3);
set_hitbox_value(49, 1, HG_HITBOX_X, 60);
set_hitbox_value(49, 1, HG_HITBOX_Y, -25);
set_hitbox_value(49, 1, HG_WIDTH, 110);
set_hitbox_value(49, 1, HG_HEIGHT, 26);
set_hitbox_value(49, 1, HG_PRIORITY, 5);
set_hitbox_value(49, 1, HG_DAMAGE, 3);
set_hitbox_value(49, 1, HG_ANGLE, 55);
set_hitbox_value(49, 1, HG_SHAPE, 2);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(49, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(49, 1, HG_HITPAUSE_SCALING, 0.25);
