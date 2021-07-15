set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 3);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_medium1"));

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 11);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 9);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 2);


set_num_hitboxes(AT_DATTACK, 2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 120);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 361);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 20);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 96);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 53);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 5);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, .5);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));