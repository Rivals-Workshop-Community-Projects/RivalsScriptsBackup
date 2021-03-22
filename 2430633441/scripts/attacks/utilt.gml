set_attack_value(AT_UTILT, AG_SPRITE, sprite_get("utilt"));
set_attack_value(AT_UTILT, AG_NUM_WINDOWS, 4);
set_attack_value(AT_UTILT, AG_HURTBOX_SPRITE, sprite_get("utilt_hurt"));

set_window_value(AT_UTILT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_UTILT, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_UTILT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX, asset_get("sfx_rag_axe_swing"));
set_window_value(AT_UTILT, 1, AG_WINDOW_SFX_FRAME, 6);

set_window_value(AT_UTILT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_UTILT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UTILT, 2, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));

set_window_value(AT_UTILT, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UTILT, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UTILT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_UTILT, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UTILT, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UTILT,3);

set_hitbox_value(AT_UTILT, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_X, 34);
set_hitbox_value(AT_UTILT, 1, HG_HITBOX_Y, -35);
set_hitbox_value(AT_UTILT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_UTILT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_UTILT, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UTILT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UTILT, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 1, HG_ANGLE, 110);
set_hitbox_value(AT_UTILT, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_UTILT, 1, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 1, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));


set_hitbox_value(AT_UTILT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UTILT, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_X, 10);
set_hitbox_value(AT_UTILT, 2, HG_HITBOX_Y, -15);
set_hitbox_value(AT_UTILT, 2, HG_WIDTH, 80);
set_hitbox_value(AT_UTILT, 2, HG_HEIGHT, 30);
set_hitbox_value(AT_UTILT, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 2, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 2, HG_ANGLE, 45);
set_hitbox_value(AT_UTILT, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_UTILT, 2, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 2, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 2, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_med2"));


set_hitbox_value(AT_UTILT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UTILT, 3, HG_WINDOW, 3);
set_hitbox_value(AT_UTILT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_X, 24);
set_hitbox_value(AT_UTILT, 3, HG_HITBOX_Y, -70);
set_hitbox_value(AT_UTILT, 3, HG_WIDTH, 55);
set_hitbox_value(AT_UTILT, 3, HG_HEIGHT, 80);
set_hitbox_value(AT_UTILT, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_UTILT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_UTILT, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_UTILT, 3, HG_ANGLE, 125);
set_hitbox_value(AT_UTILT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_UTILT, 3, HG_KNOCKBACK_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_UTILT, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_UTILT, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_UTILT, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
