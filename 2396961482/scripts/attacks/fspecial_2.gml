set_attack_value(AT_FSPECIAL_2, AG_SPRITE, sprite_get("fspecial2"));
set_attack_value(AT_FSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("fspecial2_hurt"));
set_attack_value(AT_FSPECIAL_2, AG_OFF_LEDGE, 0);
//set_attack_value(AT_FSPECIAL_2, AG_CATEGORY, 2);

set_attack_value(AT_FSPECIAL_2, AG_NUM_WINDOWS, 3);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HSPEED, 8);

set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSPECIAL_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_FSPECIAL_2, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WINDOW, 2);
//set_hitbox_value(AT_FTILT, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HITBOX_Y, -50);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_WIDTH, 65);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_SHAPE, 0);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_FSPECIAL_2, 1, HG_ANGLE, 35);//45
set_hitbox_value(AT_FSPECIAL_2, 1, HG_BASE_KNOCKBACK, 6);//8
set_hitbox_value(AT_FSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .5);//.2
set_hitbox_value(AT_FSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_FSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 1);


