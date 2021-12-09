// [9] LIGHT HOOKSHOT
atk = AT_EXTRA_2;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("lighthookshot"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("lighthookshot_hurt"));
set_attack_value(atk, AG_AIR_SPRITE, sprite_get("lighthookshot_air"));
set_attack_value(atk, AG_HURTBOX_AIR_SPRITE, sprite_get("lighthookshot_air_hurt"));
set_attack_value(atk, AG_NUM_WINDOWS, 6);
set_attack_value(atk, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(atk, AG_OFF_LEDGE, 1);


windowNum = 1; //windup
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 10);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_clairen_uspecial_rise"));
set_window_value(atk, windowNum, AG_WINDOW_SFX_FRAME, 1);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

windowNum ++; //charge
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 6);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_VSPEED, 0.25);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GROUND_FRICTION, 2);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 2);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

windowNum++; //throw
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, asset_get("sfx_ori_ustrong_launch"));
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, gravity_speed);

windowNum ++; //throw hold
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 9);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 8);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(atk, windowNum, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_AIR_FRICTION, 0.25);
set_window_value(atk, windowNum, AG_WINDOW_CUSTOM_GRAVITY, 0.1);

windowNum++; //bar throws himself here
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 4);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, windowNum, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, windowNum, AG_WINDOW_SFX, sound_get("sfx_forceleap_jump"));

windowNum ++; //grab fail
set_window_value(atk, windowNum, AG_WINDOW_TYPE, 1);
set_window_value(atk, windowNum, AG_WINDOW_LENGTH, 12);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, windowNum, AG_WINDOW_ANIM_FRAME_START, 8);


set_num_hitboxes(atk, 2);

hitboxNum = 1; //spear
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 55); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 8);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 16); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -30); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 48);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 16);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 50);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.2);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 5);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_lighthookshot_proj"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_lightslash);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_lightblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 3);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_HSPEED, 15);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(atk, hitboxNum, HG_EXTENDED_PARRY_STUN, 1);

hitboxNum ++; //burning spear
set_hitbox_value(atk, hitboxNum, HG_WINDOW, 99); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_GROUP, -1); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_TYPE, 2); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_LIFETIME, 55); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_PRIORITY, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_X, 16); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_HITBOX_Y, -30); //excluded from HG_PARENT_HITBOX
set_hitbox_value(atk, hitboxNum, HG_SHAPE, 0);
set_hitbox_value(atk, hitboxNum, HG_WIDTH, 48);
set_hitbox_value(atk, hitboxNum, HG_HEIGHT, 16);
set_hitbox_value(atk, hitboxNum, HG_ANGLE, 50);
set_hitbox_value(atk, hitboxNum, HG_DAMAGE, 6);
set_hitbox_value(atk, hitboxNum, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitboxNum, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(atk, hitboxNum, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitboxNum, HG_HITPAUSE_SCALING, 0.7);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_SPRITE, sprite_get("fx_lighthookshotburn_proj"));
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitboxNum, HG_VISUAL_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DESTROY_EFFECT, fx_fireblow2);
set_hitbox_value(atk, hitboxNum, HG_HIT_SFX, asset_get("sfx_burnconsume"));
set_hitbox_value(atk, hitboxNum, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(atk, hitboxNum, HG_HITBOX_COLOR, 2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_ANIM_SPEED, 0.2);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_HSPEED, 10);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_PARRY_STUN, 1);
set_hitbox_value(atk, hitboxNum, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(atk, hitboxNum, HG_EXTENDED_PARRY_STUN, 1);


//munophone
if (!get_match_setting(SET_PRACTICE)) exit;
set_attack_value(atk, AG_MUNO_ATTACK_MISC_ADD, "20 MP (5 MP to activate, 15 MP to use)
Hold down SPECIAL to get flung further");