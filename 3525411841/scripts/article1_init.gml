// Article 1 -- Player Cursor
sprite_index = sprite_get("player_cursor");
cursor_speed = 8;
clicked = false;
enabled = true;
selected_item = -1;
initialized = false;
held_item_sprite = noone;
img_index = 0;
held_item_direction = 1;
held_item_rotation = 0;
input_special = false;
input_parry = false;
depth = -9;
alts =
[
    "jock",
    "brad",
    "poet",
    "rag",
    "nerd",
    "panda",
    "tux",
    "ayala",
    "rabbit"
];