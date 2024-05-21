atk = AT_DSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_hurt"));

window_num = 1; // Windup
dspecial_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 13);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num++; // Charging
dspecial_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++; // Charged, can stay in this state by holding button
dspecial_bonus_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++; // Uncharged windup
dspecial_uncharged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);

window_num++; // Uncharged throw
dspecial_uncharged_throw_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num++; // Charged windup
dspecial_charged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 4);

window_num++; // Charged throw
dspecial_charged_throw_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 21);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);

window_num++; // Hold still
dspecial_hold_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);

window_num++; // Windup to reel it back in
dspecial_reel_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);

window_num++; // Reel it back in
dspecial_reeling_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 15);

window_num++; // Recovery
dspecial_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 18);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num++; // Stance-cancel window, not normally taken
dspecial_stancel_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, stancle_length);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
// Combo hit
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 30);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 30);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 30);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 5);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_icehit_weak1"));
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, .6);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, .6);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1.1);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_grab"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, true);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, dspecial_lockout_time);

// Final stab hitbox
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 5);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 50);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 6);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 50);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .9);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_SDI_MULTIPLIER, 1);
set_hitbox_value(atk, hitbox_num, HG_HITSTUN_MULTIPLIER, 1);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_grab"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, asset_get("empty_sprite"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, -1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, true);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_hit4"));
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
//set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, dspecial_lockout_time);

set_num_hitboxes(atk, hitbox_num);