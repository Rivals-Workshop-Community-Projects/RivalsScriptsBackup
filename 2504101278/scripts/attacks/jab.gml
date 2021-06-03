set_attack_value(AT_JAB, AG_SPRITE, sprite_get("jab"));
set_attack_value(AT_JAB, AG_NUM_WINDOWS, 3);
set_attack_value(AT_JAB, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(AT_JAB, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_JAB, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_med"));
set_window_value(AT_JAB, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .3);

set_window_value(AT_JAB, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_JAB, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_JAB, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);

var frame_len = get_window_value(AT_JAB, 2, AG_WINDOW_LENGTH) / get_window_value(AT_JAB, 2, AG_WINDOW_ANIM_FRAMES);
//set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_FRAME, frame_len*2);

set_window_value(AT_JAB, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_JAB, 2, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_JAB, 2, AG_WINDOW_SFX_FRAME, frame_len*2);

//set_window_value(AT_JAB, 2, AG_WINDOW_CANCEL_TYPE, 1);

set_window_value(AT_JAB, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_JAB, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_JAB, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_JAB, 3, AG_WINDOW_HAS_WHIFFLAG, 0);

set_num_hitboxes(AT_JAB, 2);

set_hitbox_value(AT_JAB, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 1, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 1, HG_LIFETIME, 2);

set_hitbox_value(AT_JAB, 1, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_X, 4);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_Y, -29);
set_hitbox_value(AT_JAB, 1, HG_WIDTH, 141);
set_hitbox_value(AT_JAB, 1, HG_HEIGHT, 54);

set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_JAB, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_JAB, 1, HG_ANGLE, 361);
set_hitbox_value(AT_JAB, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_JAB, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_JAB, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_JAB, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 1, HG_HITBOX_GROUP, -1);

//HITBOX 2
set_hitbox_value(AT_JAB, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_JAB, 2, HG_WINDOW, 2);
set_hitbox_value(AT_JAB, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_JAB, 2, HG_WINDOW_CREATION_FRAME, frame_len*3);
set_hitbox_value(AT_JAB, 2, HG_SHAPE, 2);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_X, 13);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_Y, -27);
set_hitbox_value(AT_JAB, 2, HG_WIDTH, 134);
set_hitbox_value(AT_JAB, 2, HG_HEIGHT, 52);

set_hitbox_value(AT_JAB, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_JAB, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_JAB, 2, HG_ANGLE, 70);
set_hitbox_value(AT_JAB, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_JAB, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_JAB, 2, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_JAB, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
set_hitbox_value(AT_JAB, 2, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_JAB, 2, HG_HITBOX_GROUP, -1);