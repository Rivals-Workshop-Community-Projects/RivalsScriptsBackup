set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);

//start charging
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);

//ready to shoot looping
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 44);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 11);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

//shooting startup and shoot
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 15);

//endlag
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, -2);

set_num_hitboxes(AT_NSPECIAL, 2);


// set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 1);
// set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 90);
// set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
// set_hitbox_value(AT_NSPECIAL, 1, HG_EXTRA_HITPAUSE, 2);
// set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE_FLIPPER, 4);

// set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, -26);
// set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, -30);
// set_hitbox_value(AT_NSPECIAL, 1, HG_WINDOW, 2);
// set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 9);
// set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
// set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
// set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
// set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
// set_hitbox_value(AT_NSPECIAL, 1, HG_IGNORES_PROJECTILES, 1);
// set_hitbox_value(AT_NSPECIAL, 1, HG_SDI_MULTIPLIER, 2);

// set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 1);
// set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 50);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, 1);

set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, -30);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 100);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_heavy"));
set_hitbox_value(AT_NSPECIAL, 2, HG_EFFECT, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_IGNORES_PROJECTILES, 1);

// set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, aurabig_effect);
// set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_DESTROY_EFFECT, aurabig_effect);
