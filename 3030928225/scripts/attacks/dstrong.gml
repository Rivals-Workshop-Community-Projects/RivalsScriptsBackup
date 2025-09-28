atk = AT_DSTRONG;

set_attack_value(atk, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 0);

window_num = 1; // Windup
dstrong_windup_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);

window_num++; // Charging
dstrong_charging_window = window_num;
set_attack_value(atk, AG_STRONG_CHARGE_WINDOW, dstrong_charging_window);
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 4);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);

window_num++; // Charged, can stay in this state by holding button
dstrong_bonus_charging_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 1);

window_num++; // Uncharged version
dstrong_uncharged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 28);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 6);

window_num++; // Charged version
dstrong_charged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 25);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_zetter_fireball_fire"));
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 6);

window_num++; // Charged version - bonus loop 1
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);


window_num++; // Charged version - bonus loop 2
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 7);

window_num++; // Recover
dstrong_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 10);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

set_attack_value(atk, AG_NUM_WINDOWS, window_num);

window_num++; // Stance-cancel window, not normally taken
dstrong_stancel_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, stancle_length);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
// Weaker uncharged multi-hits
for (i = 0.5; i < 3; i++) {
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, dstrong_uncharged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, i * 8);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 45);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 85);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 3);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);


}

// Final uncharged hit
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, dstrong_uncharged_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 24);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 45);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 85);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[2]);

// Weaker charged multi-hits
for (i = 0.5; i < 4; i++) {
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, dstrong_charged_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 8);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, i * 8);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 45);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 85);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 4);
    set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 2);
    set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);

}

// Third-to-last hit (timing for these with windows is weird, sorry)
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, dstrong_charged_window + 1);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 8);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 45);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 85);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 3);
set_hitbox_value(atk, hitbox_num, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);



// Penultimate charged hit
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, dstrong_charged_window + 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 45);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_weak"));
set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);


// Final charged hit
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, dstrong_charged_window + 2);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 4);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 45);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -32);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 85);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 70);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 2);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 70);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 0.95);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_ori_energyhit_medium"));
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[2]);


set_num_hitboxes(atk, hitbox_num);