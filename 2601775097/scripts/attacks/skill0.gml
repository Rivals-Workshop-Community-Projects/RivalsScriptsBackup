// [0] LIGHT DAGGER - GROUND VERSION
var atk = AT_NTHROW;

set_attack_value(atk, AG_CATEGORY, 0);
set_attack_value(atk, AG_SPRITE, sprite_get("skill0"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("skill0_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 9);

//LIGHT DAGGER 1 (1-4)

var window_num = 1; //windup 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, window_num, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[0].mp_cost1);

window_num++; //throw
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 6);

//LIGHT DAGGER 2 (5-8)

window_num ++; //windup 1
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);

window_num ++; //windup 2
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_MP_CONSUME, skill[0].mp_cost2);

window_num++; //throw
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));

window_num ++; //endlag
set_window_value(atk, window_num, AG_WINDOW_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_CANCEL_FRAME, 6);

window_num ++;
set_window_value(atk, window_num, AG_WINDOW_GOTO, 1);

set_num_hitboxes(atk, 2);

var hitbox_num = 1; //light dagger
set_hitbox_value(atk, hitbox_num, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 20);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 16);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 16);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 16);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 65);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_skill0_proj"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_lightslash);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[2]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, 18);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

hitbox_num ++; //burning light dagger
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 35); //burning fury stat
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8); //burning fury stat
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 16);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 16);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 16);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6); //burning fury stat
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("fx_skill0_proj_burn"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitbox_num, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_COLOR, hb_color[3]);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ANIM_SPEED, 0.3);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, 15); //burning fury stat
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_GROUND_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);