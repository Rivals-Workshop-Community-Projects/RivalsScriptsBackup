set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_SFX, sound_get("firebar_spawn"));

set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, sound_get("sm64_fire"));

set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_SFX, sound_get("sm64_fire"));

set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("sm64_extinguish"));

set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 16);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 1);





for (var hbox_num = 0; hbox_num < 9; hbox_num += 1) {
set_hitbox_value(AT_DSTRONG, hbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_DAMAGE, 9);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_ANGLE, 45);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_HITPAUSE_SCALING, .9);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_BULLY_BURN, 1);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_VISUAL_EFFECT, hfx_fire_1);
set_hitbox_value(AT_DSTRONG, hbox_num, HG_HIT_PARTICLE_NUM, 4);

set_num_hitboxes(AT_DSTRONG, hbox_num+1);
}

var temp_num = 1;

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Initial Hit Close");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, temp_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, -10);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 64);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);

temp_num++; //2

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Initial Hit Far");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, -5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 170);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);

temp_num++; //3

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Front Hit Close");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, temp_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, 42);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);

temp_num++; //4

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Front Hit Far");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, 76);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 96);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);

temp_num++; //5

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Returning Hit");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, 48);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 64);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITPAUSE_SCALING, .5);

temp_num++; //6

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Back Hit Close");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 11);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_DSTRONG, temp_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, -48);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE_FLIPPER, 5);

temp_num++; //7

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Back Hit Far");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, -80);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 96);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE_FLIPPER, 5);

temp_num++; //8

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Late Hit ");
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 8);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, -84);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 100);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE_FLIPPER, 5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_KNOCKBACK_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITPAUSE_SCALING, .5);

temp_num++; //9

set_hitbox_value(AT_DSTRONG, temp_num, HG_MUNO_HITBOX_NAME, "Charging Burn");
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_LIFETIME, 60);
set_hitbox_value(AT_DSTRONG, temp_num, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WINDOW_CREATION_FRAME, 12);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_X, -60);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HITBOX_Y, -16);
set_hitbox_value(AT_DSTRONG, temp_num, HG_WIDTH, 64);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HEIGHT, 32);
set_hitbox_value(AT_DSTRONG, temp_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BULLY_BURN, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_KNOCKBACK, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_VISUAL_EFFECT, empty_fx);
set_hitbox_value(AT_DSTRONG, temp_num, HG_IGNORES_PROJECTILES, true);
set_hitbox_value(AT_DSTRONG, temp_num, HG_HIT_PARTICLE_NUM, 4);

/*
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_MASK, -1)
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_GRAVITY, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_IGNORES_PROJECTILES, 1);
set_hitbox_value(AT_DSTRONG, temp_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
*/