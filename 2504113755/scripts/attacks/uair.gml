set_attack_value(AT_UAIR, AG_CATEGORY, 1);
set_attack_value(AT_UAIR, AG_SPRITE, sprite_get("uair"));
set_attack_value(AT_UAIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_UAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_UAIR, AG_LANDING_LAG, 8);
set_attack_value(AT_UAIR, AG_HURTBOX_SPRITE, sprite_get("uair_hurt"));

set_window_value(AT_UAIR, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_UAIR, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_UAIR, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_swing_weak"));
set_window_value(AT_UAIR, 1, AG_WINDOW_VSPEED, -1);


set_window_value(AT_UAIR, 2, AG_WINDOW_LENGTH, 3);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_UAIR, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_UAIR, 3, AG_WINDOW_LENGTH, 14);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_UAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_UAIR, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_UAIR,2);

set_hitbox_value(AT_UAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_X, 3);
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_Y, -83);
set_hitbox_value(AT_UAIR, 1, HG_WIDTH, 80);
set_hitbox_value(AT_UAIR, 1, HG_HEIGHT, 71);
set_hitbox_value(AT_UAIR, 1, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 1, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 1, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UAIR, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
//set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 1, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_UAIR, 1, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, plasma_x);



set_hitbox_value(AT_UAIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_UAIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_UAIR, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_X, 30)
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_UAIR, 2, HG_WIDTH, 30);
set_hitbox_value(AT_UAIR, 2, HG_HEIGHT, 35);
set_hitbox_value(AT_UAIR, 2, HG_SHAPE, 2);
set_hitbox_value(AT_UAIR, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 7);
set_hitbox_value(AT_UAIR, 2, HG_ANGLE, 90);
set_hitbox_value(AT_UAIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_UAIR, 2, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(AT_UAIR, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_UAIR, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_UAIR, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
//set_hitbox_value(AT_UAIR, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_UAIR, 2, HG_HIT_PARTICLE_NUM, 1)
set_hitbox_value(AT_UAIR, 2, HG_HITBOX_GROUP, 3)
set_hitbox_value(AT_UAIR, 2, HG_VISUAL_EFFECT, plasma_x);