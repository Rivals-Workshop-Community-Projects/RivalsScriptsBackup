//Staright up blackjack bro
#macro GAME_STARTING 0
#macro GAME_GOING 1
#macro GAME_ENDING 2

var is_online = false //get_player_hud_color(player) == 6612290;

//Game and window logic
if (window == 1 && window_timer == 1) {
    init_game();
    menu = 0;
}

if (window > 3 && window <= 5) {
    if (menu == 0 || menu == 2) {
        
        var total = 1;
        if (is_online) {
	        with (oPlayer) {
	            if (distance_to_point(other.x, other.y - 32) <= 128 && id != other.id && !("temp_level" in self))
	            total ++;
	        }
        }
        if (!is_online) {
            game_message = "---BLACKJACK---
Attack - Start Game 
Special - Quit";
        } 
        else {
            game_message = "---BLACKJACK---
Attack - Start Game with " + string(total) + " players
Special - Quit";
        }
        if (attack_pressed && menu_cooldown == 0) {
            sound_play(asset_get("mfx_confirm"));
            menu = 1;
            menu_cooldown = 10;
            new_game();
        }
        if (special_pressed && menu_cooldown == 0) {
            sound_play(asset_get("mfx_back"));
            menu = -1;
            window = 8;
            window_timer = 0;
        }
    }
    
    if (menu == 1) {
        if (current_player == game_player.player && !player_stayed[current_player] && !player_busted[current_player]) {
            game_message = "Your turn...
Attack - Hit
Special - Stay";
            if (game_player.attack_pressed && menu_cooldown == 0) {
            	menu_cooldown = 10;
                sound_play(asset_get("mfx_change_color"));
                hit(current_player);
                check_player_value(current_player);
                increment_player();
            }
            if (game_player.special_pressed  && menu_cooldown == 0) {
                sound_play(asset_get("mfx_confirm"));
            	menu_cooldown = 10;
                stay(current_player);
                check_player_value(current_player);
                increment_player();
            }
        }
        else {
            if (current_player == 0) {
            	if (window < 6) {
	            	if (current_player == 0 && menu_cooldown == 0 && !get_players_done()) {
					    window = 5;
					    window_timer = 0;
					    menu_cooldown = 10;
					}
					if (window = 5) menu_cooldown = 10;
	                game_message = "Lucy's turn..."
	                if (window == 5 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
	                    var choice = dealer_decide();
	                    if (choice == 0) 
	                        hit(current_player);
	                    else
	                        stay(current_player);
	                    check_player_value(current_player);
	                    increment_player();
	                }
            	}
            }
            else {
                game_message = get_player_name(current_player) + "'s turn...";
	            if (player_game_id[current_player].attack_pressed && menu_cooldown == 0) {
	            	menu_cooldown = 10;
	                sound_play(asset_get("mfx_change_color"));
	                hit(current_player);
	                check_player_value(current_player);
	                increment_player();
	            }
	            if (player_game_id[current_player].special_pressed  && menu_cooldown == 0) {
	                sound_play(asset_get("mfx_confirm"));
	            	menu_cooldown = 10;
	                stay(current_player);
	                check_player_value(current_player);
	                increment_player();
	            }
            }
        }
    }
}

if (window == 6) {
    if (window_timer == 1) {
        sound_play(asset_get("mfx_unstar"));
    }
    game_message = "Lucy wins...";
    if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
        menu = 2;   
    }
}

if (window == 7) {
	if (!draw_game) {
	    if (window_timer == 1) {
	        sound_play(asset_get("mfx_levelup"));
	    }
	    game_message = player_total <= 2 ? "You win!" :  get_player_name(current_player) + " wins!";
	}
	else {
	    if (window_timer == 1) {
	        sound_play(asset_get("mfx_unstar"));
	    }
	    game_message = "Tie game...";
	}
    if (window_timer >= get_window_value(attack, window, AG_WINDOW_LENGTH) - 1) {
        menu = 2;   
    }
}
    
if (menu >= 1) {
	var on_p = 0;
    for (var i = 0; i <= 4; i++) {
        if (player_on[i]) {
            if (player_game_id[i] != id) {
            	on_p ++;
            	var off_x = 96 * spr_dir;
            	var dist_x = 96;
            	var alignment_x = off_x + lerp(-dist_x/2, dist_x/2, on_p / player_total);
            	player_game_id[i].x = x + alignment_x;
            	player_game_id[i].y = y;
                with (player_game_id[i]) {
                	state = PS_PRATLAND;
                	state_timer = 1;
                	spr_dir = other.spr_dir * -1;
                }
            }
        }
    }
}

if (menu_cooldown > 0) {
	menu_cooldown --;
}

#define init_card(_suit, _value, _name)
///Initialize cards
return {
    suit : _suit,
    value : _value,
    name : _name
}

#define init_game()
///Initialize all variables

//Player cards
//0 = the dealer (Lucy herself)
player_total = 0;
for (var i = 0; i <= 4; i++) {
    player_on[i] = false;
    player_game_id[i] = id;
    player_hand[i] = array_create(0);
    player_losses[i] = 0;
    player_wins[i] = 0;
    player_stayed[i] = false;
    player_busted[i] = false;
}

deck = [];

