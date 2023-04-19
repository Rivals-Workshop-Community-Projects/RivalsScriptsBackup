set_attack_value(AT_DSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_DSPECIAL, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(AT_DSPECIAL, AG_NUM_WINDOWS, 2);
set_attack_value(AT_DSPECIAL, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_DSPECIAL, AG_OFF_LEDGE, 1);
set_attack_value(AT_DSPECIAL, AG_AIR_SPRITE, sprite_get("dspecial_air"));
set_attack_value(AT_DSPECIAL, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

set_window_value(AT_DSPECIAL, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED_TYPE, 0);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HSPEED, -3);
//set_window_value(AT_DSPECIAL, 1, AG_WINDOW_VSPEED_TYPE, .3);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX_FRAME, 2);
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_SFX, sound_get("MmTalk"));
set_window_value(AT_DSPECIAL, 1, AG_WINDOW_INVINCIBILITY, 2);

set_window_value(AT_DSPECIAL, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH, 35);
set_window_value(AT_DSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 6);

set_num_hitboxes(AT_DSPECIAL, 0);

// This is the Pigmask Attack Hitbox
set_hitbox_value(AT_DSPECIAL, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_LIFETIME, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_WIDTH, 55);
set_hitbox_value(AT_DSPECIAL, 1, HG_HEIGHT, 40);
//set_hitbox_value(AT_DSPECIAL, 1, HG_EFFECT, 11);
set_hitbox_value(AT_DSPECIAL, 1, HG_PRIORITY, 9);
set_hitbox_value(AT_DSPECIAL, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 30);
set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE_FLIPPER, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 13);//12
//set_hitbox_value(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, 0.3);//12
//set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_GRAVITY, .4);
//(AT_DSPECIAL, 1, HG_KNOCKBACK_SCALING, .3);
set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSPECIAL, 1, HG_HITPAUSE_SCALING, .4);
//set_hitbox_value(AT_DSPECIAL, 1, HG_HITSTUN_MULTIPLIER, 2);
//set_hitbox_value(AT_DSPECIAL, 4, HG_FORCE_FLINCH, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_MASK, -1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .15);
//set_hitbox_value(AT_DSPECIAL, 4, HG_PROJECTILE_HSPEED, .07);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(AT_DSPECIAL, 1, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_LOCKOUT, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSPECIAL, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSPECIAL, 1, HG_HIT_SFX, sound_get( "pighit" ));