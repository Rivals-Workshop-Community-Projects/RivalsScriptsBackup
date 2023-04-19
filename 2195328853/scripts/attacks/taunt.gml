set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
set_attack_value(AT_TAUNT, AG_SPRITE, sprite_get("taunt"));
set_attack_value(AT_TAUNT, AG_HURTBOX_SPRITE, sprite_get("hurtbox"));
set_attack_value(AT_TAUNT, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_TAUNT, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

set_window_value(AT_TAUNT, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_TAUNT, 2, AG_WINDOW_ANIM_FRAMES, 13);
set_window_value(AT_TAUNT, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//dance taunt
set_window_value(AT_TAUNT, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 3, AG_WINDOW_LENGTH, 16);
set_window_value(AT_TAUNT, 3, AG_WINDOW_ANIM_FRAMES, 8);

//pose taunt
set_window_value(AT_TAUNT, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAMES, 14);
//set_window_value(AT_TAUNT, 4, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_TAUNT, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_TAUNT, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT, 5, AG_WINDOW_ANIM_FRAME_START, 14);

set_window_value(AT_TAUNT, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_TAUNT, 6, AG_WINDOW_ANIM_FRAME_START, 15);


set_num_hitboxes(AT_TAUNT, 3);

set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW, 3);
set_hitbox_value(AT_TAUNT, 1, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_TAUNT, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_X, -10);
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_TAUNT, 1, HG_WIDTH, 50);
set_hitbox_value(AT_TAUNT, 1, HG_HEIGHT, 40);
set_hitbox_value(AT_TAUNT, 1, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_TAUNT, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_TAUNT, 1, HG_ANGLE, 270);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_TAUNT, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_TAUNT, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_TAUNT, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_TAUNT, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_TAUNT, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 2, HG_WINDOW_CREATION_FRAME, 18);
set_hitbox_value(AT_TAUNT, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_TAUNT, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_TAUNT, 2, HG_WIDTH, 50);
set_hitbox_value(AT_TAUNT, 2, HG_HEIGHT, 55);
set_hitbox_value(AT_TAUNT, 2, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 2, HG_PRIORITY, 6);
set_hitbox_value(AT_TAUNT, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_TAUNT, 2, HG_ANGLE, 40);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 2, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_TAUNT, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_TAUNT, 2, HG_HITPAUSE_SCALING, 1.85);
set_hitbox_value(AT_TAUNT, 2, HG_HIT_SFX, sound_get("slap"));

set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW, 4);
set_hitbox_value(AT_TAUNT, 3, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(AT_TAUNT, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_X, -25);
set_hitbox_value(AT_TAUNT, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_TAUNT, 3, HG_WIDTH, 60);
set_hitbox_value(AT_TAUNT, 3, HG_HEIGHT, 50);
set_hitbox_value(AT_TAUNT, 3, HG_SHAPE, 0);
set_hitbox_value(AT_TAUNT, 3, HG_PRIORITY, 6);
set_hitbox_value(AT_TAUNT, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_TAUNT, 3, HG_ANGLE, 140);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_TAUNT, 3, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_TAUNT, 3, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_TAUNT, 3, HG_HITPAUSE_SCALING, 1.85);
set_hitbox_value(AT_TAUNT, 3, HG_HIT_SFX, sound_get("slap"));