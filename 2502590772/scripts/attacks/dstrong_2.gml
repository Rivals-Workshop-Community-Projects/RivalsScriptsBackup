if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get_pm("dstrong_2"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 4);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_2_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_SFX, sound_get("thunder_start"));
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//post-charge startup
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, sound_get("bair3"));

//hitbox 2
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 9);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX_FRAME, 0);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX, sound_get("thunder_slam"));
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);

//recovery 2
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 22);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 1);


set_num_hitboxes(AT_DSTRONG_2, 3);

//floor hitbox
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 12);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 60);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 6);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_EXTRA_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX,  sound_get("bair2"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 9); //towards the player
set_hitbox_value(AT_DSTRONG_2, 1, HG_TECHABLE, 1); //untechable 
set_hitbox_value(AT_DSTRONG_2, 1, HG_FORCE_FLINCH, 2); //cannot flinch

//strong hitbox
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -40);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 84);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 7);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 8);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE_FLIPPER, 6); //away from the attacker
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 9.2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_Y_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, sound_get("slowslam"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_LOCKOUT, 12);


//lightning
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_GROUP, 1); //shares group with floor hitbox
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_LIFETIME, 3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_Y, -600);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WIDTH, 34);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HEIGHT, 1200);
set_hitbox_value(AT_DSTRONG_2, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_PRIORITY, 3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 10);
set_hitbox_value(AT_DSTRONG_2, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_KNOCKBACK, 10);
set_hitbox_value(AT_DSTRONG_2, 3, HG_KNOCKBACK_SCALING, 0.75);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE, 11);
set_hitbox_value(AT_DSTRONG_2, 3, HG_EXTRA_HITPAUSE, -4);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITPAUSE_SCALING, 0.8);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_SFX, sound_get("bair1"));
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT_Y_OFFSET, 600);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITSTUN_MULTIPLIER, 0.9); //reduced hitstun
set_hitbox_value(AT_DSTRONG_2, 3, HG_TECHABLE, 2); //through platforms
/*

set_attack_value(AT_DSTRONG_2, AG_SPRITE, sprite_get_pm("dstrong_2"));
set_attack_value(AT_DSTRONG_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_DSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_DSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("dstrong_hurt"));

set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, .999);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 2);
set_window_value(AT_DSTRONG_2, 1, AG_WINDOW_ANIM_FRAME_START, 1);

//post-charge startup
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_LENGTH, 10);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 2, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//hitbox 1
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_LENGTH, 5);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_SFX, sound_get("bair3"));
set_window_value(AT_DSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 8);

//recovery 1
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_LENGTH, 4);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_DSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 13);

//startup 2
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_LENGTH, 15);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 3);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 5, AG_WINDOW_SFX, asset_get("sfx_swipe_heavy1"));

//hitbox 2
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_LENGTH, 6);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_SFX, sound_get("bair3"));
set_window_value(AT_DSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 8);

//recovery 2
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_LENGTH, 14);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 6);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 11);
set_window_value(AT_DSTRONG_2, 7, AG_WINDOW_HAS_WHIFFLAG, 1);



set_num_hitboxes(AT_DSTRONG_2, 3);

set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_GROUP, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_DSTRONG_2, 1, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITBOX_Y, -2);
set_hitbox_value(AT_DSTRONG_2, 1, HG_WIDTH, 140);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HEIGHT, 12);
set_hitbox_value(AT_DSTRONG_2, 1, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG_2, 1, HG_DAMAGE, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE, 65);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_KNOCKBACK, 4);
set_hitbox_value(AT_DSTRONG_2, 1, HG_KNOCKBACK_SCALING, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_BASE_HITPAUSE, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_EXTRA_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HITPAUSE_SCALING, 0);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT, 20);
set_hitbox_value(AT_DSTRONG_2, 1, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 1, HG_HIT_SFX,  sound_get("bair2"));
set_hitbox_value(AT_DSTRONG_2, 1, HG_ANGLE_FLIPPER, 9); //towards the player
set_hitbox_value(AT_DSTRONG_2, 1, HG_TECHABLE, 1); //untechable 

//lightning - sweet
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_GROUP, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG_2, 2, HG_LIFETIME, 4);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITBOX_Y, -45);
set_hitbox_value(AT_DSTRONG_2, 2, HG_WIDTH, 72);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HEIGHT, 90);
set_hitbox_value(AT_DSTRONG_2, 2, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_DAMAGE, 6);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE, 70);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_KNOCKBACK, 6.5);
set_hitbox_value(AT_DSTRONG_2, 2, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_BASE_HITPAUSE, 12);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITPAUSE_SCALING, 1);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSTRONG_2, 2, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_SFX, sound_get("bair1"));
set_hitbox_value(AT_DSTRONG_2, 2, HG_HITSTUN_MULTIPLIER, 1.0);
set_hitbox_value(AT_DSTRONG_2, 2, HG_ANGLE_FLIPPER, 6); //away from the attacker
set_hitbox_value(AT_DSTRONG_2, 2, HG_HIT_LOCKOUT, 12);


//lightning - sour
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_GROUP, 3);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW, 6);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WINDOW_CREATION_FRAME, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_LIFETIME, 5);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_X, 0);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITBOX_Y, -600);
set_hitbox_value(AT_DSTRONG_2, 3, HG_WIDTH, 20);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HEIGHT, 1200);
set_hitbox_value(AT_DSTRONG_2, 3, HG_SHAPE, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_PRIORITY, 1);
set_hitbox_value(AT_DSTRONG_2, 3, HG_DAMAGE, 5);
set_hitbox_value(AT_DSTRONG_2, 3, HG_ANGLE, 270);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_KNOCKBACK, 2);
set_hitbox_value(AT_DSTRONG_2, 3, HG_KNOCKBACK_SCALING, 0.25);
set_hitbox_value(AT_DSTRONG_2, 3, HG_BASE_HITPAUSE, 5);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITPAUSE_SCALING, 0.5);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT, 197);
set_hitbox_value(AT_DSTRONG_2, 3, HG_VISUAL_EFFECT_X_OFFSET, 10);
set_hitbox_value(AT_DSTRONG_2, 3, HG_HIT_SFX, sound_get("bair2"));
set_hitbox_value(AT_DSTRONG_2, 3, HG_HITSTUN_MULTIPLIER, 0.5);
*/

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);
