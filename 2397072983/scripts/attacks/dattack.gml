set_attack_value(AT_DATTACK, AG_CATEGORY, 0);
set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));

set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .001);

set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DATTACK, 2, AG_WINDOW_SFX_FRAME, 0);

set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX, asset_get("sfx_land_light"));
set_window_value(AT_DATTACK, 4, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DATTACK,2);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 48);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 82);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 80);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DATTACK, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_KNOCKBACK_SCALING, 0.4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_X_OFFSET, 22);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_DATTACK, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HITSTUN_MULTIPLIER, 1);



