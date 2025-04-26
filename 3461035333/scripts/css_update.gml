if ("css_anim_time" not in self || "sage_display_pos" not in self) exit;

css_anim_time ++;
alt_cur = get_player_color(player);
alt_fix = player; //keep this line, on the online css the player is actually player 0

//these values need to be updated every frame lol
icon_x_pos = x + 174;
icon_y_pos = y + 108;
preview_x = floor(x+10);
preview_y = floor(y+10);

if (alt_prev != alt_cur)
{
    css_anim_time = 0;
    alt_prev = alt_cur;
}

//button stuff
var is_cpu = (get_player_hud_color(player) == 8421504);
var cursor_x = get_instance_x(cursor_id);
var cursor_y = get_instance_y(cursor_id);

//This block sets the cursor_id to the cursor of the player hovering the css plate.
//this SHOULD let you read inputs from that player's cursor (but at the moment, this doesn't work)
if (is_cpu) {
    if (cpu_is_hovered) {
        cursor_id = cursors[cpu_hovering_player];
        
        cursor_x = get_instance_x(cursor_id);
        cursor_y = get_instance_y(cursor_id);
        
        if cpu_hover_time < 10 cpu_hover_time++;
        if cpu_color_swap_time < 5 cpu_color_swap_time++;
        if (cursor_x != clamp(cursor_x, plate_bounds[0],plate_bounds[2]) || cursor_y != clamp(cursor_y, plate_bounds[1],plate_bounds[3])) {
            cpu_is_hovered = false;
            cursor_id = cursors[player];
        }
    } else {
        var hplayer = get_new_hovering_player()
        if cpu_hover_time > 0 cpu_hover_time--;
        if (hplayer != -1) {
            
            new_color = get_player_hud_color(hplayer);
            if cpu_hover_time > 0 {
                prev_color = get_player_hud_color(cpu_hovering_player);
                cpu_color_swap_time = 0;
            } else {
                prev_color = new_color;
                cpu_color_swap_time = 10;
            }
            cpu_is_hovered = true;
            cpu_hovering_player = hplayer;
            cursor_id = cursors[hplayer];
        }
    }
}
else
{
    cursor_id = cursors[player];
    if cpu_hover_time > 0 cpu_hover_time--;
}
//You should not need to touch any of the above code.
//All of *YOUR* CSS code should be BELOW HERE (and above the #defines ofc)

if (instance_exists(cursor_id))
{
    if (cursor_x > sage_display_pos[0] && cursor_x < sage_display_pos[2] && cursor_y > sage_display_pos[1] && cursor_y < sage_display_pos[3]) //lanugage settings
    {
        if (press_delay == 0) sage_display_button_state = 1;
        suppress_cursor = true;
        if (menu_a_pressed)
        {
            cur_sage_display++;
            if preview_idle == sprite_get("sage_idle") preview_idle = sprite_get("idle") else preview_idle = sprite_get("sage_idle");
            css_anim_time = 0;
            update_sync_var();
            if cur_sage_display % 2 == 0 // Sage
			{
				sound_play(asset_get("sfx_ori_charged_flame_release"));
			}
			else // Not sage
			{
				sound_play(asset_get("sfx_ori_spirit_flame_1"));
			}
        	//sound_play(asset_get("sfx_ori_spirit_flame_1"));
            press_delay = 3;
            sage_display_button_state = 2;
        }
    }
    else
    {
        sage_display_button_state = 0;
        suppress_cursor = false;
    }
}


//just so the button down will stay for a bit
if (press_delay > 0)
{
    if (sage_display_button_state == 2) sage_display_button_state = 2;
    press_delay --;
}

//alt outlines
if (alt_cur == 14) preview_line_color = $0f380f;
else preview_line_color = $000000;

// Colors palettes exceptions 
// The Reservist
if get_player_color( player ) == 18
{
	if cur_sage_display % 2 == 0 // Sage
	{
		set_color_profile_slot( 18, 0, 202, 66, 48 ); //hair + glaze
		set_article_color_slot( 0, 202, 66, 48 ); //hair + glaze
	}
	else // Not sage
	{
		set_color_profile_slot( 19, 0, 50, 44, 43 ); //hair + glaze
		set_article_color_slot( 0, 50, 44, 43 ); //hair + glaze
	}
}
// Hotshot for hire
if get_player_color( player ) == 19
{
	if cur_sage_display % 2 == 0 // Sage
	{
		set_color_profile_slot( 19, 0, 181, 13, 22 ); //hair + glaze
		set_color_profile_slot( 19, 3, 255, 203, 150 ); //clothes
		set_color_profile_slot( 19, 4, 70, 49, 55 ); //headgear
		set_color_profile_slot( 19, 5, 255, 203, 150 ); //zipper + sleeves
		
		set_article_color_slot( 0, 181, 13, 22 ); //hair + glaze
		set_article_color_slot( 3, 255, 203, 150 ); //clothes
		set_article_color_slot( 4, 53, 25, 30 ); //headgear
		set_article_color_slot( 5, 255, 203, 150 ); //zipper + sleeves
	}
	else // Not sage
	{
		set_color_profile_slot( 19, 0, 255, 203, 150 ); //hair + glaze
		set_color_profile_slot( 19, 3, 156, 0, 12 ); //clothes
		set_color_profile_slot( 19, 4, 70, 49, 55 ); //headgear
		set_color_profile_slot( 19, 5, 216, 180, 183 ); //zipper + sleeves
	
		set_article_color_slot( 0, 255, 203, 150 ); //hair + glaze
		set_article_color_slot( 3, 156, 0, 12 ); //clothes
		set_article_color_slot( 4, 97, 71, 81 ); //headgear
		set_article_color_slot( 5, 216, 180, 183 ); //zipper + sleeves
	}
}

#define update_sync_var
{
    synced_vars = [cur_sage_display];
    synced_number = generate_var_chunk(synced_vars);

    set_synced_var(player, synced_number);
}
#define generate_var_chunk(var_array)
{
    // chunk format:
    // 4 bits per option
    var chunk = 0;
    //set specials from array, doing it backwards tho. i read it right to left in init
    var len = array_length(var_array)-1
    for (var i = len; i >= 0; i--) {
        //print(`${i} = ${var_array[i]}`); //debug print woo
        if (i != len)
            chunk = chunk << 4; //bitshift left 4 to make room for the next value
        chunk += var_array[i]; //add the special's value
    }
    return real(chunk);
}

//CPU check by supersonic
#define get_new_hovering_player
{
        for (var i = 1; i <= 4; i++) {
        var cx = get_instance_x(cursors[i]);
        var cy = get_instance_y(cursors[i]);
        if cx == clamp(cx, plate_bounds[0],plate_bounds[2]) && cy == clamp(cy, plate_bounds[1],plate_bounds[3]) {
            return i;
        }
    }
    return -1;
}