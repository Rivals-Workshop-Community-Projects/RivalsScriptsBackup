//article3_init - damage numbers

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = 0;
state_timer = 0;

alt_cur = get_player_color(player);
if (alt_cur == 6 || alt_cur == 7) alt_mc = true;
else alt_mc = false;

damage = 0; //the actual damage values
move = 0; //makes it go up
scale = 3;
color = c_white;
alpha = 1;
depth = player_id.depth-2;
is_healing = false;

final_i = 0; //this is the digit limiter

destroy_on = 30; //destroy the article when it reachs this number
damage_mult = 113; //multiplies the damage numbers so they look more like genshin values

//electro color
var elec_col_r = get_color_profile_slot_r(alt_cur, 0);
var elec_col_g = get_color_profile_slot_g(alt_cur, 0);
var elec_col_b = get_color_profile_slot_b(alt_cur, 0);
elec_col = make_color_rgb(elec_col_r, elec_col_g, elec_col_b);