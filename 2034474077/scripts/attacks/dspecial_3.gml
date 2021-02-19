set_attack_value(AT_DSPECIAL_3, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_3, AG_SPRITE, sprite_get("dspecial_3"));
set_attack_value(AT_DSPECIAL_3, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSPECIAL_3, AG_OFF_LEDGE, 0);
set_attack_value(AT_DSPECIAL_3, AG_AIR_SPRITE, sprite_get("dspecial_3"));
set_attack_value(AT_DSPECIAL_3, AG_HURTBOX_SPRITE, sprite_get("dspecial_3_hurt"));
set_attack_value(AT_DSPECIAL_3, AG_USES_CUSTOM_GRAVITY, 1);

set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_SFX, sound_get("counter"));
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.2);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_VSPEED, 0);
set_window_value(AT_DSPECIAL_3, 2, AG_WINDOW_VSPEED_TYPE, 2);

set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_3, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

set_window_value(AT_DSPECIAL_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSPECIAL_3, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_3, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSPECIAL_3, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.65);

//trigger
set_window_value(AT_DSPECIAL_3, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSPECIAL_3, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_3, 5, AG_WINDOW_ANIM_FRAME_START, 9);

//hoo-rah
set_window_value(AT_DSPECIAL_3, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_3, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_3, 6, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DSPECIAL_3, 6, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSPECIAL_3, 6, AG_WINDOW_ANIM_FRAME_START, 11);

//end
set_window_value(AT_DSPECIAL_3, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_3, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_3, 7, AG_WINDOW_ANIM_FRAME_START, 17);

set_window_value(AT_DSPECIAL_3, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_3, 8, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSPECIAL_3, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSPECIAL_3, 8, AG_WINDOW_ANIM_FRAME_START, 19);


set_num_hitboxes(AT_DSPECIAL_3, 2);

//grab
set_hitbox_value(AT_DSPECIAL_3, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_WINDOW, 5);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HITBOX_X, 56);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HITBOX_Y, -42);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_WIDTH, 163);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_HEIGHT, 157);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_ANGLE, 69);                                   //hehe
set_hitbox_value(AT_DSPECIAL_3, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_EXTRA_HITPAUSE, 40);
set_hitbox_value(AT_DSPECIAL_3, 1, HG_VISUAL_EFFECT, 301);

//launch hit
set_hitbox_value(AT_DSPECIAL_3, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HITBOX_X, 34);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HITBOX_Y, -10);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_WIDTH, 75);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_ANGLE, 45);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_BASE_HITPAUSE, 50);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_DSPECIAL_3, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));