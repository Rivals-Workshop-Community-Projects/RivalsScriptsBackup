curr_attack = AT_NAIR;

set_attack_value(curr_attack, AG_CATEGORY, 1);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("nair"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 3);
set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(curr_attack, AG_LANDING_LAG, 4);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("nair_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 4);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 3);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 12);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(curr_attack, 3, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 2);

set_hitbox_value(curr_attack, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, 1, HG_WINDOW, 2);
set_hitbox_value(curr_attack, 1, HG_LIFETIME, 3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_Y, -15);
set_hitbox_value(curr_attack, 1, HG_HITBOX_X, 8);
set_hitbox_value(curr_attack, 1, HG_WIDTH, 100);
set_hitbox_value(curr_attack, 1, HG_HEIGHT, 50);
set_hitbox_value(curr_attack, 1, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, 1, HG_DAMAGE, 5);
set_hitbox_value(curr_attack, 1, HG_ANGLE,  60);
set_hitbox_value(curr_attack, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(curr_attack, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(curr_attack, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(curr_attack, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(curr_attack, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(curr_attack, 1, HG_HITPAUSE_SCALING, .3);
set_hitbox_value(curr_attack, 1, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, 1, HG_VISUAL_EFFECT, 301);