card_values = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10];
card_names = ["Ace", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Jack", "Queen", "King"]

game_status = GAME_STARTING;
games_total = 0
draw_game = false

//Desynced player
game_player = noone;

current_player = 0;

//Menu Variables
menu = 0;
menu_cooldown = 0;
game_message = "";

win_player = 0;

#define new_game() 
var is_online = false //get_player_hud_color(player) == 6612290;

for (var i = 0; i <= 4; i++) {
    player_hand[i] = array_create(0);
    player_losses[i] = 0;
    player_wins[i] = 0;
    player_stayed[i] = false;
    player_busted[i] = false;
}

deck = init_deck();

game_status = GAME_GOING;
game_player = noone;
with oPlayer if get_player_hud_color(player) == 6612290 other.game_player = id;
if !instance_exists(game_player)
	game_player = id;
draw_game = false;
player_on[0] = true;
player_total = 2;
player_on[player] = true;
player_game_id[player] = id;
if (is_online) {
	with (oPlayer) {
    if (is_player_on(player)) {
	        if (distance_to_point(other.x, other.y - 32) <= 128 && id != other.id && !("temp_level" in self)) {
	            other.player_on[player] = true;
	            other.player_total++;
	            other.player_game_id[player] = id;
	        }
        }
    }
}
current_player = 0;
window = 5;
window_timer = 0;
win_player = 0;

#define init_deck()
///New deck
var deck_array = [];
for (var i = 0; i < 4; i++) {
    for (var j = 0; j < array_length(card_values); j++) {
        var val = card_values[j];
        if (val > 10) val = 10;
        
        var name = j + 1;
        
        var newCard = init_card(i, val, name);
        
        array_push(deck_array, newCard);
    }
}

deck_array = shuffle_deck(deck_array);
return deck_array;

#define hit(_player)
//Draw a card from the deck.
array_push(player_hand[_player], deck[0]);
print("Pulled a " + string(deck[0].name))
deck = array_pop(deck, 0);
check_player_value(_player)

#define stay(_player)
player_stayed[_player] = true;

#define bust(_player) 
player_busted[_player] = true;
player_losses[_player]++;

#define increment_player()
if (!get_players_done()) {
    current_player++;
	current_player %= player_total;
	while (!player_on[current_player] || player_stayed[current_player] || player_busted[current_player]) {
	    current_player++;
		current_player %= player_total;
	}
	
	if (array_length(player_hand[current_player]) <= 0) {
	    hit(current_player);
	}
}
else {
	check_values_endgame();
}

#define dealer_decide() 
var advice = 0;

var phand = player_hand[0]
var total_value = hand_value(phand);

var ai_random_hit = random_func(2, 100, true) < 30;
var ai_random_stay = random_func(2, 100, true) < 70;

if (total_value <= 11) advice = 0;
else if (total_value >= 12 && total_value <= 16) advice = ai_random_hit ? 1 : 0;
else if (total_value >= 17 && total_value <= 21 ) advice = ai_random_stay ? 1 : 0;
else if (total_value >= 19) advice = 1;

return advice;

#define check_player_value(_player)
var phand = player_hand[_player]
var total_value = hand_value(phand);

if (total_value > 21) {
    bust(_player);
}

#define check_values_endgame()

if (get_players_done()) {
    game_status = GAME_ENDING;
    for (var i = 0; i <= 4; i++) {
        check_player_value(i);
    }
    
    var winning_player = 0;
    var tied_winnings = 0;
	for (var i = 0; i <= 4; i++) {
		if (player_on[i]) {
	        var phand = player_hand[i]
	        var total_value = hand_value(phand);
	        
	        var wphand = player_hand[winning_player]
	        var wtotal_value = hand_value(wphand);
	        
	        if (wtotal_value < total_value || wtotal_value > 21) {
	        	if (!player_busted[i]) {
		            winning_player = i
		        }
	        }
	        if (wtotal_value == total_value || (wtotal_value > 21 && total_value > 21)) {
	            tied_winnings++;
	        }
		}
    }
    
    if (tied_winnings == player_total) {
        draw_game = true;
        window = 7;
        window_timer = 0;
    }
	else {
        if (winning_player == 0) {
            window = 6;
            window_timer = 0;
        }
        else {
            window = 7;
            window_timer = 0;
        }
        player_wins[winning_player] ++;
        win_player = winning_player;
    }
}

#define get_players_done()
var stayed_players = 0;
var busted_players = 0;
for (var i = 0; i <= 4; i++) {
    if (player_stayed[i]) {
        stayed_players++;
    }
	if (player_busted[i]) {
        busted_players++;
    }
}

return busted_players >= player_total - 1 || (stayed_players + busted_players) >= player_total;

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

#define shuffle_deck(_array) 
var shuffled = [];
var arr_l = array_length(_array);
var random_index = 0;
var current_index = arr_l;

var i = 0;
while (current_index != 0) {
	i++;
    random_index = round(random_func(i, current_index, true));
    current_index --;
    array_push(shuffled, _array[random_index]);
}
return shuffled;

#define array_pop(_array, _index) 
var popped = [];
var arr_l = array_length(_array);
for (var i = 0; i < arr_l; i++) {
    if(i != _index) {
        array_push(popped, _array[i]);
    }
}

return popped;

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