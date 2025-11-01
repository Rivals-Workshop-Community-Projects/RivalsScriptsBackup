set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_NUM_WINDOWS, 4);
set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 15);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("big_haunt"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 1);

set_window_value(49, 2, AG_WINDOW_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_LENGTH, 70);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 65);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, sound_get("haunt_stop"));
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 64);

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 55);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 24);

set_num_hitboxes(49, 3);

set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 5);
set_hitbox_value(49, 1, HG_HITBOX_X, 0);
set_hitbox_value(49, 1, HG_HITBOX_Y, -72);
set_hitbox_value(49, 1, HG_WIDTH, 360);
set_hitbox_value(49, 1, HG_HEIGHT, 240);
set_hitbox_value(49, 1, HG_SHAPE, 1);
set_hitbox_value(49, 1, HG_PRIORITY, 1);
set_hitbox_value(49, 1, HG_DAMAGE, 3);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 302);
set_hitbox_value(49, 1, HG_THROWS_ROCK, 2);
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_LIFETIME, 5);
set_hitbox_value(49, 2, HG_HITBOX_X, 0);
set_hitbox_value(49, 2, HG_HITBOX_Y, -72);
set_hitbox_value(49, 2, HG_WIDTH, 160);
set_hitbox_value(49, 2, HG_HEIGHT, 160);
set_hitbox_value(49, 2, HG_SHAPE, 0);
set_hitbox_value(49, 2, HG_PRIORITY, 2);
set_hitbox_value(49, 2, HG_DAMAGE, 2);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(49, 2, HG_ANGLE, 50);
set_hitbox_value(49, 2, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(49, 2, HG_TECHABLE, 3);
set_hitbox_value(49, 2, HG_HIT_SFX, asset_get("sfx_ori_seinhit_medium"));
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 3);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 50);
set_hitbox_value(49, 3, HG_LIFETIME, 5);
set_hitbox_value(49, 3, HG_HITBOX_X, 0);
set_hitbox_value(49, 3, HG_HITBOX_Y, -72);
set_hitbox_value(49, 3, HG_WIDTH, 200);
set_hitbox_value(49, 3, HG_HEIGHT, 200);
set_hitbox_value(49, 3, HG_SHAPE, 0);
set_hitbox_value(49, 3, HG_PRIORITY, 2);
set_hitbox_value(49, 3, HG_DAMAGE, 3);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 302);
set_hitbox_value(49, 3, HG_ANGLE, 40);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(49, 3, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(49, 3, HG_BASE_HITPAUSE, 20);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(49, 3, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);
