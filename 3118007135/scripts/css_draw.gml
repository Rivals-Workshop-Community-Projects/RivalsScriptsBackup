#region // Variables
var color = get_player_color(player);

var css_ex_x = x + 176;
var css_ex_y = y + 110;
#endregion

#region // RIVALS 2 TOGGLE
cpu_hover_update();

//player select button

var player_button_pos = 
[
    x + player_button_x,
    y + player_button_y,
    x + player_button_x+30,
    y + player_button_y+26,
]

var player_choice_index = player_choice * 3;

cursor_x = get_instance_x(cursor_id);
cursor_y = get_instance_y(cursor_id);

if (cursor_x > player_button_pos[0] && cursor_x < player_button_pos[2] && cursor_y > player_button_pos[1] && cursor_y < player_button_pos[3] && !instance_exists(oTestPlayer))
{
   if (menu_a_pressed)
   {
        player_choice_index++;
        sound_play(asset_get("mfx_option"));
        player_choice++;
        if player_choice > 1{
        	player_choice = 0;
        }
   }
   player_choice_index++;
}

draw_sprite_ext(sprite_get("player_button"), player_choice_index, player_button_pos[0], player_button_pos[1], 1, 1, 0, -1, 1);

cpu_hover_draw(); 
#endregion

#region // CSS Details
switch(color){
	case 12:
		draw_sprite_ext(sprite_get("css_icons"), 2, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 13:
		draw_sprite_ext(sprite_get("css_icons"), 1, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 14:
		draw_sprite_ext(sprite_get("css_icons"), 3, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
	case 26:
		draw_sprite_ext(sprite_get("css_icons"), 0, css_ex_x, css_ex_y, 1, 1, 0, c_white, 1);
		break;
}
#endregion

if player_choice == 1{
	draw_debug_text(x + 14, css_ex_y+12, "Rivals 2 Mode");
	draw_debug_text(x + 14, css_ex_y+28, "Work-In-Progress");
}
#define cpu_hover_draw()
if (cpu_hover_time > 0) {
    var prog = min(cpu_hover_time/10, 1);
    var colprog = min(cpu_color_swap_time/5, 1);
    var col = merge_color(cpuh_prev_color, cpuh_new_color, colprog);
    draw_sprite_ext(cpu_hover_sprite, 0, x - 4, y - 6, 2, 2, 0, col, prog);
    draw_set_alpha(prog);
    draw_debug_text(plate_bounds[2]-17, plate_bounds[3]+1, `P${cpu_hovering_player}`);
    draw_set_alpha(1);
}

set_synced_var(player, player_choice);

#define cpu_hover_update()
var p = player;
var is_cpu = (get_player_hud_color(p) == 8421504);