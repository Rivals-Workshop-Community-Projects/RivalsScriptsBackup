set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("pizzahead_jab"));
set_attack_value(AT_EXTRA_1, AG_NUM_WINDOWS, 7);
set_attack_value(AT_EXTRA_1, AG_HURTBOX_SPRITE, sprite_get("pizzahead_jab_hurt"));
set_attack_value(AT_EXTRA_1, AG_NO_PARRY_STUN, 1);

// jab 1
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_EXTRA_1, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));

set_window_value(AT_EXTRA_1, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_EXTRA_1, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_1, 3, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_EXTRA_1, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//Endlag
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_EXTRA_1, 5, AG_WINDOW_ANIM_FRAME_START, 7);
//set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CANCEL_TYPE, 1);
//set_window_value(AT_EXTRA_1, 5, AG_WINDOW_CANCEL_FRAME, 0);

// jab 2
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_LENGTH, 3);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HSPEED, 4);
set_window_value(AT_EXTRA_1, 6, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_EXTRA_1, 7, AG_WINDOW_LENGTH, 15);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_1, 7, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_EXTRA_1, 2);

set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 1, HG_WINDOW, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_X, 66);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITBOX_Y, -56);
set_hitbox_value(AT_EXTRA_1, 1, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_1, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_EXTRA_1, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_EXTRA_1, 1, HG_ANGLE, 85);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_EXTRA_1, 1, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_1, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_EXTRA_1, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_light2"));
set_hitbox_value(AT_EXTRA_1, 1, HG_VISUAL_EFFECT, 302);

set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_1, 2, HG_WINDOW, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_X, 67);
set_hitbox_value(AT_EXTRA_1, 2, HG_HITBOX_Y, -42);
set_hitbox_value(AT_EXTRA_1, 2, HG_WIDTH, 70);
set_hitbox_value(AT_EXTRA_1, 2, HG_HEIGHT, 70);
set_hitbox_value(AT_EXTRA_1, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_1, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_EXTRA_1, 2, HG_ANGLE, 80);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_EXTRA_1, 2, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_EXTRA_1, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_EXTRA_1, 1, HG_HITPAUSE_SCALING, 0.2);
set_hitbox_value(AT_EXTRA_1, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_light1"));
set_hitbox_value(AT_EXTRA_1, 2, HG_VISUAL_EFFECT, 302);