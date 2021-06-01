if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_USTRONG_2, AG_SPRITE, sprite_get_pm("ustrong_2"));
set_attack_value(AT_USTRONG_2, AG_NUM_WINDOWS, 9);
set_attack_value(AT_USTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_USTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_USTRONG_2, AG_HURTBOX_SPRITE, sprite_get("ustrong_2_hurt"));


//startup
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HSPEED, 1.5);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, .997);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX, sound_get("ustrong_prep"));
set_window_value(AT_USTRONG_2, 1, AG_WINDOW_SFX_FRAME, 1);




//post_charge startup
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 2);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX, sound_get("ustrong_swing"));
set_window_value(AT_USTRONG_2, 2, AG_WINDOW_SFX_FRAME, 1);

//active
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_USTRONG_2, 3, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);

//recovery 1
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_LENGTH, 6);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 5);

//startup 2
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_SFX, sound_get("ustrong_swing"));
set_window_value(AT_USTRONG_2, 5, AG_WINDOW_SFX_FRAME, 1);

//attack 2 multihits
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//attack 2 final
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_LENGTH, 2);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_USTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 10);

//recovery 2
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_LENGTH, 8);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_USTRONG_2, 8, AG_WINDOW_ANIM_FRAME_START, 11);
//set_window_value(AT_USTRONG_2, 8, AG_WINDOW_HAS_WHIFFLAG, 1);

//final recovery
set_window_value(AT_USTRONG_2, 9, AG_WINDOW_TYPE, 1);
set_window_value(AT_USTRONG_2, 9, AG_WINDOW_LENGTH, 18);
set_window_value(AT_USTRONG_2, 9, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_USTRONG_2, 9, AG_WINDOW_ANIM_FRAME_START, 13);
//set_window_value(AT_USTRONG_2, 9, AG_WINDOW_HAS_WHIFFLAG, 1); //no whifflag; consistent endlag instead

set_num_hitboxes(AT_USTRONG_2, 5);

//attack 1 hitbox 1
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG_2, 1, HG_LIFETIME, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_Y, -60);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG_2, 1, HG_WIDTH, 88);
set_hitbox_value(AT_USTRONG_2, 1, HG_HEIGHT, 76);
set_hitbox_value(AT_USTRONG_2, 1, HG_PRIORITY, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG_2, 1, HG_ANGLE_FLIPPER, 7); //horizontal inward
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_USTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG_2, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 1, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG_2, 1, HG_TECHABLE, 1); //untechable
set_hitbox_value(AT_USTRONG_2, 1, HG_FORCE_FLINCH, 2); //can't flinch

//attack 1 hitbox 2
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_Y, -25);
set_hitbox_value(AT_USTRONG_2, 2, HG_HITBOX_X, -4);
set_hitbox_value(AT_USTRONG_2, 2, HG_WIDTH, 80);
set_hitbox_value(AT_USTRONG_2, 2, HG_HEIGHT, 40);
set_hitbox_value(AT_USTRONG_2, 2, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_DAMAGE, 3);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE, 65);
set_hitbox_value(AT_USTRONG_2, 2, HG_ANGLE_FLIPPER, 7); //horizontal inward
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_USTRONG_2, 2, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_USTRONG_2, 2, HG_BASE_HITPAUSE, 6);
set_hitbox_value(AT_USTRONG_2, 2, HG_EXTRA_HITPAUSE, 2);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 2, HG_HIT_SFX, asset_get("sfx_blow_medium2"));
set_hitbox_value(AT_USTRONG_2, 2, HG_TECHABLE, 1); //untechable
set_hitbox_value(AT_USTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1.25); //to make up for low base kb 
set_hitbox_value(AT_USTRONG_2, 2, HG_FORCE_FLINCH, 2); //can't flinch

//attack 2 filler hitbox 1
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG_2, 3, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG_2, 3, HG_WIDTH, 94);
set_hitbox_value(AT_USTRONG_2, 3, HG_HEIGHT, 106);
set_hitbox_value(AT_USTRONG_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 3, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG_2, 3, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG_2, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG_2, 3, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT_X_OFFSET, -30);
set_hitbox_value(AT_USTRONG_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 3, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG_2, 3, HG_SDI_MULTIPLIER, 0.0001); //can't SDI out
set_hitbox_value(AT_USTRONG_2, 3, HG_FORCE_FLINCH, 2); //can't flinch

//attack 2 filler hitbox 2 
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW, 6);
set_hitbox_value(AT_USTRONG_2, 4, HG_WINDOW_CREATION_FRAME, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_LIFETIME, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG_2, 4, HG_WIDTH, 94);
set_hitbox_value(AT_USTRONG_2, 4, HG_HEIGHT, 106);
set_hitbox_value(AT_USTRONG_2, 4, HG_PRIORITY, 3);
set_hitbox_value(AT_USTRONG_2, 4, HG_DAMAGE, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_KNOCKBACK, 8);
set_hitbox_value(AT_USTRONG_2, 4, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_USTRONG_2, 4, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_USTRONG_2, 4, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_USTRONG_2, 4, HG_EXTRA_HITPAUSE, 3);
set_hitbox_value(AT_USTRONG_2, 4, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_USTRONG_2, 4, HG_VISUAL_EFFECT_Y_OFFSET, -20);
set_hitbox_value(AT_USTRONG_2, 4, HG_HIT_SFX, asset_get("sfx_blow_medium1"));
set_hitbox_value(AT_USTRONG_2, 4, HG_SDI_MULTIPLIER, 0.0001); //can't SDI out
set_hitbox_value(AT_USTRONG_2, 4, HG_FORCE_FLINCH, 2); //can't flinch


//attack 2 final hitbox
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_USTRONG_2, 5, HG_WINDOW, 7);
set_hitbox_value(AT_USTRONG_2, 5, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_USTRONG_2, 5, HG_LIFETIME, 2);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_GROUP, 4);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_Y, -72);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITBOX_X, -6);
set_hitbox_value(AT_USTRONG_2, 5, HG_WIDTH, 94);
set_hitbox_value(AT_USTRONG_2, 5, HG_HEIGHT, 106);
set_hitbox_value(AT_USTRONG_2, 5, HG_PRIORITY, 6);
set_hitbox_value(AT_USTRONG_2, 5, HG_DAMAGE, 6);
set_hitbox_value(AT_USTRONG_2, 5, HG_ANGLE, 90);
set_hitbox_value(AT_USTRONG_2, 5, HG_BASE_KNOCKBACK, 9.5);
set_hitbox_value(AT_USTRONG_2, 5, HG_KNOCKBACK_SCALING, 1.15);
set_hitbox_value(AT_USTRONG_2, 5, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_USTRONG_2, 5, HG_HITPAUSE_SCALING, 0.9);
set_hitbox_value(AT_USTRONG_2, 5, HG_VISUAL_EFFECT, 304); //20
set_hitbox_value(AT_USTRONG_2, 5, HG_VISUAL_EFFECT_X_OFFSET, 30);
set_hitbox_value(AT_USTRONG_2, 5, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_USTRONG_2, 5, HG_HIT_SFX, asset_get("sfx_blow_heavy1"));
set_hitbox_value(AT_USTRONG_2, 5, HG_SDI_MULTIPLIER, 1); //restore SDI multiplier
set_hitbox_value(AT_USTRONG_2, 5, HG_HIT_LOCKOUT, 1);

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);