var real_player = (room == asset_get("network_char_select") && object_index != oTestPlayer) ? 0 : player;
var alt_palette = get_player_color( real_player );

if "introTime" not in self exit;

shader_end();
switch (alt_palette){
	case 0:
		draw_debug_text(xL, yL, "The Vigilante");
	break;
	case 1:
		draw_debug_text(xL, yL, "The Outlaw");
	break;
	case 2:
		draw_debug_text(xL, yL, "MM8BDM Blue");
	break;
	case 3:
		draw_debug_text(xL, yL, "Snotty");
	break;
	case 4:
		draw_debug_text(xL, yL, "Gumbob");
	break;
	case 5:
		draw_debug_text(xL, yL, "Caramel Sheriff");
	break;
	case 6:
		draw_debug_text(xL, yL, "Peppino");
	break;
	case 7:
		draw_debug_text(xL, yL, "Mr. Stick");
	break;
	case 8:
		draw_debug_text(xL, yL, "Snick");
	break;
	case 9:
		draw_debug_text(xL, yL, "John Gutter");
	break;
	case 10:
		draw_debug_text(xL, yL, "White Rancher");
	break;
	case 11:
		draw_debug_text(xL, yL, "Anton Blast");
	break;
	case 12:
		draw_debug_text(xL, yL, "Master Belch");
	break;
	case 13:
		draw_debug_text(xL, yL, "The Golden Bullet");
	break;
	case 14:
		draw_debug_text(xL, yL, "Arizonan Cheese");
	break;
	case 15:
		draw_debug_text(xL, yL, "Tricky Treat");
	break;
	case 16:
		draw_debug_text(xL, yL, "Fucked up Cheese");
	break;
	case 17:
		draw_debug_text(xL, yL, "Spongy Cheese");
	break;
	case 18:
		draw_debug_text(xL, yL, "Chocolate Cheese");
	break;
	case 19:
		draw_debug_text(xL, yL, "War Machine");
	break;
	case 20:
		draw_debug_text(xL, yL, "Dandy Candy");
	break;
	case 21:
		draw_debug_text(xL, yL, "Transheriff");
	break;
	case 22:
		draw_debug_text(xL, yL, "Gender Avenger");
	break;
	case 23:
		draw_debug_text(xL, yL, "Abyss");
	break;
	case 24:
		draw_debug_text(xL, yL, "GBA");
	break;
	case 25:
		draw_debug_text(xL, yL, "Wanted Poster");
	break;
	case 26:
		draw_debug_text(xL, yL, "Quick Draw");
	break;
	case 27:
		draw_debug_text(xL, yL, "Completely Normal Cheese");
	break;

}


if (introTime != 23){
	introTime++;
	
	draw_sprite_ext(sprite_get("dynamiteExplosion"), introTime / 3, x - 18, y - 35, 4, 4, 0, -1, 1);
}

if (get_player_hud_color(player) != 8421504){
	draw_sprite(sprite_get("maskCSS"), cur_skin, x, y);
	draw_sprite(sprite_get("skinButton"), cur_skin * 3 + button_state, x + button_x, y + button_y);
}