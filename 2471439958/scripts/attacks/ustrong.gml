set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("up_scythe"));

set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("up_scythe_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG, AG_CATEGORY, 2);

set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 4);

set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 2);

set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_USTRONG, 2, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 4);

set_hitbox_value(AT_USTRONG, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 44);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 60);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 90);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 12);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USTRONG, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 2, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_X, 4);
set_hitbox_value(AT_USTRONG, 2, HG_HITBOX_Y, -79);
set_hitbox_value(AT_USTRONG, 2, HG_WIDTH, 90);
set_hitbox_value(AT_USTRONG, 2, HG_HEIGHT, 57);
set_hitbox_value(AT_USTRONG, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_USTRONG, 2, HG_DAMAGE, 14);
set_hitbox_value(AT_USTRONG, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_USTRONG, 2, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 2, HG_BASE_HITPAUSE, 22);
set_hitbox_value(AT_USTRONG, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_USTRONG, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 3, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_USTRONG, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_X, -36);
set_hitbox_value(AT_USTRONG, 3, HG_HITBOX_Y, -36);
set_hitbox_value(AT_USTRONG, 3, HG_WIDTH, 65);
set_hitbox_value(AT_USTRONG, 3, HG_HEIGHT, 75);
set_hitbox_value(AT_USTRONG, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_USTRONG, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 3, HG_ANGLE, 115);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 3, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(AT_USTRONG, 3, HG_BASE_HITPAUSE, 16);
set_hitbox_value(AT_USTRONG, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_USTRONG, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_USTRONG, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_X, -48);
set_hitbox_value(AT_USTRONG, 4, HG_HITBOX_Y, -6);
set_hitbox_value(AT_USTRONG, 4, HG_WIDTH, 5);
set_hitbox_value(AT_USTRONG, 4, HG_HEIGHT, 5);
set_hitbox_value(AT_USTRONG, 4, HG_PRIORITY, 10);
set_hitbox_value(AT_USTRONG, 4, HG_DAMAGE, 10);
set_hitbox_value(AT_USTRONG, 4, HG_ANGLE, 270);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_USTRONG, 4, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(AT_USTRONG, 4, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_USTRONG, 4, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_USTRONG, 4, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
