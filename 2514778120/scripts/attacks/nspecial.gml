set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_NSPECIAL, AG_LANDING_LAG, 8);

sword_attack_spr[0, AT_NSPECIAL] = sprite_get("sword0_nspecial");
sword_attack_hurtbox_spr[0, AT_NSPECIAL] = sprite_get("sword0_nspecial_hurt");
sword_attack_can_move[0, AT_NSPECIAL] = false
sword_attack_xoff[0, AT_NSPECIAL] = 32;
sword_attack_yoff[0, AT_NSPECIAL] = -32;

sword_attack_spr[1, AT_NSPECIAL] = sprite_get("sword1_nspecial");
sword_attack_hurtbox_spr[1, AT_NSPECIAL] = sprite_get("sword0_nspecial_hurt");
sword_attack_can_move[1, AT_NSPECIAL] = false
sword_attack_xoff[1, AT_NSPECIAL] = 24;
sword_attack_yoff[1, AT_NSPECIAL] = -32;


set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.4);

set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 3);

set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_GOTO, 15);

//Sword Recall
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 21);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 25);


sword_window_min[0, AT_NSPECIAL] = 6;
sword_window_max[0, AT_NSPECIAL] = 14;

sword_window_min[1, AT_NSPECIAL] = 6;
sword_window_max[1, AT_NSPECIAL] = 14;

set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);

//Charge
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 7, AG_WINDOW_ANIM_FRAME_START, 3);

//Start moving
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_NSPECIAL, 8, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//moving
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_NSPECIAL, 9, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);

//Start moving (Charged)
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_GOTO, 9);
set_window_value(AT_NSPECIAL, 10, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//End Movement
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_LENGTH, 14);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 11, AG_WINDOW_GOTO, 13);

//Hit a wall
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 12, AG_WINDOW_GOTO, 13);

//Teleport
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_NSPECIAL, 13, AG_WINDOW_GOTO, 15);

//Teleport 2
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_LENGTH, 12);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 14, AG_WINDOW_ANIM_FRAME_START, 13);


set_num_hitboxes(AT_NSPECIAL, 0);
sword_window_hitbox_min[0, AT_NSPECIAL] = 1;
sword_window_hitbox_max[0, AT_NSPECIAL] = 3;

sword_window_hitbox_min[1, AT_NSPECIAL] = 1;
sword_window_hitbox_max[1, AT_NSPECIAL] = 3;

//Light Charge 
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 1, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 1, HG_WIDTH, 112);
set_hitbox_value(AT_NSPECIAL, 1, HG_HEIGHT, 38);
set_hitbox_value(AT_NSPECIAL, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, 1, HG_DAMAGE, 5);
set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, 55);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_NSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.35);
set_hitbox_value(AT_NSPECIAL, 1, HG_VISUAL_EFFECT, fx_plasma1);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_LOCKOUT, 60);
set_hitbox_value(AT_NSPECIAL, 1, HG_HIT_SFX, asset_get("sfx_clairen_hit_med"));

//Heavy Charge 
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_NSPECIAL, 2, HG_WINDOW, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_LIFETIME, 14);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 2, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, 112);
set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, 38);
set_hitbox_value(AT_NSPECIAL, 2, HG_PRIORITY, 4);
set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_NSPECIAL, 2, HG_VISUAL_EFFECT, fx_plasmatip);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_LOCKOUT, 60);
set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_clairen_hit_strong"));

//Wall explosion
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, 3, HG_WINDOW, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_LIFETIME, 54);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_X, 30);
set_hitbox_value(AT_NSPECIAL, 3, HG_HITBOX_Y, 0);
set_hitbox_value(AT_NSPECIAL, 3, HG_WIDTH, 112);
set_hitbox_value(AT_NSPECIAL, 3, HG_HEIGHT, 38);
set_hitbox_value(AT_NSPECIAL, 3, HG_PRIORITY, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL, 3, HG_ANGLE, 45);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 0.6);
set_hitbox_value(AT_NSPECIAL, 3, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_NSPECIAL, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_VISUAL_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("nspecial_explosion"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_MASK, sprite_get("nspecial_explosion_mask"));
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ANIM_SPEED, 9/54);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_PLASMA_SAFE, 1);
