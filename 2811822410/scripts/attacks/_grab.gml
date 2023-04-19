var curr_attack = AT_GRAB;

set_attack_value(curr_attack, AG_CATEGORY, 2);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("grab"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("grab_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 3);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(curr_attack, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 2);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 24);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_num_hitboxes(curr_attack, 1);

//Grab
set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_SHAPE, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 2);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 45);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 50);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 1);
set_hitbox_value(curr_attack, 1, HG_ANGLE, 90);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_clairen_nspecial_grab_success"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 305);

