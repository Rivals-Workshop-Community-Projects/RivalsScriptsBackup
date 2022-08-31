set_attack_value(AT_FTHROW, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FTHROW, AG_NUM_WINDOWS, 3);
set_attack_value(AT_FTHROW, AG_HURTBOX_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_FTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_FTHROW, AG_CATEGORY, 2);

//Windup
set_window_value(AT_FTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 1, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_FTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FTHROW, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//Hit
set_window_value(AT_FTHROW, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 13);

//End
set_window_value(AT_FTHROW, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FTHROW, 3, AG_WINDOW_ANIM_FRAME_START, 15);



set_num_hitboxes(AT_FTHROW, 1);

set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FTHROW, 1, HG_WINDOW, 7);
set_hitbox_value(AT_FTHROW, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_X, 24);
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FTHROW, 1, HG_WIDTH, 60);
set_hitbox_value(AT_FTHROW, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_FTHROW, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_FTHROW, 1, HG_DAMAGE, 8)
set_hitbox_value(AT_FTHROW, 1, HG_ANGLE, 60);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FTHROW, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_FTHROW, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_FTHROW, 1, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(AT_FTHROW, 1, HG_VISUAL_EFFECT, 193);
set_hitbox_value(AT_FTHROW, 1, HG_HIT_SFX, asset_get("sfx_zetter_downb"));
set_hitbox_value(AT_FTHROW, 1, HG_HITBOX_GROUP, 2);

