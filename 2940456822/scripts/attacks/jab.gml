curr_attack = AT_JAB;

set_attack_value(curr_attack, AG_CATEGORY, 0);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("jab"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 9);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("jab_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 2);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 1);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(curr_attack, 3, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_CANCEL_FRAME, 4);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 4);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(curr_attack, 4, AG_WINDOW_SFX_FRAME, 2);
//set_window_value(curr_attack, 4, AG_WINDOW_HSPEED, 5);

set_window_value(curr_attack, 5, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 5, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(curr_attack, 5, AG_WINDOW_HSPEED, 3);

set_window_value(curr_attack, 6, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 6, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 6, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 6, AG_WINDOW_CANCEL_TYPE, 1);
set_window_value(curr_attack, 6, AG_WINDOW_CANCEL_FRAME, 6);
//set_window_value(curr_attack, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(curr_attack, 7, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 7, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 7, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(curr_attack, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 7, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(curr_attack, 7, AG_WINDOW_SFX_FRAME, 2);

set_window_value(curr_attack, 8, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 8, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 8, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(curr_attack, 8, AG_WINDOW_HSPEED, 6);

set_window_value(curr_attack, 9, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 9, AG_WINDOW_LENGTH, 16);
set_window_value(curr_attack, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 9, AG_WINDOW_ANIM_FRAME_START, 13);


set_num_hitboxes(curr_attack, 3);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 25);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 55);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 3);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  70);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
set_hitbox_value(curr_attack, 1, HG_FORCE_FLINCH, 1);

set_hitbox_value(curr_attack, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 2, HG_WINDOW, 5);
set_hitbox_value(curr_attack, 2, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 2, HG_HITBOX_Y, -20);
set_hitbox_value(curr_attack, 2, HG_HITBOX_X, 30);
set_hitbox_value(curr_attack, 2, HG_WIDTH, 50);
set_hitbox_value(curr_attack, 2, HG_HEIGHT, 30);
set_hitbox_value(curr_attack, 2, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 2, HG_DAMAGE, 4);
set_hitbox_value(curr_attack, 2, HG_ANGLE,  60);
set_hitbox_value(curr_attack, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(curr_attack, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(curr_attack, 2, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(curr_attack, 2, HG_VISUAL_EFFECT, 301);

set_hitbox_value(curr_attack, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 3, HG_WINDOW, 8);
set_hitbox_value(curr_attack, 3, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 3, HG_HITBOX_Y, -35);
set_hitbox_value(curr_attack, 3, HG_HITBOX_X, 40);
set_hitbox_value(curr_attack, 3, HG_WIDTH, 70);
set_hitbox_value(curr_attack, 3, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, 3, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 3, HG_DAMAGE, 7);
set_hitbox_value(curr_attack, 3, HG_ANGLE, 361);
set_hitbox_value(curr_attack, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, 3, HG_KNOCKBACK_SCALING, .8);
set_hitbox_value(curr_attack, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(curr_attack, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(curr_attack, 3, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(curr_attack, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(curr_attack, 3, HG_VISUAL_EFFECT, 304);