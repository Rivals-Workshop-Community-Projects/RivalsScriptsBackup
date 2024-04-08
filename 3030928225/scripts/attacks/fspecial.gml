atk = AT_FSPECIAL;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("fspecial"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fspecial_hurt"));

window_num = 1; // Windup
fspecial_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 9);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; // Charging
fspecial_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++; // Charged, can stay in this state by holding button
fspecial_bonus_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
/*set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak1"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);*/

window_num++; // Uncharged windup
fspecial_uncharged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_cast"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);


window_num++; // Uncharged throw
fspecial_uncharged_throw_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; // Charged windup
fspecial_charged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_frog_dspecial_cast"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 1);


window_num++; // Charged throw
fspecial_charged_throw_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 16);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; // Recover from miss or wall hit (hitbox still visible)
fspecial_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

window_num++; // Recover from miss or wall hit
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 17);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num++; // Reel struck opponent in
fspecial_reel_hit_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; // Recover from hit
fspecial_recovery_hit_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 22);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);


window_num++; // Stance-cancel window, not normally taken
fspecial_stancel_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
// Uncharged harpoon
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, fspecial_uncharged_time);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 60);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 24);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 30);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_grab"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("harpoon"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, sprite_get("harpoon")); // Can replace with -1 for a normal hitbox shape
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, true);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, 0);//fspecial_uncharged_initial_speed);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 1);


//set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, fspecial_lockout_time);

// Charged harpoon
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, fspecial_charged_time);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 60);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -30);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 24);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 30);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 3);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 0);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_grab"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_SPRITE, sprite_get("harpoon"));
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_MASK, sprite_get("harpoon")); // Can replace with -1 for a normal hitbox shape
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_UNBASHABLE, true);
//set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_PARRY_STUN, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DOES_NOT_REFLECT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_IS_TRANSCENDENT, true);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_HSPEED, 0);//fspecial_charged_initial_speed);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_WALL_BEHAVIOR, 2);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_ENEMY_BEHAVIOR, 1);
set_hitbox_value(atk, hitbox_num, HG_EXTENDED_PARRY_STUN, 1);
set_hitbox_value(atk, hitbox_num, HG_PROJECTILE_DESTROY_EFFECT, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);

//set_hitbox_value(atk, hitbox_num, HG_HIT_LOCKOUT, fspecial_lockout_time);

set_num_hitboxes(atk, hitbox_num);