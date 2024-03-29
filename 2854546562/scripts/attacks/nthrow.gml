set_attack_value(AT_NTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_NTHROW, AG_CATEGORY, 2);

// THIS IS BACK THROW

//Windup
set_window_value(AT_NTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(AT_NTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//Hit
set_window_value(AT_NTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 18);

//End
set_window_value(AT_NTHROW, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 20);



set_num_hitboxes(AT_NTHROW, 1);

set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NTHROW, 1, HG_WINDOW, 7);
set_hitbox_value(AT_NTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_X, -24);
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_NTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_NTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_NTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_NTHROW, 1, HG_DAMAGE, 8)
set_hitbox_value(AT_NTHROW, 1, HG_ANGLE, 120);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NTHROW, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_NTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_NTHROW, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(AT_NTHROW, 1, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NTHROW, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(AT_NTHROW, 1, HG_HITBOX_GROUP, 2);

