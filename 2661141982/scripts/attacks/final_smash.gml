set_attack_value(49, AG_CATEGORY, 2);
set_attack_value(49, AG_SPRITE, sprite_get("fs"));
set_attack_value(49, AG_HURTBOX_SPRITE, sprite_get("fs_hurt"));
set_attack_value(49, AG_AIR_SPRITE, sprite_get("fs"));
set_attack_value(49, AG_HURTBOX_AIR_SPRITE, sprite_get("fs_hurt"));
set_attack_value(49, AG_NUM_WINDOWS, 5);
set_attack_value(49, AG_HAS_LANDING_LAG, 1);
set_attack_value(49, AG_OFF_LEDGE, 1);
set_attack_value(49, AG_LANDING_LAG, 12);

set_window_value(49, 1, AG_WINDOW_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_LENGTH, 12);
set_window_value(49, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 1, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(49, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(49, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(49, 1, AG_WINDOW_SFX, sound_get("lightready"));

set_window_value(49, 2, AG_WINDOW_TYPE, 9);
set_window_value(49, 2, AG_WINDOW_LENGTH, 21);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(49, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(49, 2, AG_WINDOW_HSPEED, 8);
set_window_value(49, 2, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(49, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(49, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));

set_window_value(49, 3, AG_WINDOW_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_LENGTH, 10);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 3, AG_WINDOW_ANIM_FRAME_START, 20);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(49, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(49, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .5);
set_window_value(49, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .5);
set_window_value(49, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 3, AG_WINDOW_SFX_FRAME, 8);
set_window_value(49, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

set_window_value(49, 4, AG_WINDOW_TYPE, 1);
set_window_value(49, 4, AG_WINDOW_LENGTH, 20);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 4, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(49, 4, AG_WINDOW_HSPEED, 6);
set_window_value(49, 4, AG_WINDOW_VSPEED, -12);

set_window_value(49, 5, AG_WINDOW_TYPE, 7);
set_window_value(49, 5, AG_WINDOW_LENGTH, 12);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 5, AG_WINDOW_ANIM_FRAME_START, 27);

//Cinematic version
set_window_value(49, 6, AG_WINDOW_TYPE, 1);
set_window_value(49, 6, AG_WINDOW_LENGTH, 60);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(49, 6, AG_WINDOW_ANIM_FRAME_START, 22);

set_window_value(49, 7, AG_WINDOW_TYPE, 1);
set_window_value(49, 7, AG_WINDOW_LENGTH, 40);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(49, 7, AG_WINDOW_ANIM_FRAME_START, 0);

set_window_value(49, 8, AG_WINDOW_TYPE, 10);
set_window_value(49, 8, AG_WINDOW_LENGTH, 1);
set_window_value(49, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 7, AG_WINDOW_SFX, asset_get("sfx_ori_bash_hit"));
set_window_value(49, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 8, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(49, 9, AG_WINDOW_TYPE, 1);
set_window_value(49, 9, AG_WINDOW_LENGTH, 30);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(49, 9, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(49, 9, AG_WINDOW_HAS_SFX, 1);
set_window_value(49, 9, AG_WINDOW_SFX, asset_get("sfx_abyss_explosion_big"));

set_window_value(49, 10, AG_WINDOW_TYPE, 1);
set_window_value(49, 10, AG_WINDOW_LENGTH, 40);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(49, 10, AG_WINDOW_ANIM_FRAME_START, 9);

set_num_hitboxes(49, 8);

set_hitbox_value(49, 1, HG_WINDOW, 2);
set_hitbox_value(49, 1, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(49, 1, HG_LIFETIME, 2);
set_hitbox_value(49, 1, HG_HITBOX_X, 18);
set_hitbox_value(49, 1, HG_HITBOX_Y, -34);
set_hitbox_value(49, 1, HG_WIDTH, 47);
set_hitbox_value(49, 1, HG_HEIGHT, 69);
set_hitbox_value(49, 1, HG_PRIORITY, 3);
set_hitbox_value(49, 1, HG_DAMAGE, 3);
set_hitbox_value(49, 1, HG_ANGLE, 45);
set_hitbox_value(49, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(49, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(49, 1, HG_EXTRA_HITPAUSE, 8);
set_hitbox_value(49, 1, HG_HIT_SFX, asset_get ("sfx_blow_medium2"));
set_hitbox_value(49, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 1, HG_VISUAL_EFFECT, 6);//161


set_hitbox_value(49, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 2, HG_WINDOW, 2);
set_hitbox_value(49, 2, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(49, 2, HG_LIFETIME, 2);
set_hitbox_value(49, 2, HG_HITBOX_X, 18);
set_hitbox_value(49, 2, HG_HITBOX_Y, -34);
set_hitbox_value(49, 2, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(49, 3, HG_WINDOW, 2);
set_hitbox_value(49, 3, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(49, 3, HG_LIFETIME, 2);
set_hitbox_value(49, 3, HG_HITBOX_X, 18);
set_hitbox_value(49, 3, HG_HITBOX_Y, -34);
set_hitbox_value(49, 3, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 4, HG_WINDOW, 4);
set_hitbox_value(49, 4, HG_LIFETIME, 3);
set_hitbox_value(49, 4, HG_HITBOX_X, 18);
set_hitbox_value(49, 4, HG_HITBOX_Y, -34);
set_hitbox_value(49, 4, HG_WIDTH, 47);
set_hitbox_value(49, 4, HG_HEIGHT, 69);
set_hitbox_value(49, 4, HG_PRIORITY, 4);
set_hitbox_value(49, 4, HG_DAMAGE, 5);
set_hitbox_value(49, 4, HG_ANGLE, 60);
set_hitbox_value(49, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 4, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 4, HG_HIT_SFX, asset_get ("sfx_blow_heavy1"));
set_hitbox_value(49, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(49, 4, HG_VISUAL_EFFECT, 6);//161

set_hitbox_value(49, 5, HG_PARENT_HITBOX, 4);
set_hitbox_value(49, 5, HG_WINDOW, 4);
set_hitbox_value(49, 5, HG_LIFETIME, 2);
set_hitbox_value(49, 5, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(49, 5, HG_HITBOX_X, 18);
set_hitbox_value(49, 5, HG_HITBOX_Y, -34);
set_hitbox_value(49, 5, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 6, HG_WINDOW, 4);
set_hitbox_value(49, 6, HG_WINDOW_CREATION_FRAME, 5);
set_hitbox_value(49, 6, HG_LIFETIME, 3);
set_hitbox_value(49, 6, HG_HITBOX_X, 18);
set_hitbox_value(49, 6, HG_HITBOX_Y, -34);
set_hitbox_value(49, 6, HG_WIDTH, 47);
set_hitbox_value(49, 6, HG_HEIGHT, 69);
set_hitbox_value(49, 6, HG_PRIORITY, 4);
set_hitbox_value(49, 6, HG_DAMAGE, 2);
set_hitbox_value(49, 6, HG_ANGLE, 80);
set_hitbox_value(49, 6, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 6, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(49, 6, HG_BASE_HITPAUSE, 12);
set_hitbox_value(49, 6, HG_VISUAL_EFFECT, 251 );//161
set_hitbox_value(49, 6, HG_HIT_SFX, asset_get ("sfx_ori_energyhit_heavy"));
set_hitbox_value(49, 6, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 7, HG_WINDOW, 7);
set_hitbox_value(49, 7, HG_WINDOW_CREATION_FRAME, 36);
set_hitbox_value(49, 7, HG_LIFETIME, 9);
set_hitbox_value(49, 7, HG_HITBOX_X, 0);
set_hitbox_value(49, 7, HG_HITBOX_Y, -21);
set_hitbox_value(49, 7, HG_WIDTH, 60);
set_hitbox_value(49, 7, HG_HEIGHT, 60);
set_hitbox_value(49, 7, HG_PRIORITY, 4);
set_hitbox_value(49, 7, HG_DAMAGE, 5);
set_hitbox_value(49, 7, HG_ANGLE, 270);
set_hitbox_value(49, 7, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(49, 7, HG_HITSTUN_MULTIPLIER, 10);
set_hitbox_value(49, 7, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 7, HG_VISUAL_EFFECT, 251);//161
set_hitbox_value(49, 7, HG_HIT_SFX, asset_get ("sfx_ori_energyhit_heavy"));
set_hitbox_value(49, 7, HG_HITBOX_GROUP, -1);

set_hitbox_value(49, 8, HG_WINDOW, 8);
set_hitbox_value(49, 8, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(49, 8, HG_LIFETIME, 2);
set_hitbox_value(49, 8, HG_HITBOX_X, 0);
set_hitbox_value(49, 8, HG_HITBOX_Y, -21);
set_hitbox_value(49, 8, HG_WIDTH, 60);
set_hitbox_value(49, 8, HG_HEIGHT, 60);
set_hitbox_value(49, 8, HG_PRIORITY, 4);
set_hitbox_value(49, 8, HG_DAMAGE, 1);
set_hitbox_value(49, 8, HG_ANGLE, 45);
set_hitbox_value(49, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(49, 8, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(49, 8, HG_EXTRA_HITPAUSE, 5);
set_hitbox_value(49, 8, HG_BASE_HITPAUSE, 2);
set_hitbox_value(49, 8, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(49, 8, HG_VISUAL_EFFECT, 1);//161
set_hitbox_value(49, 8, HG_HITBOX_GROUP, -1);


