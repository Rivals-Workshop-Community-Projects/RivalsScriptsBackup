set_attack_value(AT_DATTACK, AG_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DATTACK, AG_CATEGORY, 2);
set_attack_value(AT_DATTACK, AG_AIR_SPRITE, sprite_get("dattack"));
set_attack_value(AT_DATTACK, AG_HURTBOX_SPRITE, sprite_get("dattack_hurt"));
set_attack_value(AT_DATTACK, AG_USES_CUSTOM_GRAVITY, 1);
set_attack_value(AT_DATTACK, AG_MUNO_ATTACK_NAME, "Dash Attack");
set_attack_value(AT_DATTACK, AG_MUNO_ATTACK_MISC_ADD, "Ground-to-air attack. Hits twice. Starting the move at a ledge allows you to roll off of it while continuing to attack.");

// startup
set_window_value(AT_DATTACK, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DATTACK, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HSPEED, 5);
set_window_value(AT_DATTACK, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX, asset_get("sfx_ori_stomp_spin"));
set_window_value(AT_DATTACK, 1, AG_WINDOW_SFX_FRAME, 6);
set_window_value(AT_DATTACK, 1, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

// active 1
set_window_value(AT_DATTACK, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_LENGTH, 7);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DATTACK, 2, AG_WINDOW_ANIM_FRAME_START, 2);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GROUND_FRICTION, .2);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED, 8);
set_window_value(AT_DATTACK, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_DATTACK, 2, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

// inbetween
set_window_value(AT_DATTACK, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_DATTACK, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX, sound_get("sfx_plague_bomb_med_explode"));
set_window_value(AT_DATTACK, 3, AG_WINDOW_SFX_FRAME, 1);
set_window_value(AT_DATTACK, 3, AG_WINDOW_CUSTOM_GRAVITY, 0.5);

// active 2
set_window_value(AT_DATTACK, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED, -4);
set_window_value(AT_DATTACK, 4, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED, -8);
set_window_value(AT_DATTACK, 4, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_DATTACK, 4, AG_WINDOW_CUSTOM_GRAVITY, 0.8);

// endlag
set_window_value(AT_DATTACK, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_LENGTH, 17);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DATTACK, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_AIR_FRICTION, .2);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GRAVITY, 0.7);
set_window_value(AT_DATTACK, 5, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1.1);
set_window_value(AT_DATTACK, 5, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DATTACK, 3);

set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_MUNO_HITBOX_NAME, "Initial Hit");
set_hitbox_value(AT_DATTACK, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_GROUP, -1);
set_hitbox_value(AT_DATTACK, 1, HG_LIFETIME, 7);
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_X, 10)
set_hitbox_value(AT_DATTACK, 1, HG_HITBOX_Y, -32);
set_hitbox_value(AT_DATTACK, 1, HG_WIDTH, 84);
set_hitbox_value(AT_DATTACK, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_DATTACK, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 1, HG_ANGLE, 55);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(AT_DATTACK, 1, HG_FINAL_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DATTACK, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_DATTACK, 1, HG_EXTRA_HITPAUSE, 1);
set_hitbox_value(AT_DATTACK, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));

set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 2, HG_MUNO_HITBOX_NAME, "Explosion Hit");
set_hitbox_value(AT_DATTACK, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 2, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_X, 28);
set_hitbox_value(AT_DATTACK, 2, HG_HITBOX_Y, -6);
set_hitbox_value(AT_DATTACK, 2, HG_WIDTH, 67);
set_hitbox_value(AT_DATTACK, 2, HG_HEIGHT, 67);
set_hitbox_value(AT_DATTACK, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 2, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 2, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 2, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 2, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 2, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
set_hitbox_value(AT_DATTACK, 2, HG_VISUAL_EFFECT, explode_medium_fx);
set_hitbox_value(AT_DATTACK, 2, HG_HIT_PARTICLE_NUM, 1);

set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DATTACK, 3, HG_MUNO_HITBOX_NAME, "Explosion Hit");
set_hitbox_value(AT_DATTACK, 3, HG_WINDOW, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DATTACK, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_X, 4);
set_hitbox_value(AT_DATTACK, 3, HG_HITBOX_Y, -20);
set_hitbox_value(AT_DATTACK, 3, HG_WIDTH, 40);
set_hitbox_value(AT_DATTACK, 3, HG_HEIGHT, 60);
set_hitbox_value(AT_DATTACK, 3, HG_PRIORITY, 2);
set_hitbox_value(AT_DATTACK, 3, HG_DAMAGE, 4);
set_hitbox_value(AT_DATTACK, 3, HG_ANGLE, 90);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(AT_DATTACK, 3, HG_KNOCKBACK_SCALING, 0.7);
set_hitbox_value(AT_DATTACK, 3, HG_BASE_HITPAUSE, 7);
set_hitbox_value(AT_DATTACK, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_SFX, asset_get("sfx_blow_medium3"));
//set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, explode_large_fx);
set_hitbox_value(AT_DATTACK, 3, HG_VISUAL_EFFECT, explode_medium_fx);
set_hitbox_value(AT_DATTACK, 3, HG_HIT_PARTICLE_NUM, 1);