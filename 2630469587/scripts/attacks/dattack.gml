set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DATTACK, AG_OFF_LEDGE, 1);
set_attack_value(AT_DATTACK, AG_USES_CUSTOM_GRAVITY, 1);

set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 10);

set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GRAVITY, 2);

set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED, -5.5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GRAVITY, 1.5);

set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 1);

set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GRAVITY, 1.2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, 4.5);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, sound_get("dashattack"));


set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DATTACK, 5, AG_WINDOW_VSPEED, 2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_VSPEED_TYPE, 0);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GRAVITY, 1.2);


set_window_value(AT_DATTACK, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GRAVITY, 1.5);
set_window_value(AT_DATTACK, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.3);

set_window_value(AT_DATTACK, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_DATTACK, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 7, AG_WINDOW_SFX, asset_get("sfx_land"));
set_window_value(AT_DATTACK, 7, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DATTACK, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 8, AG_WINDOW_ANIM_FRAME_START, 20);


set_window_value(AT_DATTACK, 9, AG_WINDOW_LENGTH, 13);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DATTACK, 9, AG_WINDOW_ANIM_FRAME_START, 24);
set_window_value(AT_DATTACK, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 9, AG_WINDOW_SFX, sound_get("sheathe"));
set_window_value(AT_DATTACK, 9, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DATTACK, 10, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 10, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 10, AG_WINDOW_ANIM_FRAME_START, 29);

set_num_hitboxes(AT_DATTACK, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 95);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 100);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, sound_get("heavyslashsoku"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 45);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 2, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, sound_get("heavyslashsoku"));

