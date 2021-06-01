if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_TAUNT_2, AG_SPRITE, sprite_get_pm("taunt"));
set_attack_value(AT_TAUNT_2, AG_NUM_WINDOWS, 2);
set_attack_value(AT_TAUNT_2, AG_HAS_LANDING_LAG, 0);
set_attack_value(AT_TAUNT_2, AG_OFF_LEDGE, 0);
set_attack_value(AT_TAUNT_2, AG_HURTBOX_SPRITE, hurtbox_spr);


set_window_value(AT_TAUNT_2, 1, AG_WINDOW_TYPE, 9); //repeating window
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_LENGTH, 48);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_ANIM_FRAMES, 12);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX, sound_get_pm("taunt"));
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_SFX_FRAME, 6 + species_id * 24);
set_window_value(AT_TAUNT_2, 1, AG_WINDOW_HSPEED_TYPE, 1);

set_window_value(AT_TAUNT_2, 2, AG_WINDOW_TYPE, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_LENGTH, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAMES, 1);
set_window_value(AT_TAUNT_2, 2, AG_WINDOW_ANIM_FRAME_START, 11);


#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);

#define sound_get_pm
var sound_name = argument0; 
if (species_id == 1) sound_name += "minus"; 
else sound_name += "plus"; 
return sound_get(sound_name);