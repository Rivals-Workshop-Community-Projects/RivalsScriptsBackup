//article2_init

initi = 0;

idle_sprite = sprite_get("target_idle");
break_sprite = sprite_get("target_break");
build_sprite = sprite_get("target_spawn");

sprite_index = build_sprite;
mask_index = sprite_index;

state = 0;
state_timer = 0;
full_timer = 0;
stay_timer = 0;
can_be_grounded = false;
ignores_walls = false;
free = true;
uses_shader = true;

build_time = [12,60,30];

playa_id = player_id;

target_attack = 0;
target_hbox = 0;
from_ou = false;
charge_strong = false;
hit_count = 1;
