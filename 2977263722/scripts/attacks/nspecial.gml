set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get("nspecial"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);
set_attack_value(AT_NSPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_NSPECIAL, AG_OFF_LEDGE, false);
set_attack_value(AT_NSPECIAL, AG_AIR_SPRITE, sprite_get("nspecial_air"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_AIR_SPRITE, sprite_get("nspecial_air_hurt"));

// startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("sm64_charge"));

//optional charge
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 30);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX, sound_get("sm64_charged"));
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_SFX_FRAME, 29);

//charged !
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_TYPE, 9);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 8);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 4);

//release
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//store
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 1);

//full charge release (same thing but takes longer)
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_LENGTH, 18);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 6, AG_WINDOW_ANIM_FRAME_START, 5);

var temp_attack = AT_NSPECIAL;
var temp_num = 1;

set_hitbox_value(temp_attack, temp_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(temp_attack, temp_num, HG_WINDOW, 4);
set_hitbox_value(temp_attack, temp_num, HG_LIFETIME, 60);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_X, 30*2);
set_hitbox_value(temp_attack, temp_num, HG_HITBOX_Y, -13*2);
set_hitbox_value(temp_attack, temp_num, HG_WIDTH, 40);
set_hitbox_value(temp_attack, temp_num, HG_HEIGHT, 40);
set_hitbox_value(temp_attack, temp_num, HG_SHAPE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PRIORITY, 3);
set_hitbox_value(temp_attack, temp_num, HG_DAMAGE, 2);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE, 50);
set_hitbox_value(temp_attack, temp_num, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(temp_attack, temp_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(temp_attack, temp_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(temp_attack, temp_num, HG_EFFECT, 1);
set_hitbox_value(temp_attack, temp_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(temp_attack, temp_num, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT, hfx_fire_1);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_X_OFFSET, 0);
set_hitbox_value(temp_attack, temp_num, HG_VISUAL_EFFECT_Y_OFFSET, 16);
set_hitbox_value(temp_attack, temp_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(temp_attack, temp_num, HG_HITSTUN_MULTIPLIER, .50);
set_hitbox_value(temp_attack, temp_num, HG_HIT_PARTICLE_NUM, 4);

set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_SPRITE, sprite_get("nspecial_proj"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("nspecial_proj_mask"));
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ANIM_SPEED, .2);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_UNBASHABLE, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_HSPEED, 4);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_AIR_FRICTION, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(temp_attack, temp_num, HG_PROJECTILE_DESTROY_EFFECT, fx_fire_kil);