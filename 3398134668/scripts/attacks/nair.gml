set_attack_value(AT_NAIR, AG_CATEGORY, 1);
set_attack_value(AT_NAIR, AG_SPRITE, sprite_get("nair"));
set_attack_value(AT_NAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NAIR, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(AT_NAIR, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_NAIR, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(AT_NAIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NAIR, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NAIR, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_NAIR,1);

//set_hitbox_value(AT_NAIR, 1, HG_MUNO_HITBOX_NAME, "Multihit 1");

set_hitbox_value(AT_NAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NAIR, 1, HG_LIFETIME, 15);
set_hitbox_value(AT_NAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_Y, -28);
set_hitbox_value(AT_NAIR, 1, HG_HITBOX_X, 15);
set_hitbox_value(AT_NAIR, 1, HG_WIDTH, 63);
set_hitbox_value(AT_NAIR, 1, HG_HEIGHT, 26);
set_hitbox_value(AT_NAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NAIR, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_NAIR, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_NAIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NAIR, 1, HG_HITPAUSE_SCALING, .25);
set_hitbox_value(AT_NAIR, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_NAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));

