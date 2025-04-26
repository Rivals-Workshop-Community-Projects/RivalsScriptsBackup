set_attack_value(AT_BAIR, AG_CATEGORY, 1);
set_attack_value(AT_BAIR, AG_SPRITE, sprite_get("bair"));
set_attack_value(AT_BAIR, AG_NUM_WINDOWS, 6);
set_attack_value(AT_BAIR, AG_HAS_LANDING_LAG, 1);
set_attack_value(AT_BAIR, AG_LANDING_LAG, 9);
set_attack_value(AT_BAIR, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_BAIR, AG_HURTBOX_SPRITE, sprite_get("bair_hurt"));

//startup window
set_window_value(AT_BAIR, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 1, AG_WINDOW_VSPEED, -1);

//charge loop
set_window_value(AT_BAIR, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 2, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_BAIR, 2, AG_WINDOW_ANIM_FRAME_START, 1);

//post charge
set_window_value(AT_BAIR, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_LENGTH, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_BAIR, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX_FRAME, 3);
set_window_value(AT_BAIR, 3, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//active window
set_window_value(AT_BAIR, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_LENGTH, 2);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//hold frame

set_window_value(AT_BAIR, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_BAIR, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_BAIR, 5, AG_WINDOW_HAS_WHIFFLAG, true);

//recovery window
set_window_value(AT_BAIR, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_BAIR, 6, AG_WINDOW_LENGTH, 10);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_BAIR, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_BAIR, 6, AG_WINDOW_HAS_WHIFFLAG, true);

set_num_hitboxes(AT_BAIR, 1);

set_hitbox_value(AT_BAIR, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_BAIR, 1, HG_WINDOW, 4);
set_hitbox_value(AT_BAIR, 1, HG_LIFETIME, 2);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_X, -80);
set_hitbox_value(AT_BAIR, 1, HG_HITBOX_Y, -45);
set_hitbox_value(AT_BAIR, 1, HG_WIDTH, 60);
set_hitbox_value(AT_BAIR, 1, HG_HEIGHT, 64);
set_hitbox_value(AT_BAIR, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 9);
set_hitbox_value(AT_BAIR, 1, HG_ANGLE, 125);
set_hitbox_value(AT_BAIR, 1, HG_BASE_KNOCKBACK, 7); 
set_hitbox_value(AT_BAIR, 1, HG_KNOCKBACK_SCALING, 1); 
set_hitbox_value(AT_BAIR, 1, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_BAIR, 1, HG_HITPAUSE_SCALING, .7);
set_hitbox_value(AT_BAIR, 1, HG_VISUAL_EFFECT, thunder_big);
set_hitbox_value(AT_BAIR, 1, HG_HIT_SFX, asset_get("sfx_absa_kickhit"));
set_hitbox_value(AT_BAIR, 1, HG_TWENNY_ELECTRIC, 1);