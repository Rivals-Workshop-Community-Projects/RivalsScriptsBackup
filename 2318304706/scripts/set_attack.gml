if (attack == AT_USPECIAL && free) {attack = AT_USPECIAL_2;}

if (attack == AT_TAUNT && get_player_color(player) == 16 && up_down - down_down >= 0 && phone_practice == false) {attack = AT_TAUNT_2;}
if (attack == AT_TAUNT && get_player_color(player) == 16 && up_down - down_down > 0 && phone_practice == true) {attack = AT_TAUNT_2;}

muno_event_type = 2;
user_event(14);