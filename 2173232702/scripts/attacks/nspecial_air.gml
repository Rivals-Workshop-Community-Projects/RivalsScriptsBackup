set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("tech"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL_AIR, AG_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("nope")); // use AG_AIR_SPRITE in AT_NSPECIAL for this

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_VSPEED, 9);
// set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_GRAVITY, 1.0);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, asset_get("sfx_bubblespray_breathless"));
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.01);

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_VSPEED, 8);

set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_ANIM_FRAME_START, 7);
// set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_WHIFFLAG, 5);
set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HSPEED, 12);
// set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
// set_window_value(AT_NSPECIAL_AIR, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.04);

set_num_hitboxes(AT_NSPECIAL_AIR,1);

set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW_CREATION_FRAME, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.6);
// set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 1);
// set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, 109);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT_Y_OFFSET, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_weak"));
// set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE_FLIPPER, 2);

/*
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PARENT_HITBOX, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_X, 16);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HITBOX_Y, 4);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_WIDTH, 64);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HEIGHT, 64);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE, 80);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_BASE_HITPAUSE, 8);
// set_hitbox_value(AT_NAI2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_VISUAL_EFFECT_Y_OFFSET, 20);
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_HIT_SFX, asset_get("sfx_absa_dashup"));
set_hitbox_value(AT_NSPECIAL_AIR, 2, HG_ANGLE_FLIPPER, 6);