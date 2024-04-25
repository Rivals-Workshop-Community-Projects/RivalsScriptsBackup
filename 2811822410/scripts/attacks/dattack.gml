curr_attack = AT_DATTACK;

set_attack_value(curr_attack, AG_CATEGORY, 0);
//set_attack_value(curr_attack, AG_CATEGORY, 2);
//set_attack_value(curr_attack, AG_OFF_LEDGE, true);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("dattack"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(curr_attack, AG_WINDOW_HAS_CUSTOM_FRICTION, true);
set_attack_value(curr_attack, AG_USES_CUSTOM_GRAVITY, true);


set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 1, AG_WINDOW_HSPEED, 3);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, jump_sound);
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(curr_attack, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Air Time
_window_length = 9;
set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, _window_length);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(curr_attack, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 2, AG_WINDOW_SFX_FRAME, _window_length - 1);
set_window_value(curr_attack, 2, AG_WINDOW_CUSTOM_GRAVITY, 2);

//Hitbox
set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 28);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(curr_attack, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);


set_num_hitboxes(curr_attack, 1);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 3);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -35);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 35);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 70);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 70);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 7);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  361);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 8);
//set_hitbox_value(curr_attack, 1, HG_EXTRA_HITPAUSE, 9);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 304);
