set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE,0);

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 10);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 2);

// charge loop
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);

// fire
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_SFX, sound_get("wwisp_launch"));

// endlag
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 16);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, -2);

//store
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_SFX, sound_get("wwisp_store"));

set_num_hitboxes(AT_NSPECIAL,1);

var temp_num = 1;

set_hitbox_value(AT_NSPECIAL, temp_num, HG_MUNO_HITBOX_NAME, "Will-O-Wisp");
set_hitbox_value(AT_NSPECIAL, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_WINDOW, 6);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_LIFETIME, 60);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_HITBOX_X, 0);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_HITBOX_Y, -22);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_WIDTH, 35);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_HEIGHT, 35);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_SHAPE, 0);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_DAMAGE, 4);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_ANGLE, 361);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_HITPAUSE_SCALING, 0.3);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_HIT_SFX, sound_get("wwisp_hit"));
set_hitbox_value(AT_NSPECIAL, temp_num, HG_VISUAL_EFFECT, wwisp_hit);

set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_SPRITE, sprite_get("wwisp_proj"));
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("wwisp_proj_col"));
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_ANIM_SPEED, .1);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_DESTROY_EFFECT, wwisp_charge);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
temp_num += 1;

set_num_hitboxes(AT_NSPECIAL, temp_num-1);

set_attack_value(AT_NSPECIAL, AG_MUNO_ATTACK_MISC_ADD, "Lifetime and projectile count increase when charged.");