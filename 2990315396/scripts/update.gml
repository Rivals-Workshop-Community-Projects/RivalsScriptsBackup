if (state_cat = SC_HITSTUN || state_cat = SC_GROUND_NEUTRAL || state_cat = SC_AIR_NEUTRAL || state = PS_LANDING_LAG)
{
	char_height = 50;
	easetimer = 0;
      sound_stop(sound_get("sfx_superjumphold"))
      //if (outline_color = [255, 255, 255] && attack = AT_USPECIAL)
      if (outline_color != [0, 0, 0])
      {
          outline_color = [0, 0, 0];
          init_shader();
      }

    if(free && taunt_pressed && state_cat = SC_AIR_NEUTRAL)
    {
        set_attack(AT_TAUNT);
        taunt_index = random_func(1, 13, true)
    }

}

if ((state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) && attack != AT_TAUNT)
{
    if (state_timer = 1) woaged = false;
    if (taunt_down && woaged = false)
    {
        woaged = true;
        sound_play(sound_get("Noise"+string(random_func(14, 6, true)+1)));
        
    }
}


if(left_down && right_down && (state = PS_WALK_TURN))
{
    breakdance_timer++;
}
else
{
   breakdance_timer = 0;
   sound_stop(sound_get("sfx_breakdancemusic"));
}

var newArray = 0;
for (var i = 0; i < array_length_1d(afterimage_array); ++i)
{
    var obj = afterimage_array[i];
    if (++obj.timer <= obj.timerMax) newArray[array_length_1d(newArray)] = obj;
}
afterimage_array = newArray;


if (nspecial_mach_timer || attack = AT_NSPECIAL) afterimage_colour = (get_gameplay_time() % (ai_freq*2) < ai_freq)+1; //red and gree
else afterimage_colour = 0; //c_white

//mach code, mr nrat
if (nspecial_mach_timer > 0) 
{
      if (get_gameplay_time() % (ai_freq) = ai_freq-1) CreateAfterimage();
	//if (!hitpause) nspecial_mach_timer--;
      nspecial_mach_timer--;
	move_cooldown[AT_NSPECIAL] = 3;
	
	max_jump_hsp = nspecial_mach_jump_hsp;
	if (!free) frict = ground_friction * nspecial_mach_frict_mult;
	
	if (nspecial_mach_sound == noone) nspecial_mach_sound = sound_play(sound_get("sfx_mach3"), true, 0);
	else if (nspecial_mach_timer < 30) sound_volume(nspecial_mach_sound, nspecial_mach_timer / 30, 0);

	//if (nspecial_mach_timer == 0) sound_play(sfx_mach_end);

	set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 0); //removes hsp boost so you dont slide across the stage
	set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 0);
	set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 0);

      set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 6); // prevents jab spam by increasing startup by 2 frames
}
else 
{
	max_jump_hsp = normal_max_jump_hsp;
	
	if (nspecial_mach_sound != noone )
      {
		sound_stop(nspecial_mach_sound);
		nspecial_mach_sound = noone;
	}
	set_window_value(AT_JAB, 2, AG_WINDOW_HSPEED, 2);
	set_window_value(AT_JAB, 5, AG_WINDOW_HSPEED, 2.5);
	set_window_value(AT_JAB, 8, AG_WINDOW_HSPEED, 4);
	set_window_value(AT_FTILT, 2, AG_WINDOW_HSPEED, 2);
      set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
      set_window_value(AT_JAB, 1, AG_WINDOW_LENGTH, 4);
}

was_free = free;

#define CreateAfterimage()
{
if (afterimage_colour = 1) var _noismage = $5555FF  
else if (afterimage_colour = 2) var _noismage = $77FF77
else var _noismage = c_white


    afterimage_array[array_length_1d(afterimage_array)] = {x:x+draw_x, y:y+draw_y, spr_dir:spr_dir, sprite_index:sprite_index, image_index:image_index, rot:spr_angle, col:_noismage, timer:0, timerMax:20};
}

