set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 7);
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED, -3);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED, -1);
set_window_value(AT_DAIR, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DAIR, 1, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_medium2"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_CUSTOM_AIR_FRICTION, .15);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED, 12);
set_window_value(AT_DAIR, 3, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DAIR, 3, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, 0);

set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -5);
set_window_value(AT_DAIR, 5, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DAIR, 2);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 10);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 43);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 43);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, -90);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, .65);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DAIR, 1, HG_HITPAUSE_SCALING, .45);
set_hitbox_value(AT_DAIR, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 304);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 12);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, -13);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 40);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 0);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, .5);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DAIR, 2, HG_HIT_SFX, asset_get("sfx_blow_medium1"));