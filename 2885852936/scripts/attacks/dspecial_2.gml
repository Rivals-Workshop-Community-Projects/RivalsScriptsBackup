set_attack_value(AT_DSPECIAL_2, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL_2, AG_SPRITE, sprite_get("dspecial_2"));
set_attack_value(AT_DSPECIAL_2, AG_NUM_WINDOWS, 3);
set_attack_value(AT_DSPECIAL_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSPECIAL_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL_2, AG_AIR_SPRITE, sprite_get("dspecial_2_air"));
set_attack_value(AT_DSPECIAL_2, AG_HURTBOX_SPRITE, sprite_get("dspecial_2_hurt"));

set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_LENGTH, 18);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_SFX, sound_get("MMstart"));
//set_window_value(AT_DSPECIAL_2, 1, AG_WINDOW_INVINCIBILITY, 1);

set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_SFX, sound_get("MMfaint"));
//set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED_TYPE, 2);
//set_window_value(AT_DSPECIAL_2, 2, AG_WINDOW_VSPEED, -2);

set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_LENGTH, 12);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSPECIAL_2, 3, AG_WINDOW_ANIM_FRAME_START, 11);

set_num_hitboxes(AT_DSPECIAL_2, 0);

set_hitbox_value(AT_DSPECIAL_2, 1, HG_GROUNDEDNESS, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_LIFETIME, 3000);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITBOX_Y, -120);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_WIDTH, 90);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HEIGHT, 60);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_DAMAGE, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_KNOCKBACK, 11);//12
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_GRAVITY, .4);
//(AT_DSPECIAL_2, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_BASE_HITPAUSE, 4);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HITSTUN_MULTIPLIER, 2);
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_MASK, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ANIM_SPEED, .15);
//set_hitbox_value(AT_DSPECIAL_2, 4, HG_PROJECTILE_HSPEED, .07);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_IGNORES_PROJECTILES, 0);
//set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_LOCKOUT, 33);
set_hitbox_value(AT_DSPECIAL_2, 1, HG_HIT_SFX, asset_get("sfx_burnconsume"));