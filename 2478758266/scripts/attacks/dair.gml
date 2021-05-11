set_attack_value(AT_DAIR, AG_CATEGORY, 1);
set_attack_value(AT_DAIR, AG_SPRITE, sprite_get("dair"));
set_attack_value(AT_DAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_DAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_DAIR, AG_LANDING_LAG, 4);
set_attack_value(AT_DAIR, AG_HURTBOX_SPRITE, sprite_get("dair_hurt"));

set_window_value(AT_DAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DAIR, 1, AG_WINDOW_ANIM_FRAMES, 4);

set_window_value(AT_DAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_DAIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX, sound_get("bom"));
set_window_value(AT_DAIR, 2, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 3, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX, sound_get("bom"));
set_window_value(AT_DAIR, 3, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DAIR, 4, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(AT_DAIR, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX, sound_get("bom"));
set_window_value(AT_DAIR, 4, AG_WINDOW_SFX_FRAME, 1);

set_window_value(AT_DAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DAIR, 5, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(AT_DAIR, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX, sound_get("boom"));
set_window_value(AT_DAIR, 5, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(AT_DAIR, 5, AG_WINDOW_VSPEED, -2);

set_window_value(AT_DAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DAIR, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DAIR, 6, AG_WINDOW_ANIM_FRAME_START, 25);
set_window_value(AT_DAIR, 6, AG_WINDOW_HAS_WHIFFLAG, 5);

set_num_hitboxes(AT_DAIR,4);

set_hitbox_value(AT_DAIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_GROUP, 1)
set_hitbox_value(AT_DAIR, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 1, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DAIR, 1, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 1, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 1, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 1, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 1, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 1, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 1, HG_VISUAL_EFFECT, 139);

set_hitbox_value(AT_DAIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_DAIR, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_GROUP, 2)
set_hitbox_value(AT_DAIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 2, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DAIR, 2, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 2, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 2, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 2, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 2, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 2, HG_VISUAL_EFFECT, 139);

set_hitbox_value(AT_DAIR, 3, HG_PARENT_HITBOX, 3);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_DAIR, 3, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 3, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DAIR, 3, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 3, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 3, HG_DAMAGE, 3);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 3, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 3, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(AT_DAIR, 3, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DAIR, 3, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_DAIR, 3, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 3, HG_FORCE_FLINCH, 1);
set_hitbox_value(AT_DAIR, 3, HG_VISUAL_EFFECT, 139);

set_hitbox_value(AT_DAIR, 4, HG_PARENT_HITBOX, 4);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DAIR, 4, HG_WINDOW, 5);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_GROUP, 4)
set_hitbox_value(AT_DAIR, 4, HG_LIFETIME, 7);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_X, 1);
set_hitbox_value(AT_DAIR, 4, HG_HITBOX_Y, 5);
set_hitbox_value(AT_DAIR, 4, HG_WIDTH, 35);
set_hitbox_value(AT_DAIR, 4, HG_HEIGHT, 46);
set_hitbox_value(AT_DAIR, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_DAIR, 4, HG_DAMAGE, 5);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE, 270);
set_hitbox_value(AT_DAIR, 4, HG_SHAPE, 2);
set_hitbox_value(AT_DAIR, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DAIR, 4, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DAIR, 4, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DAIR, 4, HG_ANGLE_FLIPPER, 4);
set_hitbox_value(AT_DAIR, 4, HG_VISUAL_EFFECT, 141);