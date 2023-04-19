curr_attack = AT_JAB;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("jab"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 6);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(curr_attack, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_CANCEL_FRAME, 2);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 6);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(curr_attack, 4, AG_WINDOW_SFX_FRAME, 4);
//set_window_value(curr_attack, 4, AG_WINDOW_HSPEED, 5);

set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(curr_attack, 6, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 6, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAME_START, 8);
//set_window_value(curr_attack, 6, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 2);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 30);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 80);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 4);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 5);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 30);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 60);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 6);
set_hitbox_value(curr_attack, 2, HG_ANGLE,  45);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 301);
