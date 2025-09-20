atk = AT_USTRONG_2;

set_attack_value(atk, AG_SPRITE, sprite_get("ustrong"));
set_attack_value(atk, AG_HURTBOX_SPRITE, sprite_get("ustrong_hurt"));
set_attack_value(atk, AG_OFF_LEDGE, 1);
set_attack_value(atk, AG_CATEGORY, 2);

window_num = 1; // Uncharged version - crouch
ustrong_uncharged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_shovel_swing_med2"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);

window_num++; // Uncharged version - upward movement
ustrong_uncharged_hitbox_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -10);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; 
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

window_num++; // Uncharged version - falling
ustrong_uncharged_final_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);

window_num++; // Charged version - crouch
ustrong_charged_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(atk, window_num, AG_WINDOW_HAS_SFX, 1);
set_window_value(atk, window_num, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));
set_window_value(atk, window_num, AG_WINDOW_SFX_FRAME, 3);

window_num++; // Charged version - upward movement
ustrong_charged_hitbox_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 5);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(atk, window_num, AG_WINDOW_VSPEED, -12);
set_window_value(atk, window_num, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(atk, window_num, AG_WINDOW_HSPEED, 0);
set_window_value(atk, window_num, AG_WINDOW_HSPEED_TYPE, 1);

window_num++; 
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 15);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 8);

window_num++; // Charged version - falling
ustrong_charged_final_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 2);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);
set_window_value(atk, window_num, AG_WINDOW_TYPE, 9);


window_num++; // Recover
ustrong_recovery_window = window_num;
set_window_value(atk, window_num, AG_WINDOW_LENGTH, 8);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(atk, window_num, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(atk, window_num, AG_WINDOW_HAS_WHIFFLAG, 1);


set_attack_value(atk, AG_NUM_WINDOWS, window_num);

//////////////////////////////////////////////////////////////// HITBOXES ////////////////////////////////////////////////////////////////

hitbox_num = 1;
// Uncharged hit
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, ustrong_uncharged_hitbox_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 5);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 40);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 70);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 100);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 11);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 9);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_sparks);

// Weak multi-hits
for (i = 0; i < 1; i++) {
    hitbox_num++;
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW, ustrong_charged_hitbox_window);
    set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 2);
    set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, i * 2);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 50);
    set_hitbox_value(atk, hitbox_num, HG_TECHABLE, 1);
    set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -80);
    set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
    set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 130);
    set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
    set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 5);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE, 85);
    set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 8);
    set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 4);
    set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
    set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[1]);
    set_hitbox_value(atk, hitbox_num, HG_ANGLE_FLIPPER, 9);

}

// Final charged hit
hitbox_num++;
set_hitbox_value(atk, hitbox_num, HG_HITBOX_TYPE, 1);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_GROUP, -1);
set_hitbox_value(atk, hitbox_num, HG_WINDOW, ustrong_charged_hitbox_window);
set_hitbox_value(atk, hitbox_num, HG_LIFETIME, 3);
set_hitbox_value(atk, hitbox_num, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_X, 50);
set_hitbox_value(atk, hitbox_num, HG_HITBOX_Y, -80);
set_hitbox_value(atk, hitbox_num, HG_WIDTH, 80);
set_hitbox_value(atk, hitbox_num, HG_HEIGHT, 130);
set_hitbox_value(atk, hitbox_num, HG_PRIORITY, 2);
set_hitbox_value(atk, hitbox_num, HG_DAMAGE, 10);
set_hitbox_value(atk, hitbox_num, HG_ANGLE, 90);
set_hitbox_value(atk, hitbox_num, HG_BASE_KNOCKBACK, 7);
set_hitbox_value(atk, hitbox_num, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(atk, hitbox_num, HG_BASE_HITPAUSE, 12);
set_hitbox_value(atk, hitbox_num, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(atk, hitbox_num, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));
set_hitbox_value(atk, hitbox_num, HG_VISUAL_EFFECT, fx_pow_hit[2]);


set_num_hitboxes(atk, hitbox_num);