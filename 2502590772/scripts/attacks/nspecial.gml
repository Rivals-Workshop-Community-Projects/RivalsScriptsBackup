//attacks/nspecial.gml

if (is_master_player) exit; //efficiency: don't load attacks on master player

set_attack_value(AT_NSPECIAL, AG_CATEGORY, 2);
set_attack_value(AT_NSPECIAL, AG_SPRITE, sprite_get_pm("nspecial"));
set_attack_value(AT_NSPECIAL, AG_HURTBOX_SPRITE, sprite_get("nspecial_hurt"));
set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 4);

//startup
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_ANIM_FRAME_START, 0);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX, sound_get("baton_spawn"));
set_window_value(AT_NSPECIAL, 1, AG_WINDOW_SFX_FRAME, get_window_value(AT_NSPECIAL, 1, AG_WINDOW_LENGTH) - 1);


set_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH, 10); 
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_ANIM_FRAME_START, 4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED, -4);
set_window_value(AT_NSPECIAL, 2, AG_WINDOW_VSPEED_TYPE, 2);


set_window_value(AT_NSPECIAL, 3, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HAS_SFX, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED_TYPE, 2);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED, 0);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAMES, 3);
set_window_value(AT_NSPECIAL, 3, AG_WINDOW_ANIM_FRAME_START, 3);

//active
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_LENGTH, 3);
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAMES, 3);
//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HAS_SFX, 1);
//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED_TYPE, 1);
//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_VSPEED, 0);
//set_window_value(AT_NSPECIAL, 4, AG_WINDOW_SFX, sound_get("baton_travel"));
set_window_value(AT_NSPECIAL, 4, AG_WINDOW_ANIM_FRAME_START, 6);

//recovery
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAMES, 4);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_HSPEED_TYPE, 1);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_VSPEED, -3);
set_window_value(AT_NSPECIAL, 5, AG_WINDOW_ANIM_FRAME_START, 4);

set_num_hitboxes(AT_NSPECIAL, 0);


#define sprite_get_pm
var sprite_name = argument0; if (species_id == 1) sprite_name = "m_" + sprite_name; return sprite_get(sprite_name);