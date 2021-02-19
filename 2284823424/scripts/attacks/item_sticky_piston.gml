set_attack_value(AT_EXTRA_1, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_1, AG_SPRITE, spr_nspecial_item_sticky_piston);
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 6);
set_attack_value(AT_EXTRA_1, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, hurtbox_spr);
set_attack_value(AT_EXTRA_1, AG_MUNO_ATTACK_NAME, "NSpecial: Sticky Piston");

//Startup
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, sfx_minecraft_piston_out);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 8);

//Active
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//Extended
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//Retracting foe
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX, sfx_minecraft_piston_in);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_SFX_FRAME, 4);

//Final hit
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 7);

//Final hit endlag
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

//Retracting surface
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_SFX, sfx_minecraft_piston_in);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_SFX_FRAME, 4);



set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 500);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 999);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 1, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 1, HG_EXTRA_HITPAUSE, 50);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_MUNO_HITBOX_NAME, "Grab");

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -28);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 20);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_EXTRA_1, 2, HG_SHAPE, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 85);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_EXTRA_1, 2, HG_MUNO_HITBOX_NAME, "Throw");