set_attack_value(AT_DSTRONG, AG_SPRITE, sprite_get("dstrong"));
set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 5);
set_attack_value(AT_DSTRONG, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 2);
set_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

//startup
set_window_value(AT_DSTRONG, 1, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);

//startup 2 //animate in animation.gml
set_window_value(AT_DSTRONG, 2, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 2, AG_WINDOW_SFX, asset_get("sfx_spin_longer"));

//post-charge startup
set_window_value(AT_DSTRONG, 3, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 5);



//final attack
set_window_value(AT_DSTRONG, 4, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG, 4, AG_WINDOW_SFX, sound_get("dr_spellcast"));

//recovery
set_window_value(AT_DSTRONG, 5, AG_WINDOW_TYPE, 0);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_LENGTH, 24);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 10);
set_window_value(AT_DSTRONG, 5, AG_WINDOW_HAS_WHIFFLAG, 0); //no whifflag; long recovery on both hit and miss

set_num_hitboxes(AT_DSTRONG, 1);

//heal
set_hitbox_value(AT_DSTRONG, 1, HG_PARENT_HITBOX, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_WINDOW, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_X, 10);
set_hitbox_value(AT_DSTRONG, 1, HG_HITBOX_Y, -38);
set_hitbox_value(AT_DSTRONG, 1, HG_WIDTH, 96); //88
set_hitbox_value(AT_DSTRONG, 1, HG_HEIGHT, 74); //72
set_hitbox_value(AT_DSTRONG, 1, HG_SHAPE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_DAMAGE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE, 50);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 1);
set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0);
//set_hitbox_value(AT_DSTRONG, 1, HG_BASE_KNOCKBACK, 8);
//set_hitbox_value(AT_DSTRONG, 1, HG_KNOCKBACK_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG, 1, HG_EXTRA_HITPAUSE, 40); //34
set_hitbox_value(AT_DSTRONG, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT, 303);
set_hitbox_value(AT_DSTRONG, 1, HG_VISUAL_EFFECT_Y_OFFSET, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_weak2"));
set_hitbox_value(AT_DSTRONG, 1, HG_ANGLE_FLIPPER, 6);
set_hitbox_value(AT_DSTRONG, 1, HG_HITSTUN_MULTIPLIER, 0.5);
set_hitbox_value(AT_DSTRONG, 1, HG_TECHABLE, 0);
set_hitbox_value(AT_DSTRONG, 1, HG_FORCE_FLINCH, 2);
