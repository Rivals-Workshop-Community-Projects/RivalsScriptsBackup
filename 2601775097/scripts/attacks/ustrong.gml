// U-STRONG - normal ver.
var atk = AT_USTRONG;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 8);
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, 2);

var quit_atk = get_attack_value(atk, AG_NUM_WINDOWS) + 1;
var theikos_friction = 0.2;


var window_num = 1; //charge startlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_1"));
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, mp_cost_strongs);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);

window_num ++; //charge
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 0.4);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);

window_num ++; //attack 1 windup
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_swing"));
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);

window_num ++; //attack 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);

window_num ++; //attack 1 endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);
set_window_value(atk, window_num, AG_WINDOW_GOTO, quit_atk);

window_num ++; //attack 2 start
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 7);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, mp_cost_strongs);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);

window_num ++; //attack 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 19);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);

window_num ++; //attack 2 endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 12);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_AIR_FRICTION, theikos_friction);

//amount of hitboxes
set_num_hitboxes(atk, 5);

var hitbox_num = 1; //attack 1 forward hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 90);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 95);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

hitbox_num ++; //attack 1 upward hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -70);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 120);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 80);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

hitbox_num ++; //attack 1 backward hitbox
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, -50);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -38);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 90);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 6);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 75);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_X_OFFSET, 16);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT_Y_OFFSET, 4);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_clairen_dspecial_counter_success"));
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);

hitbox_num ++; //attack 2 projectile
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 16);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 100);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_skill9_proj"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("hitbox_skill6")); //woohoo repurposing
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightslash);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_VSPEED, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, !has_rune("H"));
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, has_rune("H")*3);

hitbox_num ++; //attack 2 projectile - burning
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 30);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -40);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 16);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 60);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 16);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 100);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.5); 
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_skill9_proj_burn"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_COLLISION_SPRITE, sprite_get("hitbox_skill6")); //on the fire one too, why not
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[1]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow[1]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_forsburn_combust"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_VSPEED, -18);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);