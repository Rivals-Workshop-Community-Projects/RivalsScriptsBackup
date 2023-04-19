confirm_snd = asset_get("mfx_confirm");
        cancel_snd = asset_get("mfx_back");

var cx = get_instance_x(cursor_id);
var cy = get_instance_y(cursor_id);



//resets the alt on alt changing
if (alt != get_player_color(player)) {
        subcolor = 0;
        set_synced_var( player, 0)
}

alt = get_player_color(player);


///OKAY THIS FUCKING WORKS RIGHT HERE

if (get_player_color(player) == 26 || get_player_color(player) == 27 || get_player_color(player) == 25) {

var button_hovered = point_in_rect(cx, cy, 
    x+80-(string_width(get_player_name(player))/2),
    y+77*2+1,
    x+80+14+(string_width(get_player_name(player))),
    y+(79+6)*2+1)
    
}    

   // var alt;
    
if button_hovered {
    suppress_cursor = true;
    if menu_a_pressed {
        subcolor += 1;
        set_synced_var( player, subcolor)
        sound_play(subcolor ? confirm_snd : cancel_snd);
        //flash_timer = dat.flash_time;
    }
}






///FUCK HOW DO I CODE THIS



alts_25 = [28, 29]
alts_26 = [ 31, 32, 33, 34, 35]
alts_27 = [27, 34]


if (get_player_color(player) == 26 || get_player_color(player) == 27 || get_player_color(player) == 25) {
	
	if (alt = 25) {
		
		set_synced_var(player, get_synced_var(player)%2)
	    alt_to_reference = alts_25[get_synced_var(player)]
	    
	}
	
	if (alt = 26) {
		set_synced_var(player, get_synced_var(player)%5)
	    alt_to_reference = alts_26[get_synced_var(player)]
	}
	
	if (alt = 27) {
		set_synced_var(player, get_synced_var(player)%2)
	    alt_to_reference = alts_25[get_synced_var(player)]
	}
	
	
	
	for (var i = 0; i < 8; i++) {
    var r = get_color_profile_slot_r(alt_to_reference, i),
        g = get_color_profile_slot_g(alt_to_reference,i),
        b = get_color_profile_slot_b(alt_to_reference,i)
    set_color_profile_slot(get_player_color(player), i ,r,g,b);
}
	
}



print_debug(subcolor)



























///OKAY THIS FUCKING WORKS RIGHT HERE
/*

var button_hovered = point_in_rect(cx, cy, 
    x+80-(string_width(get_player_name(player))/2),
    y+77*2+1,
    x+80+14+(string_width(get_player_name(player))),
    y+(79+6)*2+1)
    
    
   // var alt;
    prev_alt = get_player_color(player)
    
if button_hovered {
    suppress_cursor = true;
    if menu_a_pressed {
        subcolor += 1;
        set_synced_var( player, subcolor)
        sound_play(subcolor ? confirm_snd : cancel_snd);
        //flash_timer = dat.flash_time;
    }
}



//resets the alt on alt changing
if (alt != prev_alt) {
        subcolor = 0;
}


set_synced_var( player, subcolor)

alt = get_player_color(player);


///FUCK HOW DO I CODE THIS

if ((get_synced_var(player) == 1)) {
	
	
	
	for (var i = 0; i < 8; i++) {
    var r = get_color_profile_slot_r(alt,i),
        g = get_color_profile_slot_g(alt,i),
        b = get_color_profile_slot_b(alt,i)
    set_color_profile_slot(get_player_color(player), 1 ,r,g,b);
    set_color_profile_slot(get_player_color(player), 2,r,g,b);
}
	
}



print_debug(subcolor)
*/

#define point_in_rect(px,py,x1,y1,x2,y2)
return (px >= x1 && px <= x2) && (py >= y1 && py <= y2)