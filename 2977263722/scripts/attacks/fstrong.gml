set_attack_value(AT_FSTRONG, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_FSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_FSTRONG, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));

//startup
set_window_value(AT_FSTRONG, 1, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 1, AG_WINDOW_SFX, sound_get("sm64_inhale"));

//charge
set_window_value(AT_FSTRONG, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 3);

//release
set_window_value(AT_FSTRONG, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG, 3, AG_WINDOW_SFX, sound_get("sm64_flamethrower"));

//active
set_window_value(AT_FSTRONG, 4, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//endlag
set_window_value(AT_FSTRONG, 5, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_FSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

for (var hbox_num = 0; hbox_num < 6; hbox_num += 1) {

set_hitbox_value(AT_FSTRONG, hbox_num, HG_MUNO_HITBOX_NAME, "Fireball "+string(hbox_num));
set_hitbox_value(AT_FSTRONG, hbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_WINDOW, 4);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_WINDOW_CREATION_FRAME, -4 + 4*hbox_num);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_LIFETIME, 20);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_HITBOX_X, 24);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_HITBOX_Y, -12);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_WIDTH, 50);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_HEIGHT, 50);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_DAMAGE, 2);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_ANGLE, 55);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_EFFECT, 1);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_VISUAL_EFFECT, hfx_fire_1);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_VISUAL_EFFECT_X_OFFSET, 20);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_HIT_PARTICLE_NUM, 4);

set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_SPRITE, sprite_get("fstrong_proj"));
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("fstrong_proj_mask"));
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_fire_kil);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_HSPEED, 5);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_VSPEED, -1);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_FSTRONG, hbox_num, HG_PROJECTILE_UNBASHABLE, true);

set_num_hitboxes(AT_FSTRONG, hbox_num);
}