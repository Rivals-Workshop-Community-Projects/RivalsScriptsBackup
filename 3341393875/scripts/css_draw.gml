if "introTime" not in self exit;

stance_select = get_synced_var(player);

var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );


if (get_player_hud_color(player) != 8421504){
	draw_sprite_ext(stance_select == 0? sprite_get("charselectpface"):sprite_get("charselectphead"), 0, x + 8, y + 8, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("css_switch"), clamp(css_button_timer / 4, 0, 3) + ((1 - stance_select) * 4), x + css_button[0] + css_button_draw_offset[0], y + css_button[1] + css_button_draw_offset[1], 1, 1, 0, c_white, 1);
}

shader_end();
switch (alt_palette){
	case 0:
		draw_debug_text(xL, yL, "Pizzaface & Pizzahead");
	break;
	case 1:
		draw_debug_text(xL, yL, "Pesky Pepperoni");
	break;
	case 2:
		draw_debug_text(xL, yL, "Loud Fellow");
	break;
	case 3:
		draw_debug_text(xL, yL, "Impersonator");
	break;
	case 4:
		draw_debug_text(xL, yL, "Greedy Unlocker");
	break;
	case 5:
		draw_debug_text(xL, yL, "It's... Snotty");
	break;
	case 6:
		draw_debug_text(xL, yL, "Painting Pepper");
	break;
	case 7:
		draw_debug_text(xL, yL, "Sweet Alternative");
	break;
	case 8:
		draw_debug_text(xL, yL, "Pizzice");
	break;
	case 9:
		draw_debug_text(xL, yL, "Pumpkin Pie");
		draw_sprite_ext(sprite_get("boo"), 0, x - 30, y - 32, 1, 1, 0, c_white, 1);
	break;
	case 10:
		draw_debug_text(xL, yL, "Party Pizza");
	break;
	case 11:
		draw_debug_text(xL, yL, "Final Hallway");
	break;
	case 12:
		draw_debug_text(xL, yL, "Dead Pizza");
	break;
	case 13:
		draw_debug_text(xL, yL, "Forgotten");
	break;
	case 14:
		draw_debug_text(xL, yL, "Pineapple?!");
	break;
	case 15:
		draw_debug_text(xL, yL, "Left To Rot");
	break;
	case 16:
		draw_debug_text(xL, yL, "Grandpizza");
	break;
	case 17:
		draw_debug_text(xL, yL, "Fast Food");
	break;
	case 18:
		draw_debug_text(xL, yL, "Seasonal");
	break;
	case 19:
		draw_debug_text(xL, yL, "P-izza");
		draw_sprite_ext(sprite_get("p"), 0, x - 30, y - 32, 1, 1, 0, c_white, 1);
	break;
	case 20:
		draw_debug_text(xL, yL, "Sour Cream");
	break;
	case 21:
		draw_debug_text(xL, yL, "Silver Slice");
	break;
	case 22:
		draw_debug_text(xL, yL, "Golden Wheel");
		draw_sprite_ext(sprite_get("s"), 0, x - 30, y - 32, 1, 1, 0, c_white, 1);
	break;
	case 23:
		draw_debug_text(xL, yL, "Sketched");
	break;
	case 24:
		draw_debug_text(xL, yL, "Shadowed");
	break;
	case 25:
		draw_debug_text(xL, yL, "Rainbow!");
	break;
	case 26:
		draw_debug_text(xL, yL, "Double Rainbow!");
	break;
	case 27:
		draw_debug_text(xL, yL, "Random. Changes in-game!");
	break;
	case 28:
		draw_debug_text(xL, yL, "Classic Style");
	break;
}

/*
if (introTime != 23){
	introTime++;
	
	draw_sprite_ext(sprite_get("dynamiteExplosion"), introTime / 3, x - 18, y - 35, 4, 4, 0, -1, 1);
}*/

