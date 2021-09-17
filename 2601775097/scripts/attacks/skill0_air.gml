// [0] LIGHT DAGGER - AIR VERSION
atk = AT_NSPECIAL_AIR;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("lightdagger_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("lightdagger_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 13);
set_attack_value(atk, AG_HAS_LANDING_LAG, 1);
set_attack_value(atk, AG_LANDING_LAG, 5);

windowNum = 0;

//LIGHT DAGGER 1 (1-4)

windowNum ++; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //4 /
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_1"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 1);

windowNum ++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //8
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3);

windowNum++; //throw
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //4
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //2
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, -1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -5);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 15); //18
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //3
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_FRAME, 6);

//LIGHT DAGGER 2 (5-8)

windowNum ++; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //4 /
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_spirit_flame_1"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 1);

windowNum ++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //8
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 13);

windowNum++; //throw
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //4
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //2
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 15);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, -1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -5);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 15); //18
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //3
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 18);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_FRAME, 6);

//LIGHT DAGGER 3 (9-12) - works alongside burning fury but uses the same animation as light dagger 1

windowNum ++; //windup 1
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //4 /
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_burnapplied"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 2);

windowNum ++; //windup 2
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10); //8
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 3);

windowNum++; //throw
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6); //4
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3); //2
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_charged_flame_release"));
set_window_value(atk, windowNum, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_HSPEED, -1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, -5);

windowNum ++; //endlag
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 15); //18
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2); //3
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_FRAME, 6);

windowNum ++; //window 13 = canceled loop window
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 18);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_TYPE, 2);
set_window_value(atk, windowNum, AG_WINDOW_CANCEL_FRAME, 6);


set_num_hitboxes(atk, 3);

hitboxNum = 1; //LIGHT DAGGER 1

set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 3); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 17); //excluded from HG_PARENT_HITBOX //17
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -4); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -28); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 16);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 16);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 65);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.2);
//set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 5);
//set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7);
//set_hitbox_value(atk, hitboxNum, HG_EXTRA_HITPAUSE, 4);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdagger_proj"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightslash);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_holy_lightning"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_VSPEED, 15);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);

hitboxNum ++; //LIGHT DAGGER 2

set_hitbox_value(atk, hitboxNum, HG_PARENT_HITBOX, 1);
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 7);
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 17);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 16);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);

hitboxNum ++; //LIGHT DAGGER 3 - light dagger 1 but stronger

set_hitbox_value(atk, hitboxNum, HG_WINDOW, 11);
set_hitbox_value(atk, hitboxNum, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 32); //burning fury stat
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 8); //burning fury stat
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, -4);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -28);
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 16);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 16);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 50);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6); //burning fury stat
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_lightdaggerburn_proj"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow1);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnapplied"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_HSPEED, 12); //burning fury stat
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_VSPEED, 12); //burning fury stat
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_WALL_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_GROUND_BEHAVIOR, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ENEMY_BEHAVIOR, 0);
//set_hitbox_value(atk, hitboxNum, HG_EFFECT, 1); //is now burning fury's holy fire