set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 5);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));
set_window_value(AT_DAIR, 1, AG_WINDOW_SFX_FRAME, 3);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 2);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 14);

var x1 = 6;
var y1 = -20;
var x2 = 10;
var y2 = 2;

set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, x1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, y1);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITSTUN_MULTIPLIER, 0.65);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, x2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, y2);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITSTUN_MULTIPLIER, 0.65);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, x1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, y1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, x2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, y2);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 5, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 5, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_X, x1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_Y, y1);
set_hitbox_value(AT_DAIR, 5, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 6, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 6, HG_WINDOW_CREATION_FRAME, 6);
set_hitbox_value(AT_DAIR, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_X, x2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_Y, y2);
set_hitbox_value(AT_DAIR, 6, HG_HITBOX_GROUP, 1);

set_hitbox_value(AT_DAIR, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 7, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_X, x1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_Y, y1);
set_hitbox_value(AT_DAIR, 7, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 8, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 8, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_DAIR, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_X, x2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_Y, y2);
set_hitbox_value(AT_DAIR, 8, HG_HITBOX_GROUP, 3);

set_hitbox_value(AT_DAIR, 9, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 9, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 9, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_X, x1);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_Y, y1);
set_hitbox_value(AT_DAIR, 9, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 10, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 10, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 10, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_X, x2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_Y, y2);
set_hitbox_value(AT_DAIR, 10, HG_HITBOX_GROUP, 4);

set_hitbox_value(AT_DAIR, 11, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 11, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 11, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_X, x1);
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_Y, y1);
set_hitbox_value(AT_DAIR, 11, HG_WIDTH, 55);
set_hitbox_value(AT_DAIR, 11, HG_HEIGHT, 50);
set_hitbox_value(AT_DAIR, 11, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 11, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 11, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 11, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 11, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 11, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 11, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 11, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 12, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 12, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(AT_DAIR, 12, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_X, x2);
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_Y, y2);
set_hitbox_value(AT_DAIR, 12, HG_WIDTH, 45);
set_hitbox_value(AT_DAIR, 12, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 12, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 12, HG_DAMAGE, 2);
set_hitbox_value(AT_DAIR, 12, HG_ANGLE, 290);
set_hitbox_value(AT_DAIR, 12, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DAIR, 12, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DAIR, 12, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 12, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_DAIR, 12, HG_HITBOX_GROUP, 5);

set_hitbox_value(AT_DAIR, 13, HG_PARENT_HITBOX, 11);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 13, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 13, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_X, x1);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_Y, y1);
set_hitbox_value(AT_DAIR, 13, HG_HITBOX_GROUP, 6);

set_hitbox_value(AT_DAIR, 14, HG_PARENT_HITBOX, 12);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 14, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DAIR, 14, HG_LIFETIME, 2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_X, x2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_Y, y2);
set_hitbox_value(AT_DAIR, 14, HG_HITBOX_GROUP, 6);