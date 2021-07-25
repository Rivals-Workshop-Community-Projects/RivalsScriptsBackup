set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial2"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial2_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 11);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);


set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 8);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(AT_DSPECIAL_AIR, 4);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE,  300);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 306);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE,  300);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_shovel_hit_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 306);

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, 35);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE,  80);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 20);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE,  80);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, .35);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX, asset_get("sfx_shovel_hit_med1"));