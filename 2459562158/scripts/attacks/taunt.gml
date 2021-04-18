set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));

set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 4);


set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX, sound_get("bag_taunt1"));
set_window_value(AT_TAUNT, 1, AG_WINDOW_SFX_FRAME,14);

set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 20);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_TAUNT, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX, sound_get("bag_taunt1"));
set_window_value(AT_TAUNT, 2, AG_WINDOW_SFX_FRAME,14);

set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 15);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_TAUNT, 3, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(AT_TAUNT, 3, AG_WINDOW_SFX_FRAME,0);

set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 75);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 15);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_TAUNT, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX, sound_get("bag_taunt3"));
set_window_value(AT_TAUNT, 4, AG_WINDOW_SFX_FRAME,34);

set_num_hitboxes(AT_TAUNT, has_rune("O"));
// perish
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 2);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 15);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 2);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -68);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, -5);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 10);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 999);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 120);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 100);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 20);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TAUNT, 1, HG_VISUAL_EFFECT, 304 );
set_hitbox_value(AT_TAUNT, 1, HG_HIT_LOCKOUT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, 0);
