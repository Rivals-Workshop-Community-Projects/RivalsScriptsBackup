set_attack_value(AT_USPECIAL_3, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL_3, AG_SPRITE, sprite_get("uspecial_3"));
set_attack_value(AT_USPECIAL_3, AG_NUM_WINDOWS, 5);
set_attack_value(AT_USPECIAL_3, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL_3, AG_AIR_SPRITE, sprite_get("uspecial_3"));
set_attack_value(AT_USPECIAL_3, AG_HURTBOX_SPRITE, sprite_get("uspecial_3_hurt"));

set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_SFX_FRAME, 4);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_HSPEED, 1);
set_window_value(AT_USPECIAL_3, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_3, 2, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_3, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USPECIAL_3, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USPECIAL_3, 5, AG_WINDOW_ANIM_FRAME_START, 10);


set_num_hitboxes(AT_USPECIAL_3, 3);

//multihit
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 1, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_3, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITBOX_X, 19);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITBOX_Y, -74);
set_hitbox_value(AT_USPECIAL_3, 1, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_3, 1, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_3, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 1, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_3, 1, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL_3, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL_3, 1, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL_3, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_3, 1, HG_HITSTUN_MULTIPLIER, 1.1);

//finisher
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 2, HG_WINDOW, 4);
set_hitbox_value(AT_USPECIAL_3, 2, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITBOX_X, 5);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITBOX_Y, -68);
set_hitbox_value(AT_USPECIAL_3, 2, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HEIGHT, 80);
set_hitbox_value(AT_USPECIAL_3, 2, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_3, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 2, HG_DAMAGE, 2);
set_hitbox_value(AT_USPECIAL_3, 2, HG_ANGLE, 90);
set_hitbox_value(AT_USPECIAL_3, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_USPECIAL_3, 2, HG_KNOCKBACK_SCALING, 0.85);
set_hitbox_value(AT_USPECIAL_3, 2, HG_BASE_HITPAUSE, 15);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USPECIAL_3, 2, HG_VISUAL_EFFECT, 302);
set_hitbox_value(AT_USPECIAL_3, 2, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USPECIAL_3, 2, HG_HITBOX_GROUP, -1);

//first-cycle ground sweep hitbox
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USPECIAL_3, 3, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL_3, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITBOX_X, 18);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_USPECIAL_3, 3, HG_WIDTH, 40);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HEIGHT, 70);
set_hitbox_value(AT_USPECIAL_3, 3, HG_SHAPE, 0);
set_hitbox_value(AT_USPECIAL_3, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_USPECIAL_3, 3, HG_DAMAGE, 0);
set_hitbox_value(AT_USPECIAL_3, 3, HG_ANGLE, 85);
set_hitbox_value(AT_USPECIAL_3, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_USPECIAL_3, 3, HG_BASE_HITPAUSE, 2);
set_hitbox_value(AT_USPECIAL_3, 3, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL_3, 3, HG_HITSTUN_MULTIPLIER, 1.1);