set_attack_value(49, AG_SPRITE, sprite_get("final_smash"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("final_smash_hurt"));

set_attack_value(49, AG_NUM_WINDOWS, 8);

//The move
set_window_value(49, 1, AG_WINDOW_LENGTH, 20);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("sfx_anthem_finalstart"));
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 12);
set_window_value(49, 1, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 2, AG_WINDOW_LENGTH, 12);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(49, 2, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 3, AG_WINDOW_LENGTH, 8);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX, sound_get("sfx_anthem_final1"));
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 7);
set_window_value(49, 3, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 4, AG_WINDOW_LENGTH, 6);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(49, 4, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 5, AG_WINDOW_LENGTH, 120);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(49, 5, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 5, AG_WINDOW_GOTO, 9);
set_window_value(49, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 5, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 6, AG_WINDOW_LENGTH, 60);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(49, 6, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 6, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 7, AG_WINDOW_LENGTH, 480);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(49, 7, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(49, 8, AG_WINDOW_LENGTH, 60);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(49, 8, AG_WINDOW_INVINCIBILITY, 1);
set_window_value(49, 8, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 8, AG_WINDOW_VSPEED_TYPE, 1);

set_num_hitboxes(49, 3);

//Initial Hit
set_hitbox_value(49, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 1, HG_WINDOW, 4);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(49, 1, HG_LIFETIME, 3);
set_hitbox_value(49, 1, HG_HITBOX_X, 88);
set_hitbox_value(49, 1, HG_HITBOX_Y, -56);
set_hitbox_value(49, 1, HG_WIDTH, 108);
set_hitbox_value(49, 1, HG_HEIGHT, 112);
set_hitbox_value(49, 1, HG_PRIORITY, 10);
set_hitbox_value(49, 1, HG_DAMAGE, 7);
set_hitbox_value(49, 1, HG_ANGLE, 60);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 9);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 112);
set_hitbox_value(49, 1, HG_HIT_SFX, sound_get("sfx_anthem_final1"));

set_hitbox_value(49, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 2, HG_WINDOW, 4);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 2, HG_LIFETIME, 3);
set_hitbox_value(49, 2, HG_HITBOX_X, 43);
set_hitbox_value(49, 2, HG_HITBOX_Y, -72);
set_hitbox_value(49, 2, HG_WIDTH, 268);
set_hitbox_value(49, 2, HG_HEIGHT, 144);
set_hitbox_value(49, 2, HG_PRIORITY, 10);
set_hitbox_value(49, 2, HG_DAMAGE, 9);
set_hitbox_value(49, 2, HG_ANGLE, 60);
set_hitbox_value(49, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(49, 2, HG_VISUAL_EFFECT, 112);
set_hitbox_value(49, 2, HG_HIT_SFX, sound_get("sfx_anthem_final1"));

set_hitbox_value(49, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 3, HG_WINDOW, 4);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(49, 3, HG_LIFETIME, 3);
set_hitbox_value(49, 3, HG_HITBOX_X, 78);
set_hitbox_value(49, 3, HG_HITBOX_Y, -96);
set_hitbox_value(49, 3, HG_WIDTH, 136);
set_hitbox_value(49, 3, HG_HEIGHT, 192);
set_hitbox_value(49, 3, HG_PRIORITY, 10);
set_hitbox_value(49, 3, HG_ANGLE, 60);
set_hitbox_value(49, 3, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 3, HG_HITPAUSE_SCALING, 9);
set_hitbox_value(49, 3, HG_VISUAL_EFFECT, 112);
set_hitbox_value(49, 3, HG_HIT_SFX, sound_get("sfx_anthem_final1"));


set_hitbox_value(49, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(49, 4, HG_HITBOX_GROUP, 2);
set_hitbox_value(49, 4, HG_WIDTH, 32);
set_hitbox_value(49, 4, HG_HEIGHT, 32);
set_hitbox_value(49, 4, HG_SHAPE, 1);
set_hitbox_value(49, 4, HG_LIFETIME, 3);
set_hitbox_value(49, 4, HG_WIDTH, 4);
set_hitbox_value(49, 4, HG_HEIGHT, 4);
set_hitbox_value(49, 4, HG_PRIORITY, 9);
set_hitbox_value(49, 4, HG_DAMAGE, 25);
set_hitbox_value(49, 4, HG_ANGLE, 54);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 15);
set_hitbox_value(49, 4, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(49, 4, HG_EXTRA_CAMERA_SHAKE, 1);
set_hitbox_value(49, 4, HG_TECHABLE, 3);

