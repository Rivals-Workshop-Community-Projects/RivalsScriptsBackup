at_type = AT_EXTRA_1;    at_str = "taunt";
at_windows = 1;    at_total_windows = 1;
at_hboxes = 5;    at_total_hboxes = 4;
at_null_win = [0]; //at_total_windows
at_null_hb = [0,0,0,0]; //at_total_hboxes
set_attack_value(at_type, AG_CATEGORY, 0);
set_attack_value(at_type, AG_SPRITE, sprite_get(at_str));
set_attack_value(at_type, AG_AIR_SPRITE, sprite_get(at_str));
set_attack_value(at_type, AG_HURTBOX_SPRITE, sprite_get(at_str + "_hurt"));
set_attack_value(at_type, AG_HURTBOX_AIR_SPRITE, sprite_get(at_str + "_hurt"));
set_attack_value(at_type, AG_NUM_WINDOWS, at_windows);
set_attack_value(at_type, AG_HAS_LANDING_LAG, 0);
set_attack_value(at_type, AG_OFF_LEDGE, 0);
set_attack_value(at_type, AG_LANDING_LAG, 0);
set_attack_value(at_type, AG_STRONG_CHARGE_WINDOW, 0);
set_attack_value(at_type, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(at_type, AG_MUNO_ATTACK_EXCLUDE, 1);

SWV(AG_WINDOW_TYPE, at_null_win);
SWV(AG_WINDOW_LENGTH, [1]);
SWV(AG_WINDOW_ANIM_FRAMES, [1]);
SWV(AG_WINDOW_ANIM_FRAME_START, [0]);
SWV(AG_WINDOW_HSPEED, at_null_win);
SWV(AG_WINDOW_VSPEED, at_null_win);
SWV(AG_WINDOW_HSPEED_TYPE, at_null_win);
SWV(AG_WINDOW_VSPEED_TYPE, at_null_win);
SWV(AG_WINDOW_HAS_CUSTOM_FRICTION, at_null_win);
SWV(AG_WINDOW_CUSTOM_AIR_FRICTION, at_null_win);
SWV(AG_WINDOW_CUSTOM_GROUND_FRICTION, at_null_win);
SWV(AG_WINDOW_CUSTOM_GRAVITY, at_null_win);
SWV(AG_WINDOW_HAS_WHIFFLAG, at_null_win);
SWV(AG_WINDOW_INVINCIBILITY, at_null_win);
SWV(AG_WINDOW_HITPAUSE_FRAME, at_null_win);
SWV(AG_WINDOW_CANCEL_TYPE, at_null_win);
SWV(AG_WINDOW_CANCEL_FRAME, at_null_win);
SWV(AG_WINDOW_HAS_SFX, at_null_win);
SWV(AG_WINDOW_SFX, at_null_win);
SWV(AG_WINDOW_SFX_FRAME, at_null_win);
/*=====*//*=====*/
set_num_hitboxes(at_type, at_hboxes);
/*=====*//*=====*/
SHV(HG_PARENT_HITBOX, at_null_hb);
SHV(HG_HITBOX_TYPE, [2,2,2,2]);
SHV(HG_WINDOW, [1,1,1,1]);
SHV(HG_WINDOW_CREATION_FRAME, [1,1,1,1]);
SHV(HG_LIFETIME, [6,6,6,6]);
SHV(HG_HITBOX_X, at_null_hb);
SHV(HG_HITBOX_Y, at_null_hb);
SHV(HG_WIDTH, [90,90,90,90]);
SHV(HG_HEIGHT, [90,90,90,90]);
SHV(HG_SHAPE, at_null_hb);
SHV(HG_PRIORITY, [1,1,1,1]);
SHV(HG_DAMAGE, [1,1,1,1]);
SHV(HG_ANGLE, [45, 45, 270, 90]);
SHV(HG_BASE_KNOCKBACK, [4, 15, 10, 10]);
SHV(HG_KNOCKBACK_SCALING, at_null_hb);
SHV(HG_EFFECT, at_null_hb);
SHV(HG_BASE_HITPAUSE, [8,8,8,8]);
SHV(HG_HITPAUSE_SCALING, at_null_hb);
SHV(HG_VISUAL_EFFECT, [1,1,1,1]);
SHV(HG_VISUAL_EFFECT_X_OFFSET, at_null_hb);
SHV(HG_VISUAL_EFFECT_Y_OFFSET, at_null_hb);
SHV(HG_HIT_PARTICLE_NUM, at_null_hb);
SHV(HG_HIT_SFX, at_null_hb);
SHV(HG_ANGLE_FLIPPER, [1,1,0,0]);
SHV(HG_EXTRA_HITPAUSE, at_null_hb);
SHV(HG_GROUNDEDNESS, at_null_hb);
SHV(HG_EXTRA_CAMERA_SHAKE, at_null_hb);
SHV(HG_IGNORES_PROJECTILES, at_null_hb);
SHV(HG_HIT_LOCKOUT, at_null_hb);
SHV(HG_EXTENDED_PARRY_STUN, at_null_hb);
SHV(HG_HITBOX_GROUP, at_null_hb);
SHV(HG_HITSTUN_MULTIPLIER, [1.2,0.5,1,1]);
SHV(HG_DRIFT_MULTIPLIER, at_null_hb);
SHV(HG_SDI_MULTIPLIER, at_null_hb);
SHV(HG_TECHABLE, at_null_hb);
SHV(HG_FORCE_FLINCH, at_null_hb);
SHV(HG_FINAL_BASE_KNOCKBACK, at_null_hb);
SHV(HG_THROWS_ROCK, at_null_hb);
SHV(HG_PROJECTILE_SPRITE, [asset_get("empty_sprite"), asset_get("empty_sprite"), asset_get("empty_sprite"), asset_get("empty_sprite")]);
SHV(HG_PROJECTILE_MASK, [-1,-1,-1,-1]);
SHV(HG_PROJECTILE_ANIM_SPEED, at_null_hb);
SHV(HG_PROJECTILE_HSPEED, at_null_hb);
SHV(HG_PROJECTILE_VSPEED, at_null_hb);
SHV(HG_PROJECTILE_GRAVITY, at_null_hb);
SHV(HG_PROJECTILE_GROUND_FRICTION, at_null_hb);
SHV(HG_PROJECTILE_AIR_FRICTION, at_null_hb);
SHV(HG_PROJECTILE_WALL_BEHAVIOR, at_null_hb);
SHV(HG_PROJECTILE_GROUND_BEHAVIOR, at_null_hb);
SHV(HG_PROJECTILE_ENEMY_BEHAVIOR, at_null_hb);
SHV(HG_PROJECTILE_UNBASHABLE, at_null_hb);
SHV(HG_PROJECTILE_PARRY_STUN, at_null_hb);
SHV(HG_PROJECTILE_DOES_NOT_REFLECT, at_null_hb);
SHV(HG_PROJECTILE_IS_TRANSCENDENT, at_null_hb);
SHV(HG_PROJECTILE_DESTROY_EFFECT, at_null_hb);

#define SWV(arg0, arg1)
    for(var i = 0; i < at_total_windows; i++) {set_window_value(at_type, i+1, arg0, arg1[i]);}

#define SHV(arg0, arg1)
    for(var i = 0; i < at_total_hboxes; i++) {set_hitbox_value(at_type, i+1, arg0, arg1[i]);}