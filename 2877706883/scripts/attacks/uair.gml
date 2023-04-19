curr_attack = AT_UAIR;

set_attack_value(curr_attack, AG_CATEGORY, 1);
set_attack_value(curr_attack, AG_SPRITE, sprite_get("uair"));
set_attack_value(curr_attack, AG_NUM_WINDOWS, 4);
set_attack_value(curr_attack, AG_HAS_LANDING_LAG, 1);
set_attack_value(curr_attack, AG_LANDING_LAG, 6);
set_attack_value(curr_attack, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(curr_attack, 1, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 1, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(curr_attack, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(curr_attack, 1, AG_WINDOW_SFX, asset_get("sfx_spin"));
set_window_value(curr_attack, 1, AG_WINDOW_SFX_FRAME, 5);

set_window_value(curr_attack, 2, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 2, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 3, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 3, AG_WINDOW_LENGTH, 8);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(curr_attack, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(curr_attack, 4, AG_WINDOW_TYPE, 1);
set_window_value(curr_attack, 4, AG_WINDOW_LENGTH, 9);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(curr_attack, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(curr_attack, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(curr_attack, 4);

var i = 1;
set_hitbox_value(curr_attack, i, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, i, HG_WINDOW, 2);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_LIFETIME, 4);
set_hitbox_value(curr_attack, i, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, i, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, i, HG_WIDTH, 40);
set_hitbox_value(curr_attack, i, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, i, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, i, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, i, HG_ANGLE,  90);
set_hitbox_value(curr_attack, i, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(curr_attack, i, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(curr_attack, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, i, HG_VISUAL_EFFECT, 301);

i += 1;
set_hitbox_value(curr_attack, i, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(curr_attack, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, i, HG_WINDOW, 2);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_LIFETIME, 4);
set_hitbox_value(curr_attack, i, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, i, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, i, HG_WIDTH, 40);
set_hitbox_value(curr_attack, i, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, i, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, i, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, i, HG_ANGLE,  90);
set_hitbox_value(curr_attack, i, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(curr_attack, i, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(curr_attack, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, i, HG_VISUAL_EFFECT, 301);

i += 1;
set_hitbox_value(curr_attack, i, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(curr_attack, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, i, HG_WINDOW, 3);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_LIFETIME, 4);
set_hitbox_value(curr_attack, i, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, i, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, i, HG_WIDTH, 40);
set_hitbox_value(curr_attack, i, HG_HEIGHT, 60);
set_hitbox_value(curr_attack, i, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, i, HG_DAMAGE, 2);
set_hitbox_value(curr_attack, i, HG_ANGLE,  90);
set_hitbox_value(curr_attack, i, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(curr_attack, i, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(curr_attack, i, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_BASE_HITPAUSE, 4);
set_hitbox_value(curr_attack, i, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(curr_attack, i, HG_HIT_SFX, asset_get("sfx_blow_weak1"));
set_hitbox_value(curr_attack, i, HG_VISUAL_EFFECT, 301);

i += 1;
set_hitbox_value(curr_attack, i, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(curr_attack, i, HG_HITBOX_TYPE, 1);
set_hitbox_value(curr_attack, i, HG_WINDOW, 3);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_LIFETIME, 4);
set_hitbox_value(curr_attack, i, HG_HITBOX_Y, -40);
set_hitbox_value(curr_attack, i, HG_HITBOX_X, 0);
set_hitbox_value(curr_attack, i, HG_WIDTH, 50);
set_hitbox_value(curr_attack, i, HG_HEIGHT, 70);
set_hitbox_value(curr_attack, i, HG_PRIORITY, 2);
set_hitbox_value(curr_attack, i, HG_DAMAGE, 3);
set_hitbox_value(curr_attack, i, HG_ANGLE,  90);
set_hitbox_value(curr_attack, i, HG_ANGLE_FLIPPER,  0);
set_hitbox_value(curr_attack, i, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(curr_attack, i, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(curr_attack, i, HG_HITBOX_GROUP, -1);
set_hitbox_value(curr_attack, i, HG_BASE_HITPAUSE, 7);
set_hitbox_value(curr_attack, i, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(curr_attack, i, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(curr_attack, i, HG_VISUAL_EFFECT, 304);


