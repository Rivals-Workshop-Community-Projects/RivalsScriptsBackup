set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);//空中のみ
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_LANDING_LAG, 10);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -7);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("fstr2"));

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 9);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HSPEED, 16);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_VSPEED, 16);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, .1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_INVINCIBILITY	, 1);//無敵

set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 10);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_ANIM_FRAME_START, 23);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_DSPECIAL_AIR, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, 5);

set_num_hitboxes(AT_DSPECIAL_AIR, 1);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 40);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, .6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 14);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);

