//article_platform_init
// geyser

can_be_grounded = false;
ignores_walls = true;
uses_shader = false;


state = 0
// 0 = rising
// 1 = idle

last_state = 0

state_timer = 0;

spr_dir = player_id.spr_dir;


sprite_index = sprite_get("geyser");

image_spd = 0.2;

x_rising = x;
y_rising = y; 
x = -1000
y = -1000 // all that is so the platform isn't actually there while rising

rising_spd = 40;


destroyed = false;