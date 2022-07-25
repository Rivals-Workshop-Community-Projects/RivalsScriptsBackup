spawn_timer = 424; //multiple of 9, plus one. so the counter keeps increasing even if no one does anything.
spawn_timer_default = 424;
present_powerups = 0;
play_negative_sfx = false;

past_powerup = 0;
next_powerup = 3;

past_position = 0;
next_position = 1;

x_spawn = 0;
y_spawn = 0;

//random numbers

random_number_1 = 0;
random_number_2 = 0;
players_x = 0;
players_damage = 0;

// position stuff

midpoint = room_width/2;
tile = 32;
quarter = 160;
ground_level = 512;
float_height = 30;

//cordinates

x_1 = midpoint;
y_1 = ground_level - float_height;

x_2 = midpoint - 6*tile;
y_2 = ground_level - float_height;

x_3 = midpoint + 6*tile;
y_3 = ground_level - float_height;

x_4 = midpoint - 6*tile;
y_4 = ground_level - 3*tile - float_height;

x_5 = midpoint + 6*tile;
y_5 = ground_level - 3*tile - float_height;

x_6 = midpoint;
y_6 = ground_level - 5*tile - float_height;

x_7 = midpoint - 6*tile;
y_7 = ground_level - 7.5*tile - float_height;

x_8 = midpoint + 6*tile;
y_8 = ground_level - 7.5*tile - float_height;

x_9 = midpoint - 13*tile;
y_9 = ground_level - 3*tile;

x_10 = midpoint + 13*tile;
y_10 = ground_level - 3*tile;

x_11 = midpoint;
y_11 = ground_level - 9*tile - float_height;

x_12 = midpoint - 11.5*tile;
y_12 = ground_level - 8*tile;

x_13 = midpoint + 11.5*tile; 
y_13 = ground_level - 8*tile;

x_14 = midpoint - 13*tile;
y_14 = ground_level + 3*tile;

x_15 = midpoint + 13*tile;
y_15 = ground_level + 3*tile;

x_16 = midpoint - 3*tile;
y_16 = ground_level - float_height; 

x_17 = midpoint + 3*tile; 
y_17 = ground_level - float_height;

x_18 = midpoint - 9*tile;
y_18 = ground_level - float_height;

x_19 = midpoint + 9*tile;
y_19 = ground_level - float_height;

// stat ct_boosts per player

// with(oPlayer) {
// 	ct_glide = 0;
// 	ct_offense = 0;
// 	ct_hp = 0;
// 	ct_weight = 0;
// 	ct_boost = 0;
// 	ct_turn = 0;
// 	ct_defense = 0;
// 	ct_charge = 0;
// 	ct_topspeed = 0;
// }

// p1_ct_glide = 0;
// p1_ct_offense = 0;
// p1_ct_hp = 0;
// p1_ct_weight = 0;
// p1_ct_boost = 0;
// p1_ct_turn = 0;
// p1_ct_defense = 0;
// p1_ct_charge = 0;
// p1_ct_topspeed = 0;

// p2_ct_glide = 0;
// p2_ct_offense = 0;
// p2_ct_hp = 0;
// p2_ct_weight = 0;
// p2_ct_boost = 0;
// p2_ct_turn = 0;
// p2_ct_defense = 0;
// p2_ct_charge = 0;
// p2_ct_topspeed = 0;

// p3_ct_glide = 0;
// p3_ct_offense = 0;
// p3_ct_hp = 0;
// p3_ct_weight = 0;
// p3_ct_boost = 0;
// p3_ct_turn = 0;
// p3_ct_defense = 0;
// p3_ct_charge = 0;
// p3_ct_topspeed = 0;

// p4_ct_glide = 0;
// p4_ct_offense = 0;
// p4_ct_hp = 0;
// p4_ct_weight = 0;
// p4_ct_boost = 0;
// p4_ct_turn = 0;
// p4_ct_defense = 0;
// p4_ct_charge = 0;
// p4_ct_topspeed = 0;

meter_x_1 = -1000;
meter_y_1 = -10000;
meter_x_2 = -1000;
meter_y_2 = -10000;
meter_x_3 = -1000;
meter_y_3 = -10000;
meter_x_4 = -1000;
meter_y_4 = -10000;

multiplayer_num = 0 

//hp_plus = hit_fx_create( sprite_get( "hp_plus" ), 30 );


hp_icon = sprite_get("hp_icon")
weight_icon = sprite_get("weight_icon")
boost_icon = sprite_get("boost_icon")
glide_icon = sprite_get("glide_icon")
offense_icon = sprite_get("offense_icon")
defense_icon = sprite_get("defense_icon")
turn_icon = sprite_get("turn_icon")
charge_icon = sprite_get("charge_icon")
top_speed_icon = sprite_get("top_speed_icon")