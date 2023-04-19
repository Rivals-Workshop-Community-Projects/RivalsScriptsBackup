set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get("fstrong_1"));
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_1_hurt"));
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_REFRESH, 1);
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_USES_ROLES, 1);
set_attack_value(AT_FSTRONG_2, AG_MUNO_ATTACK_MISC, "Sorry nothing. Check the files if you want frame data.");

set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 9);

//Bow
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, sound_get("sfx_bow1"));
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX_FRAME, 5);

set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, -5);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2);

//No Charge
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 26);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_GOTO, 24);

//Full Charge
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 32);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_GOTO, 24);


//Zweihander
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 3);

set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_LENGTH, 12);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_heavy2"));
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_SFX_FRAME, 11);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HSPEED, 2);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HSPEED_TYPE, 2);

set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_FSTRONG_2, 8, AG_WINDOW_ANIM_FRAME_START, 5);

set_window_value(AT_FSTRONG_2, 9, AG_WINDOW_LENGTH, 20);
set_window_value(AT_FSTRONG_2, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_FSTRONG_2, 9, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG_2, 9, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_FSTRONG_2, 9, AG_WINDOW_GOTO, 24);

set_num_hitboxes(AT_FSTRONG_2, 3);

//Bow
set_hitbox_value(AT_FSTRONG_2, 1, HG_MUNO_HITBOX_NAME, "Projectile");
set_hitbox_value(AT_FSTRONG_2, 1, HG_MUNO_HITBOX_MISC_ADD, "Speed and lifetime increases based on charge");
set_hitbox_value(AT_FSTRONG_2, 1, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 2);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 70);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -24);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 76);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 50);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 110);
//set_hitbox_value(AT_FSTRONG_2, 1, HG_HITSTUN_MULTIPLIER, 0.75);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_ori_seinhit_heavy"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_SPRITE, sprite_get("fx_arrow"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_MASK, sprite_get("fx_arrow_mask"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_ANIM_SPEED, 0.4);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_HSPEED, 18); //vspeed is set in attack_update.gml
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_GROUND_BEHAVIOR, -1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_WALL_BEHAVIOR, -1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DOES_NOT_REFLECT, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_IS_TRANSCENDENT, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_AIR_FRICTION, 0.75);
set_hitbox_value(AT_FSTRONG_2, 1, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PROJECTILE_DESTROY_EFFECT, 1);

//Zweihander
set_hitbox_value(AT_FSTRONG_2, 2, HG_MUNO_HITBOX_NAME, "Top");
set_hitbox_value(AT_FSTRONG_2, 2, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WINDOW, 8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_X, 56);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITBOX_Y, -76);
set_hitbox_value(AT_FSTRONG_2, 2, HG_WIDTH, 106);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HEIGHT, 46);
set_hitbox_value(AT_FSTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG_2, 2, HG_DAMAGE, 18);
set_hitbox_value(AT_FSTRONG_2, 2, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_FSTRONG_2, 2, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 2, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));

set_hitbox_value(AT_FSTRONG_2, 3, HG_MUNO_HITBOX_NAME, "Hit");
set_hitbox_value(AT_FSTRONG_2, 3, HG_MUNO_HITBOX_EXCLUDE, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WINDOW, 8);
set_hitbox_value(AT_FSTRONG_2, 3, HG_LIFETIME, 4);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_X, 80);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITBOX_Y, -30);
set_hitbox_value(AT_FSTRONG_2, 3, HG_WIDTH, 102);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HEIGHT, 62);
set_hitbox_value(AT_FSTRONG_2, 3, HG_SHAPE, 2);
set_hitbox_value(AT_FSTRONG_2, 3, HG_PRIORITY, 4);
set_hitbox_value(AT_FSTRONG_2, 3, HG_DAMAGE, 18);
set_hitbox_value(AT_FSTRONG_2, 3, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_FSTRONG_2, 3, HG_KNOCKBACK_SCALING, 1.3);
set_hitbox_value(AT_FSTRONG_2, 3, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_FSTRONG_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 3, HG_HIT_SFX, sound_get("sfx_sword_blow_heavy1"));