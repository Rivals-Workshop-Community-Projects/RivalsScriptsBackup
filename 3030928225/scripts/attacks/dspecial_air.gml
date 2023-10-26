atk = AT_DSPECIAL_AIR;

set_attack_value(atk, AG_CATEGORY, 2);
set_attack_value(atk, AG_SPRITE, sprite_get("dspecial_air"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dspecial_air_hurt"));

// WINDOWS 1 - 5: SET UP WAYPOINT

window_num = 1; // Windup
dspecial_air_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 7);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num ++; // Diving kick, end if we hit the ground
dspecial_air_diving_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, dspecial_air_initial_duration + dspecial_air_looping_duration); // 3 'frames' per 'frame'... Adjust to be uniform if you want to change timing
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, 9);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 1);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 6);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num ++; // Charged landing
dspecial_air_charged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 16);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));

window_num ++; // Wind up for kick
dspecial_air_kick_flip_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 21);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_weak2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 9);

window_num ++; // Kick flip
dspecial_air_kick_flip_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 24);

window_num ++; // Uncharged landing/endlag
dspecial_air_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 19);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_downb"));

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num ++; // Charged recovery
dspecial_air_charged_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 27);
// Cannot stancel this move

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

// Uncharged initial spike hitbox
hitbox_num = 1;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
//set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
//set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, dspecial_spike_hitbox_duration);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 280);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 10);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_hit1"));

// Normal hitbox while diving
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, 1);
//set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
//set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, dspecial_air_looping_duration);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, 0);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 7);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 361);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, .55);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .8);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_hit4"));

// Grab hitbox while diving
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
//set_hitbox_value(atk, hitbox_num, HG_WINDOW, 2);
//set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, dspecial_air_looping_duration);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -10);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 40);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 90);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 0.1);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, sound_get("sfx_hit2"));
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 8);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .5);
//set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 1); // no visual effect
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 0);
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1)
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[2]);

// Final hibox
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, dspecial_air_kick_flip_window);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_SHAPE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 10);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -55);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 110);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 1);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 80);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 9);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9.0);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, 301);
set_hitbox_value(atk, hitbox_num, HG_IGNORES_PROJECTILES, 0);
//set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_sparks);


set_num_hitboxes(atk, hitbox_num);