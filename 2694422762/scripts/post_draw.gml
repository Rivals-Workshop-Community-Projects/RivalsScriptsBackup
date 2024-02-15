var bar_x = x - 22;
var bar_y = y - char_height - 32 - hud_offset + 1;
var bar_width = 44;
var bar_height = 2;

if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
	if (attack == AT_TAUNT_2) {
		draw_set_halign(fa_center);
		draw_debug_text(x - 64 + (16 * spr_dir), y - 144, game_message);
		draw_set_halign(fa_left);
		
		if (menu == 1 || menu == 2) {
			for (var i = 0; i <= 4; i++) {
				var x_off = -64 + (16 * spr_dir);
				var y_off = -176 - (48 * i);
				if (player_on[i] || i == 0) {
					var value = hand_value(player_hand[i]);
					var message = player_game_id[i] == game_player ? "Your Hand" : get_player_name(i) + "'s Hand"; 
					if (i == 0)
						message = "Lucy's Hand"
					if (value > 21)
						message += " (BUSTED)";
					else {
						if ((player_game_id[i] == game_player && i > 0) || player_busted[i] || game_status == 2)
							message += " (" + string(value) + ")" 
						if (player_stayed[i] && game_status != 2) {
							message += " (STAYING)" 
						}
					}
					draw_set_halign(fa_center);
					draw_debug_text(round(x  - 64 + (16 * spr_dir)), round(y + y_off - 16), message);
					draw_set_halign(fa_left);
					if ((player_game_id[i] == game_player && i > 0) || player_busted[i] || game_status == 2) {
						var pHand = player_hand[i];
						for (var j = 0; j < array_length(player_hand[i]); j++) {
		    				draw_sprite_ext(sprite_get("blackjack_card"), pHand[j].name, round(x + x_off + (18 * j)), round(y + y_off), 1, 1, 0, c_white, 1);
						}
					}
					else {
						var pHand = player_hand[i];
						for (var j = 0; j < array_length(player_hand[i]); j++) {
		    				draw_sprite_ext(sprite_get("blackjack_card"), 0, round(x + x_off + (18 * j)), round(y + y_off), 1, 1, 0, c_white, 1);
						}
					}
				}
				
			}
		}
	}
}


if (card_charge == 3) {
	if (get_gameplay_time() % 60 <= 8) {
		gpu_set_fog(1, c_orange, 0, 1)
		    draw_sprite_ext(sprite_index, image_index, round(x + draw_x), round(y + draw_y), spr_dir, 1, spr_angle, c_white, 0.5);
		gpu_set_fog(0, 0, 0, 0)
	}
}

var bar_amount = blackjack_meter / (blackjack_meter_max);
blackjack_meter_lerp = lerp(blackjack_meter_lerp, bar_amount, 0.3)

var bar_color_amt = max(floor(bar_amount * 3), 0);
var bar_color = c_white;
if (blackjack_cooling_timer > 0) {
	bar_color = blackjack_meter_colors_cooling
}
else {
	if (bar_amount == 1) {
	    bar_color = blackjack_meter_colors_max[get_gameplay_time() % 12 < 4 ? 0 : 1]
	}
	else {
	    bar_color = blackjack_meter_colors[bar_color_amt]
	}
}

draw_sprite_ext(sprite_get("meter_back"), 0, x, y - char_height - 32 - hud_offset, 2, 2, 0, c_black, 1);
draw_rectangle_color(bar_x, bar_y, bar_x + (bar_width * blackjack_meter_lerp), bar_y + bar_height, bar_color, bar_color, bar_color, bar_color, false);

//Blackjack functions
#define hand_value(_hand)
var total = 0;
var is_ace = 0;

for (var i = 0; i < array_length(_hand); i++) {
    total += _hand[i].value;
    
    if (_hand[i].value == 1) {
        is_ace = 1;
    }
}

for (var j = 0; j < is_ace; j++) {
    if (total + 10 <= 21) {
        total += 10;
    }
}

return total;

#define get_player_name(_player) 
var name = "Lucy"
if (_player > 0)
    name = get_char_info(_player, INFO_STR_NAME);

var num_same_name = 1;
for (var i = 1; i <= 4; i++) {
    if (player_on[i] && i != _player) {
        var other_name = get_char_info(i, INFO_STR_NAME);
        if (name == other_name) {
            num_same_name ++;
        }
    }
}

if (num_same_name > 1) {
    name += " " + string(num_same_name)
}
return name;
#define draw_text_trans_outline(_x, _y, str, separ, w, xscale, yscale, angl, text_colour, outline_colour, alph)
for (i = - 1; i < 2; i++) for (j = -1; j < 2; j++) draw_text_ext_transformed_color(_x+i*2,_y+j*2,str,separ, w, xscale, yscale, angl, outline_colour, outline_colour, outline_colour, outline_colour, 1);
draw_text_ext_transformed_color(_x,_y,str,separ, w, xscale, yscale, angl, text_colour, text_colour, text_colour, text_colour, 1);