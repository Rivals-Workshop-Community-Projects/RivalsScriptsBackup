set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("dspecial"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 54);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 54);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(AT_TAUNT, 2);

set_hitbox_value(AT_TAUNT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, 6);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 65);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 49);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 110);


set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 54);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, -15);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 61);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 120);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, .2);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, asset_get("sfx_blow_weak1"));


/*set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 3);
set_attack_value(AT_TAUNT, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_TAUNT, AG_OFF_LEDGE, 1);
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, asset_get("ex_guy_crouch_box"));

set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, asset_get("sfx_land_light"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 50);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 12);
//set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);*/

/*
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 25);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, asset_get("sfx_orca_bite"));

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 18);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 9);
*/