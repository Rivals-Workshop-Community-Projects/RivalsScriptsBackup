set_attack_value(AT_USPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_USPECIAL, AG_SPRITE, sprite_get("uspecial_fake"));
set_attack_value(AT_USPECIAL, AG_NUM_WINDOWS, 3);
set_attack_value(AT_USPECIAL, AG_HAS_LANDING_LAG, 4);
set_attack_value(AT_USPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_USPECIAL, AG_HURTBOX_SPRITE, sprite_get("uspecial_hurt"));

// startup
set_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX, sound_get("sm64_flamethrower"));
set_window_value(AT_USPECIAL, 1, AG_WINDOW_SFX_FRAME, 7);

// flight
set_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);

// deflate
set_window_value(AT_USPECIAL, 3, AG_WINDOW_TYPE, 7);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 8);


for (var hbox_num = 0; hbox_num < 12; hbox_num += 1) {

set_hitbox_value(AT_USPECIAL, hbox_num, HG_MUNO_HITBOX_NAME, "Fireball "+string(hbox_num));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW, 2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WINDOW_CREATION_FRAME, -2 + 4*hbox_num);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_LIFETIME, 18);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_X, -2);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITBOX_Y, -12);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_WIDTH, 50);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HEIGHT, 50);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PRIORITY, 3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_DAMAGE, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE, 80);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_ANGLE_FLIPPER, 3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_KNOCKBACK_SCALING, 0.3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_EFFECT, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HITPAUSE_SCALING, 0.1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT, hfx_fire_1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_PARTICLE_NUM, 4);
//set_hitbox_value(AT_USPECIAL, hbox_num, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));

set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj"));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fstrong_proj_mask"));
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_fire_kil);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_VSPEED, 4);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_PARRY_STUN, false);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_USPECIAL, hbox_num, HG_PROJECTILE_UNBASHABLE, true);

set_num_hitboxes(AT_USPECIAL, hbox_num);
}