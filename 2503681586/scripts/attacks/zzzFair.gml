set_attack_value(AT_FSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_FSPECIAL_AIR, AG_SPRITE, sprite_get("f_fair"));
set_attack_value(AT_FSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_FSPECIAL_AIR, AG_LANDING_LAG, 6);
set_attack_value(AT_FSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("f_fair_hurt"));

set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_TYPE, 8);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(AT_FSPECIAL_AIR, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_FSPECIAL_AIR, 2);
//Sour
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_LIFETIME, 14);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HEIGHT, 30);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_ANGLE, 70);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 1);
//set_hitbox_value(AT_FSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .25);

set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_X, 8);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITBOX_Y, -36);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HEIGHT, 36);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_ANGLE, 40);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_FSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .25);

