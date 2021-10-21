set_attack_value(AT_NSPECIAL_AIR, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_SPRITE, sprite_get("gwarrr"));
set_attack_value(AT_NSPECIAL_AIR, AG_NUM_WINDOWS, 2);
set_attack_value(AT_NSPECIAL_AIR, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_NSPECIAL_AIR, AG_HURTBOX_SPRITE, sprite_get("gwarrr_hurt"));

set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 1, AG_WINDOW_SFX, sound_get("white"));

set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_LENGTH, 24);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HSPEED, -1.5);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_VSPEED, -1.5);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL_AIR, 2, AG_WINDOW_SFX, sound_get("red thing"));


set_num_hitboxes(AT_NSPECIAL_AIR, 1);


set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WINDOW, 2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_LIFETIME, 27);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_Y, -10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_WIDTH, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HEIGHT, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_ANGLE, 60);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_SHAPE, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_KNOCKBACK_SCALING, 0.1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_VISUAL_EFFECT, redthingsplash);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_SPRITE, sprite_get("redthing"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_MASK, sprite_get("redthinghit"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ANIM_SPEED, .8);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_VSPEED, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_HSPEED, 6);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_HIT_SFX, sound_get("hit3"));
set_hitbox_value(AT_NSPECIAL_AIR, 1, HG_PROJECTILE_DESTROY_EFFECT, redthingmess );