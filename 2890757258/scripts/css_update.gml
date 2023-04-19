//	Supersonic's CPU Toggler script
//	put this at the VERY TOP of the file.
cpu_hover_update(); 

if ("sound_control" in self)
{
	if (sound_control > 0)
	{
		sound_control--;
	}
}

var cursedX = get_instance_x(cursor_id);
var cursedY = get_instance_y(cursor_id);

// player online
if (player == 0)
{ 
	var posX = 16;
	var posY = 48;
}

else
{
	//	if CPU offline
	if (get_player_hud_color(player) == 8421504)
	{ 	
		var posX = 58;
		var posY = 178;
	}
	
	//	if player offline
	else
	{ 	
		var posX = 74;
		var posY = 178;
	}
}

var muteBW 		= 30;
var muteBH 		= 26;
var muteXLim 	= x + posX;
var muteYLim 	= y + posY;

if (get_synced_var(player) >= 2) 
{
	set_synced_var(player, 0);
}

if ("sound_control" in self) && ("sound_cycle" in self)
{
	if ((cursedX > muteXLim) && (cursedX < (muteXLim + muteBW)) && (cursedY > muteYLim) && (cursedY < (muteYLim + muteBH)))
	{
		if (sound_cycle == 0)
		{
			sound_cycle = 1;
		}
		
		if (sound_cycle == 3)
		{
			sound_cycle = 4;
		}
		
		if (menu_a_pressed && sound_control == 0)
		{
			sound_cycle++;
			sound_control = 30;	// half-second cooldown between pressing the button or not
			
			if (get_synced_var(player) == 0)
			{
				set_synced_var(player, 1);
			} 
			
			else 
			{
				set_synced_var(player, 0);
			}
		
			sound_play(asset_get("mfx_input_key"));
		}
	}

	else
	{
		if (sound_cycle == 1)
		{
			sound_cycle = 0;
		}
		
		if (sound_cycle == 4)
		{
			sound_cycle = 3;
		}
	}

	if (sound_cycle == 2 && sound_control < 24)
	{
		sound_cycle = 3;
	}

	if (sound_cycle == 5 && sound_control < 24)
	{	
		sound_cycle = 0;
	}

	if (sound_control == 29)
	{
		if (get_synced_var(player) == 0)
		{
			sound_play(sound_get("css_select"));
		}
		
		if (get_synced_var(player) == 1)
		{
			sound_play(sound_get("css_mute"));
		}
	}
}

//	as always, #defines go at the bottom of the script.
#define cpu_hover_update()
var p 		= player;
var is_cpu 	= (get_player_hud_color(p) == 8421504);

if (is_cpu) 
{
    var pb = plate_bounds, cs = cursors;
    if (cpu_is_hovered) 
	{
        var c 		= cs[@cpu_hovering_player]
        cursor_id 	= c;
        var cx 		= get_instance_x(c),
            cy 		= get_instance_y(c);
		
        if (cpu_hover_time < 10) 
		{
			cpu_hover_time++;
		}
        
		if (cpu_color_swap_time < 5) 
		{
			cpu_color_swap_time++;
		}
        
		if (cx != clamp(cx, pb[0],pb[2]) || cy != clamp(cy, pb[1],pb[3])) 
		{
            cpu_is_hovered 	= false;
            c 				= cs[@p];
            cursor_id 		= c;
        }
    } 
	
	else 
	{
        var hplayer = get_new_hovering_player();
        
		if (cpu_hover_time > 0) 
		{
			cpu_hover_time--;
		}        
		
		if (hplayer != -1) 
		{
            cpuh_new_color = get_player_hud_color(hplayer);
            
			if (cpu_hover_time > 0) 
			{
                cpuh_prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } 
			
			else 
			{ 
				//	if the player indicator is not being displayed already
                cpuh_prev_color 	= cpuh_new_color;
                cpu_color_swap_time = 10;
            }
            
			cpu_is_hovered 			= true;
            cpu_hovering_player 	= hplayer;
            cursor_id 				= cs[@hplayer];
        }
    }
}

#define get_new_hovering_player()
var pb = plate_bounds, cs = cursors;
for (var i = 1; i <= 4; i++) 
{
    var c 	= cs[@i];
    var cx 	= get_instance_x(c);
    var cy 	= get_instance_y(c);
    
	if cx == clamp(cx, pb[@0], pb[@2]) && cy == clamp(cy, pb[@1], pb[@3]) 
	{
        return i;
    } 
}
return -1;