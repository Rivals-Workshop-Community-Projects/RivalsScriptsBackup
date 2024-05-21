atk = AT_FSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("fstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("fstrong_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 0);

window_num = 1; // Windup
fstrong_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num++; // Charging
fstrong_charging_window = window_num;
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, fstrong_charging_window);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

window_num++; // Charged, can stay in this state by holding button
fstrong_bonus_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);

/*window_num++; // Uncharged version
fstrong_attackstartup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);*/


window_num++; // Uncharged version
fstrong_uncharged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 24);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; // Charged version
fstrong_charged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 42);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 14);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 3.5);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; // Recover
fstrong_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 20);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 17);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num++; // Stance-cancel window, not normally taken
fstrong_stancel_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, stancle_length);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);


//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 0;
// Uncharged

    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_uncharged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 30);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9)
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);
    
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_uncharged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 12);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 30);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9)
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);


//final hit
for (i = 0; i < 1; i++) {
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_uncharged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 21);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 8);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .7);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_sparks);

}

// Charged
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_charged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 10);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 6);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 10)
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
    set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);
    
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_charged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 12);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 20);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 10)
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
    set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);
    
        hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_charged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 21);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 20);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 10)
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
    set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);
    
        hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_charged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 30);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 20);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9)
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_FORCE_FLINCH, 0);
    set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, -1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[0]);

    //final hit
for (i = 0; i < 1; i++) {
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, fstrong_charged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 39);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 65);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 95);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 4);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 45);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 6);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, .7);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 1.0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_sparks);
    set_hitbox_value(atk, hitbox_num, HG_DRIFT_MULTIPLIER, 1);


}

set_num_hitboxes(atk, hitbox_num);