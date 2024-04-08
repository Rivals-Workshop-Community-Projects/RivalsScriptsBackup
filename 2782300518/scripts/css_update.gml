cpu_hover_update();

if !(instance_exists(cursor_id)) exit;

if ("css_timer" in self)
{
	css_timer++;
}
alt_cur = get_player_color(player);
alt_fix = player; //keep this line, on the online css the player is actually player 0, we later go on init_shader to check for this variable

txt = "#" + string(alt_cur);

temp_x = x + 8;
temp_y = y + 9;
icon_x_pos = x + 178;
icon_y_pos = y + 98;
preview_x = floor(x+10);
preview_y = floor(y+10);

if get_synced_var(player) > 1 
{
    set_synced_var( player, 0)
}

if ("temp_y" in self && "voice_button_position_x" in self && "voice_button_position_y" in self)
{
	if (player == 0)
	{
		voice_button_position_x = x + 180;
		voice_button_position_y = temp_y + 30;
	}
	else
	{
		if (get_player_hud_color(player) == 8421504)
		{
			voice_button_position_x = x + 60;
			voice_button_position_y = temp_y + 169;
		}
		else
		{
			voice_button_position_x = x + 75;
			voice_button_position_y = temp_y + 169;
		}
	}
}
if ("alttime" in self && "css_timer" in self && "alt_checker" in self && alt_cur != alt_checker)
{
	alt_checker = alt_cur;
	css_timer = 0;
    drawing = floor(alttime % 8);
    drawtime = 0;
	sound_stop(sound_get("motorbike_uppercut"));
    sound_play(sound_get("motorbike_uppercut"));
}

if("drawtime" in self) drawtime += 1;
if ("alttime" in self) alttime += 1;

if ("voicebutton" in self)
{
	//Voice selection with new global variables - A fusion of code from Dr;Flux with adjustments made by myself
	if voicebutton == 2 || voicebutton == 5 
	{
	    if cssframes == 0
	    {
		    sound_stop(sound_get("intro"));
			switch (voicebutton)
			{
				case 2:
					sound_play(asset_get("mfx_option"));
					set_synced_var(player, 1);
					sound_play(sound_get("intro"));
				break;
				case 5:
				sound_play(asset_get("mfx_option"));
					set_synced_var(player, 0);
				break;
			}
	
	    }
	    cssframes++;
	    if cssframes == 5
	    {
	        cssframes = 0;
	        voicebutton += 1;
	        if voicebutton > 5 
	        {
	            voicebutton -= 6;
	        }
	        voicebuttoncurrent = voicebutton;
	    }
	    voice_timer = 0;
	}
	
	if (get_instance_x(cursor_id) >= voice_button_position_x && get_instance_x(cursor_id) <= voice_button_position_x + 30 
	&& get_instance_y(cursor_id) >= voice_button_position_y && get_instance_y(cursor_id) <= voice_button_position_y + 26)
	{
	    if voicebutton == voicebuttoncurrent 
	    {
	        if voicebutton == 0 || voicebutton == 3
	        {
	            voicebutton += 1;
	        }
	    }
	}
	else
	{
	    if voicebutton == 1 || voicebutton == 4 
	    {
	        voicebutton -= 1;
	    }
	    voicebuttoncurrent = voicebutton;
	}
	if (voicebutton == 1 || voicebutton == 4)
	{
		suppress_cursor = true;
	    if menu_a_pressed
	    {
	        voicebutton += 1;
	        voicebuttoncurrent = voicebutton;
	    }
	}
	else
	{
		suppress_cursor = false
	}
}

if ("voice_timer" in self)
{
	if (voice_timer == 2000)
	{
		var current_voice = get_synced_var(player);
		if (current_voice = 1)
		{
			sound_play(sound_get("five_minutes"));
		}
	}
	voice_timer++;
}

#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);

if (is_cpu && "plate_bounds" in self) {
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
if ("plate_bounds" in self)
{
	var pb = plate_bounds, cs = cursors;
}
for (var i = 1; i <= 4; i++) {
    var c = cs[@i];
    var cx = get_instance_x(c);
    var cy = get_instance_y(c);
    if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) {
        return i;
    } 
}
return -1;