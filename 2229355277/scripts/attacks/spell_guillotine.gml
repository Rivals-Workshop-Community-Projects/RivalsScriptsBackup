//this doesn't work but i promise it will eventually i hope

//Thwack. Internal move ID: 27.

set_attack_value(AT_UTHROW, AG_CATEGORY, 2);
set_attack_value(AT_UTHROW, AG_SPRITE, sprite_get("cast"));
set_attack_value(AT_UTHROW, AG_NUM_WINDOWS, 2);
set_attack_value(AT_UTHROW, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_UTHROW, AG_OFF_LEDGE, 1);
set_attack_value(AT_UTHROW, AG_AIR_SPRITE, sprite_get("cast"));
set_attack_value(AT_UTHROW, AG_HURTBOX_SPRITE, sprite_get("saffronhitbox"));

set_window_value(AT_UTHROW, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_UTHROW, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTHROW, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTHROW, 1, AG_WINDOW_SFX, sound_get("slice_clang"));

set_window_value(AT_UTHROW, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTHROW, 2, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTHROW, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_num_hitboxes(AT_UTHROW, 1);

set_hitbox_value(AT_UTHROW, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_UTHROW, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_UTHROW, 1, HG_HITBOX_X, 54);
set_hitbox_value(AT_UTHROW, 1, HG_SHAPE, 1);
set_hitbox_value(AT_UTHROW, 1, HG_WIDTH, 64);
set_hitbox_value(AT_UTHROW, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_UTHROW, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_UTHROW, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_UTHROW, 1, HG_KNOCKBACK_SCALING, .1);
set_hitbox_value(AT_UTHROW, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_UTHROW, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_UTHROW, 1, HG_HIT_SFX, asset_get("sfx_absa_singlezap1"));
set_hitbox_value(AT_UTHROW, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UTHROW, 1, HG_TECHABLE, 1);
