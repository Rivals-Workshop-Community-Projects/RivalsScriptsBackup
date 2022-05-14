set_attack_value(AT_USTRONG, AG_CATEGORY, 2);
set_attack_value(AT_USTRONG, AG_SPRITE, sprite_get("bustrong"));
set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USTRONG, AG_HURTBOX_SPRITE, sprite_get("bustrong_hurt"));
set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 3);
set_attack_value(AT_USTRONG, AG_USES_CUSTOM_GRAVITY, 1);

//startup grounded
set_window_value(AT_USTRONG, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 1, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 1, AG_WINDOW_CUSTOM_GRAVITY, 1);

//startup air
set_window_value(AT_USTRONG, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_USTRONG, 2, AG_WINDOW_ANIM_FRAME_START, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 2, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USTRONG, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 2, AG_WINDOW_CUSTOM_GRAVITY, 1);

//charge air
set_window_value(AT_USTRONG, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_USTRONG, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 3, AG_WINDOW_CUSTOM_GRAVITY, 0);

//spin
set_window_value(AT_USTRONG, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 4, AG_WINDOW_ANIM_FRAME_START, 5);
set_window_value(AT_USTRONG, 4, AG_WINDOW_VSPEED, -1);
set_window_value(AT_USTRONG, 4, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Dive
set_window_value(AT_USTRONG, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_LENGTH, 10);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_ANIM_FRAME_START, 6);
set_window_value(AT_USTRONG, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 5, AG_WINDOW_SFX, sound_get("dair"));
set_window_value(AT_USTRONG, 5, AG_WINDOW_VSPEED, 20);
set_window_value(AT_USTRONG, 5, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Burrowing
set_window_value(AT_USTRONG, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 6, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 6, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG, 6, AG_WINDOW_VSPEED, 20);
set_window_value(AT_USTRONG, 6, AG_WINDOW_CUSTOM_GRAVITY, 1);

//WOOSH
set_window_value(AT_USTRONG, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_LENGTH, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_SFX, sound_get("utilt"));
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG, 7, AG_WINDOW_ANIM_FRAME_START, 9);
set_window_value(AT_USTRONG, 7, AG_WINDOW_HSPEED, 100);
set_window_value(AT_USTRONG, 7, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Dive Up
set_window_value(AT_USTRONG, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 8, AG_WINDOW_LENGTH, 4);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG, 8, AG_WINDOW_ANIM_FRAME_START, 10);
//set_window_value(AT_USTRONG, 8, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 8, AG_WINDOW_VSPEED, -14);
set_window_value(AT_USTRONG, 8, AG_WINDOW_HSPEED, 0);
set_window_value(AT_USTRONG, 8, AG_WINDOW_CUSTOM_GRAVITY, 1);

//Dive Up 2
set_window_value(AT_USTRONG, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_LENGTH, 17);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_USTRONG, 9, AG_WINDOW_ANIM_FRAME_START, 12);
set_window_value(AT_USTRONG, 9, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_USTRONG, 9, AG_WINDOW_VSPEED, -8);
set_window_value(AT_USTRONG, 9, AG_WINDOW_CUSTOM_GRAVITY, 1);
set_window_value(AT_USTRONG, 9, AG_WINDOW_HAS_WHIFFLAG, 1);

set_num_hitboxes(AT_USTRONG, 1);

//Normal
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW, 8);
set_hitbox_value(AT_USTRONG, 1, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG, 1, HG_LIFETIME, 6);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_X, 0*2);
set_hitbox_value(AT_USTRONG, 1, HG_HITBOX_Y, -24*2);
set_hitbox_value(AT_USTRONG, 1, HG_WIDTH, 24*2);
set_hitbox_value(AT_USTRONG, 1, HG_HEIGHT, 48*2);
set_hitbox_value(AT_USTRONG, 1, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG, 1, HG_DAMAGE, 11);
set_hitbox_value(AT_USTRONG, 1, HG_ANGLE, 80);
set_hitbox_value(AT_USTRONG, 1, HG_BASE_KNOCKBACK, 9); 
set_hitbox_value(AT_USTRONG, 1, HG_KNOCKBACK_SCALING, .9); 
set_hitbox_value(AT_USTRONG, 1, HG_BASE_HITPAUSE, 10);
set_hitbox_value(AT_USTRONG, 1, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG, 1, HG_HITPAUSE_SCALING, .6);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);;
set_hitbox_value(AT_USTRONG, 1, HG_HIT_PARTICLE_NUM, 1);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT, fx_bhit);
set_hitbox_value(AT_USTRONG, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_USTRONG, 1, HG_HIT_SFX, asset_get("sfx_blow_heavy2"));