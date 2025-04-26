// D-STRONG - theikos ver.
var atk = AT_DSTRONG_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dstrong2"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong2_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 5);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 10);

var window_num = 1; //windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_shine_charged"));

window_num ++; //charge window
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1); //controls speed
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4); //frames amount on strip
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -0.1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_upbcharge"));
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, 1);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME_TIME, 7);

window_num ++; //attack itself
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6); //starting frame. starts from 0
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));

window_num ++; //endlag 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -6);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);

window_num ++; //endlag 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);

//amount of hitboxes
set_num_hitboxes(atk, 3);

var hitbox_num = 1; //initial projectile
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 16);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 32);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_dstrong2_proj"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0); //gets faster with charge
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_VSPEED, 0); //gets faster with charge
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1); //only false for theikos bar
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 0); //only true for theikos bar
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_NO_POLARIS, true);

hitbox_num ++; //collision explosion
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 6);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0); //spawns on enemy
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0); //spawns on enemy
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 100);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 10);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 270);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.8); 
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1); //only false for theikos bar
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 0); //only true for theikos bar
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);

hitbox_num ++; //ground fire
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 11);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0); //the spawning of the X and Y positions are decided by hitbox_update
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 48);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 54);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 1);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.2);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_zetter_upb_hit"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 0.01);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 1); //only false for theikos bar
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_NO_POLARIS, true);