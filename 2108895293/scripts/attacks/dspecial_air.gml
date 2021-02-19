set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 0);

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("kick2"));
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 8);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 9);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 14); //Landing lag
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 0); 

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -4);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 48);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 272); //292
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 6); //7
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.7); //0.6
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 44);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 361);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 32);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));