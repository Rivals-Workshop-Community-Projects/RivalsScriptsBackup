//article3_init - damage numbers

can_be_grounded = false;
ignores_walls = true;
uses_shader = true;

state = 0;
state_timer = 0;

alt_cur = get_player_color(player);
if (alt_cur == 6 || alt_cur == 7) alt_mc = true;
else alt_mc = false;

//damage stuff
damage = 0; //the actual damage values
move = 0; //makes it go up
color = c_white;
scale = 3;
alpha = 1;
depth = player_id.depth-2;
is_healing = false;
is_crit = false;

final_i = 0; //this is the digit limiter

destroy_on = 30; //destroy the article when it reachs this number
damage_mult = 323; //multiplies the damage numbers so they look more like genshin values

//electro color
var elec_col_r = get_color_profile_slot_r(alt_cur, 0);
var elec_col_g = get_color_profile_slot_g(alt_cur, 0);
var elec_col_b = get_color_profile_slot_b(alt_cur, 0);
elec_col = make_color_rgb(elec_col_r, elec_col_g, elec_col_b);

//elemental particles
part_anim_speed = 0.15;
is_orb = false;
collecting_particle = false;
part_angle = 0;
collect_time = 0;