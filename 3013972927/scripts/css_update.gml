//css_update.gml
//this script is used for anything you want to display on the CSS in real-time
//NOTE: CSS is short for Character Select Screen
cpu_hover_update(); 

css_anim_time ++; //animates the css by counting up, similarly to a state_timer
alt_cur = get_player_color(player); //checks the current alt
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable


//these values need to be updated every frame because when you come back to the CSS the window kinda pops up
icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+20);
preview_y = floor(y+10);

//if the current alt isn't the same as the previous one, reset the animation timer and update the previous alt
if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

//rainbow alt stuff
if (alt_cur == 11 || alt_cur == 12) user_event(0);

if (instance_exists(cursor_id))
{
    
    if (get_instance_x(cursor_id) > vo_pos[0] && get_instance_x(cursor_id) < vo_pos[2] && get_instance_y(cursor_id) > vo_pos[1] && get_instance_y(cursor_id) < vo_pos[3]) //lanugage settings
    {
        if (press_delay == 0) vo_button_state = 1;
        suppress_cursor = true;

        if (menu_a_pressed)
        {
            cur_select ++;
            if (cur_select >= 2) 
            {
                cur_select = 0;
            }
            
            switch (cur_select)
            {
                default: vo = 0; break;
                case 0: vo = 0; break;
                case 1: vo = 1; break;
            }

            sound_play(asset_get("mfx_option"));
            
            play_voice("taunt", 0);
            
            generated_var = generate_synced_var(cur_select,1,cur1_select,1)
			//print(generated_var);
			set_synced_var(player, generated_var);
            //the else above and this are both forcing one voice clip at a time so they don't overlap
            if (cur_voiceclip[0] != cur_voiceclip[1])
            {
                sound_stop(cur_voiceclip[1]);
                cur_voiceclip[1] = cur_voiceclip[0];
            }

            press_delay = 3;
            vo_button_state = 2;
        }
    }
    else
    	{
    		if (get_instance_x(cursor_id) > beat_pos[0] && get_instance_x(cursor_id) < beat_pos[2] && get_instance_y(cursor_id) > beat_pos[1] && get_instance_y(cursor_id) < beat_pos[3]) //lanugage settings
			    {
			        if (press_delay == 0) beat_button_state = 1;
			        suppress_cursor = true;
			
			        if (menu_a_pressed)
			        {
			            cur1_select ++;
			            if (cur1_select >= 2) 
			            {
			                cur1_select = 0;
			            }
			            
			            switch (cur1_select)
			            {
			                default: bpm = 0; break;
			                case 0: bpm = 0; break;
			                case 1: 
			                bpm = 1; 
			                sound_play(sound_get("chai_tilt_beat_1"));
			                break;
			            }
			            
			            sound_play(asset_get("mfx_option"));
			            
			            generated_var = generate_synced_var(cur_select,1,cur1_select,1)
						//print(generated_var);
						set_synced_var(player, generated_var);
			            //the else above and this are both forcing one voice clip at a time so they don't overlap
			            if (cur_voiceclip[0] != cur_voiceclip[1])
			            {
			                sound_stop(cur_voiceclip[1]);
			                cur_voiceclip[1] = cur_voiceclip[0];
			            }
			
			            press_delay = 3;
			            beat_button_state = 2;
			        }
			    }
			    	else
				    {
				        beat_button_state = 0;
				        suppress_cursor = false;
				    }
    	}
    
}


//just so the button down will stay for a bit
if (press_delay > 0)
{
    if (vo_button_state == 2) vo_button_state = 2;
    press_delay --;
}


#define generate_synced_var
///args chunks...
///Given pairs of chunks and their lengths in bits, compiles them into one value.
//arg format: chunk, bit_length, chunk, bit_length, etc.
var output = 0;
var num_chunks = argument_count/2;
if num_chunks != floor(num_chunks) {
    print("error generating synced var - function formatted wrong.");
    return 0;
}
var total_len = 0;
for (var i = num_chunks-1; i >= 0; i--) {
    var pos = (i*2);
    var shift = (pos-1 >= 0) ? argument[pos-1] : 0;
    total_len += argument[pos+1];
    output = output | argument[pos];
    output = output << shift;
}
if total_len > 32 {
    print(`error generating synced var - bit length surpassed 32! (${total_len} bits.)`);
    return 0;
}

return real(output);


#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);

if (is_cpu) {
    var pb = plate_bounds, cs = cursors;
    if (cpu_is_hovered) {
        var c = cs[@cpu_hovering_player]
        cursor_id = c;
        var cx = get_instance_x(c),
            cy = get_instance_y(c);
        if (cpu_hover_time < 10) cpu_hover_time++;
        if (cpu_color_swap_time < 5) cpu_color_swap_time++;
        if (cx != clamp(cx, pb[0],pb[2]) || cy != clamp(cy, pb[1],pb[3])) {
            cpu_is_hovered = false;
            c = cs[@p];
            cursor_id = c;
        }
    } else {
        var hplayer = get_new_hovering_player();
        if (cpu_hover_time > 0) cpu_hover_time--;
        if (hplayer != -1) {
            cpuh_new_color = get_player_hud_color(hplayer);
            if (cpu_hover_time > 0) {
                cpuh_prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else { //if the player indicator is not being displayed already
                cpuh_prev_color = cpuh_new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cs[@hplayer];
        }
    }
}

#define get_new_hovering_player()
var pb = plate_bounds, cs = cursors;
for (var i = 1; i <= 4; i++) {
    var c = cs[@i];
    var cx = get_instance_x(c);
    var cy = get_instance_y(c);
    if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) {
        return i;
    } 
}
return -1;

#define play_voice (_voice, _cooldown)
var voiceLine = _voice;

if (vo != 0)
{
	var num = random_func( 1, 3, true );
//	print("chai_vo_" + string(_voice) + "_" + string(num))
    cur_voiceclip[0] = sound_play(sound_get("chai_vo_" + string(_voice) + "_" + string(num)));
    voice_cooldown = _cooldown;
}