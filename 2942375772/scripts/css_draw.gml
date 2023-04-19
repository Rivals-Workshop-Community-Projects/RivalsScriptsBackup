var temp_x = floor(x + 8);
var temp_y = floor(y + 9);
var max_timer = 30;

if "current_alt" not in self {
    current_alt = 0;
    timer = max_timer;
}

var alt_name = [
    "Marti",
    "Blue",
    "Red",
    "Green",
    "Black and White",
    "Purple",
    "Dusty",
    "Grim Reaper",
    "Plessie",
    "Jockington",
    "Eidolon",
    "Elliana",
    "Charlie",
    "King",
    "Mech",
    "Rope Snake",
    "Amaya",
    "Najarala",
    "Dalamadur",
    "BLW",
    "FTL",
    ]

var current_player = get_player_color(player);

if current_alt != current_player {
    timer = 0;
    current_alt = current_player
}

draw_debug_text(temp_x + 10 + floor(ease_quartOut(40, 0, timer, max_timer)), temp_y+120,alt_name[current_player])
timer = min(max_timer, timer + 1);

draw_sprite(sprite_get("marti-icon"), 0, temp_x + 150, y+ 34)