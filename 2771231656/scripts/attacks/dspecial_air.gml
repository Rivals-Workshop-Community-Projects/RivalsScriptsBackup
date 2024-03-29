set_attack_value(AT_DSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_AIR, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DSPECIAL_AIR, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_DSPECIAL_AIR, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_AIR, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 32);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DSPECIAL_AIR, 1, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED, 1);
set_window_value(AT_DSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_TYPE, 10);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DSPECIAL_AIR, 3, AG_WINDOW_VSPEED_TYPE, 1);

set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_AIR, 4, AG_WINDOW_ANIM_FRAME_START, 12);

set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_LENGTH, 20);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_ANIM_FRAME_START, 14);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_AIR, 5, AG_WINDOW_SFX, sound_get("slam"));

set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_DSPECIAL_AIR, 6, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSPECIAL_AIR, 4);

set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_X, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_WIDTH, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HEIGHT, 50);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_DAMAGE, 18);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 143);
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_abyss_explosion_big"));
set_hitbox_value(AT_DSPECIAL_AIR, 1, HG_HITBOX_GROUP, -1);

set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_X, -45);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_DAMAGE, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_ANGLE, 135);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_X, 55);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_WIDTH, 80);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_PRIORITY, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_DAMAGE, 13);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_ANGLE, 70);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_KNOCKBACK_SCALING, .2);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL_AIR, 3, HG_HIT_SFX, asset_get("sfx_abyss_explosion"));

set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WINDOW, 3);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_LIFETIME, 6);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_X, 25);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITBOX_Y, 10);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_WIDTH, 60);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HEIGHT, 75);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_PRIORITY, 2);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_DAMAGE, 4);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_KNOCKBACK_SCALING,.7);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_HIT_SFX,sound_get("punch_medium"));
set_hitbox_value(AT_DSPECIAL_AIR, 4, HG_TECHABLE, 3);
