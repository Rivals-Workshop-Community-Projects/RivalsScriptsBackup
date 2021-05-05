set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get("red_dstrong"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("red_dstrong_hurt"));
set_attack_value(AT_DSTRONG_2, AG_USES_CUSTOM_GRAVITY, 1);

//Startup 1
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 11);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX, asset_get("sfx_clairen_tip_loop"));

//Attack 1
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//Startup 2
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 2);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_WHIFFLAG, 1);

//Attack 2
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy2"));

//Recovery 
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 8);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_DSTRONG_2, 2);

set_hitbox_value(AT_DSTRONG_2, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 45);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 75);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 28);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 35);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, red_new_stab_1 );
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX, sound_get("RedHit4"));

set_hitbox_value(AT_DSTRONG_2, 2, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, -30);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -5);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 60);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 26);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 145);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, .7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 8);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, .4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 8);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 8);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, red_new_stab_1 );
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_PARTICLE_NUM, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, sound_get("RedHit4"));