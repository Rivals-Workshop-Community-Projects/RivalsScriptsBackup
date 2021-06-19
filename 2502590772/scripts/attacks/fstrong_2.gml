//Helping-Hand FStrong

if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_FSTRONG_2, AG_SPRITE, sprite_get_pm("fstrong_2"));
set_attack_value(AT_FSTRONG_2, AG_NUM_WINDOWS, 7);
set_attack_value(AT_FSTRONG_2, AG_HAS_LANDING_LAG, 3);
set_attack_value(AT_FSTRONG_2, AG_STRONG_CHARGE_WINDOW, 1);
set_attack_value(AT_FSTRONG_2, AG_HURTBOX_SPRITE, sprite_get("fstrong_2_hurt"));
set_attack_value(AT_FSTRONG_2, AG_USES_CUSTOM_GRAVITY, 0);
set_attack_value(AT_FSTRONG_2, AG_OFF_LEDGE, 1);
set_attack_value(AT_FSTRONG_2, AG_CATEGORY, 2);

//startup / charge
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_LENGTH, 8);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_SFX, sound_get("strong_2_prep"));
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FSTRONG_2, 1, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);

//post-charge startup
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_LENGTH, 5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAMES, 5);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_ANIM_FRAME_START, 7);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HSPEED_TYPE, 2);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_FSTRONG_2, 2, AG_WINDOW_SFX, sound_get("strong_2_charge"));


//active (continuous)
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_TYPE, 1); 
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH, 40); //variable duration, set in attack_update.gml
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAMES, 8); //looping; animated in animation.gml
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_ANIM_FRAME_START, 13);
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED, 8.5); //attack_update pulls this value and scales up to 1.5x depending on charge time
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_HSPEED_TYPE, 2); //don't maintain speed here, attack_update maintains speed
set_window_value(AT_FSTRONG_2, 3, AG_WINDOW_VSPEED_TYPE, 1); //don't fall

//didn'thit wall/player -> recovery
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_LENGTH, 28);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAMES, 7);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_ANIM_FRAME_START, 33);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_CUSTOM_AIR_FRICTION, .1);
set_window_value(AT_FSTRONG_2, 4, AG_WINDOW_HAS_WHIFFLAG, 0);

//hit wall/player
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_LENGTH, 6);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_ANIM_FRAME_START, 21);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HSPEED, -2);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_HSPEED_TYPE, 2);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_VSPEED, -2);
//set_window_value(AT_FSTRONG_2, 5, AG_WINDOW_VSPEED_TYPE, 2);

//hit wall/player -> recovery
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_LENGTH, 16);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAMES, 8);
set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_ANIM_FRAME_START, 24);
//set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
//set_window_value(AT_FSTRONG_2, 6, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);



//final frame
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_TYPE, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_LENGTH, 3);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, .8);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_ANIM_FRAME_START, 32);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HAS_WHIFFLAG, 0);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_HAS_CUSTOM_FRICTION, 1);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_CUSTOM_GROUND_FRICTION, .4);
set_window_value(AT_FSTRONG_2, 7, AG_WINDOW_CUSTOM_AIR_FRICTION, .4);

set_num_hitboxes(AT_FSTRONG_2,1);

set_hitbox_value(AT_FSTRONG_2, 1, HG_PARENT_HITBOX, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_TYPE, 1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WINDOW_CREATION_FRAME, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_LIFETIME, get_window_value(AT_FSTRONG_2, 3, AG_WINDOW_LENGTH));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_X, 12);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITBOX_Y, -31);
set_hitbox_value(AT_FSTRONG_2, 1, HG_WIDTH, 52);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HEIGHT, 52);
set_hitbox_value(AT_FSTRONG_2, 1, HG_PRIORITY, 3);
set_hitbox_value(AT_FSTRONG_2, 1, HG_DAMAGE, 10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_ANGLE, 45);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_KNOCKBACK, 7.5);
set_hitbox_value(AT_FSTRONG_2, 1, HG_FINAL_BASE_KNOCKBACK, 5); //scales over time
set_hitbox_value(AT_FSTRONG_2, 1, HG_KNOCKBACK_SCALING, 1.1);
set_hitbox_value(AT_FSTRONG_2, 1, HG_EFFECT, 0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_BASE_HITPAUSE, 18);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HITPAUSE_SCALING, 1.0);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT, 304);
set_hitbox_value(AT_FSTRONG_2, 1, HG_VISUAL_EFFECT_Y_OFFSET, -10);
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_SFX, sound_get("strong_2_launch"));
set_hitbox_value(AT_FSTRONG_2, 1, HG_HIT_LOCKOUT, 10);

#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);

