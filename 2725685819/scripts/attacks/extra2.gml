set_attack_value(AT_EXTRA_2, AG_CATEGORY, 2);
set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_EXTRA_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_EXTRA_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_EXTRA_2, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_EXTRA_2, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_EXTRA_2, 1, AG_WINDOW_LENGTH, 20);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_EXTRA_2, 1, AG_WINDOW_SFX_FRAME, 14);
// set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED, 3);
// set_window_value(AT_EXTRA_2, 1, AG_WINDOW_HSPEED_TYPE, 1);
// set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED, -1);
// set_window_value(AT_EXTRA_2, 1, AG_WINDOW_VSPEED_TYPE, 2);

//teleport
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_EXTRA_2, 2, AG_WINDOW_SFX_FRAME, 14);


//end window
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_LENGTH, 50);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_EXTRA_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);

set_window_value(AT_EXTRA_2, 4, AG_WINDOW_LENGTH, 50);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_EXTRA_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_EXTRA_2, 7);
//grab hitbox
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 1, HG_WIDTH, 120);
set_hitbox_value(AT_EXTRA_2, 1, HG_HEIGHT, 120);
set_hitbox_value(AT_EXTRA_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_EXTRA_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_VISUAL_EFFECT, vfx_slash);
set_hitbox_value(AT_EXTRA_2, 1, HG_HIT_SFX, sound_get("slicen"));
set_hitbox_value(AT_EXTRA_2, 1, HG_ANGLE_FLIPPER, 9);
set_hitbox_value(AT_EXTRA_2, 1, HG_EFFECT, 9);
set_hitbox_value(AT_EXTRA_2, 1, HG_TECHABLE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_SDI_MULTIPLIER, 0);
set_hitbox_value(AT_EXTRA_2, 1, HG_HITSTUN_MULTIPLIER, 0.6);
set_hitbox_value(AT_EXTRA_2, 1, HG_CHAOS_EXCLUDE, 1);
set_hitbox_value(AT_EXTRA_2, 1, HG_EXTRA_CAMERA_SHAKE, -1);

set_hitbox_value(AT_EXTRA_2, 2, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_EXTRA_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 2, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_EXTRA_2, 3, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 3, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_EXTRA_2, 3, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 3, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_EXTRA_2, 4, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 4, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_EXTRA_2, 4, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 4, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 4, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_EXTRA_2, 6, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 6, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_EXTRA_2, 6, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 6, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 6, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 6, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_EXTRA_2, 7, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_WINDOW, 1);
set_hitbox_value(AT_EXTRA_2, 7, HG_WINDOW_CREATION_FRAME, 16);
set_hitbox_value(AT_EXTRA_2, 7, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 7, HG_HITBOX_Y, -30);
set_hitbox_value(AT_EXTRA_2, 7, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_EXTRA_2, 7, HG_CHAOS_EXCLUDE, 1);

set_hitbox_value(AT_EXTRA_2, 8, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_DESTROY_EFFECT, jc_destroyed);
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_EXTRA_2, 8, HG_WINDOW, 3);
set_hitbox_value(AT_EXTRA_2, 8, HG_LIFETIME, 2);
set_hitbox_value(AT_EXTRA_2, 8, HG_HITBOX_X, 0);
set_hitbox_value(AT_EXTRA_2, 8, HG_HITBOX_Y, 0);
set_hitbox_value(AT_EXTRA_2, 8, HG_WIDTH, 100);
set_hitbox_value(AT_EXTRA_2, 8, HG_HEIGHT, 100);
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 8, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_EXTRA_2, 8, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_EXTRA_2, 8, HG_PRIORITY, 3);
set_hitbox_value(AT_EXTRA_2, 8, HG_DAMAGE, 18);
set_hitbox_value(AT_EXTRA_2, 8, HG_ANGLE, 65);
set_hitbox_value(AT_EXTRA_2, 8, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_EXTRA_2, 8, HG_KNOCKBACK_SCALING, 1.2);
set_hitbox_value(AT_EXTRA_2, 8, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_EXTRA_2, 8, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_EXTRA_2, 8, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_EXTRA_2, 8, HG_VISUAL_EFFECT, vfx_slash_strong);
set_hitbox_value(AT_EXTRA_2, 8, HG_HIT_SFX, sound_get("slicef"));
set_hitbox_value(AT_EXTRA_2, 8, HG_CHAOS_EXCLUDE, 1);