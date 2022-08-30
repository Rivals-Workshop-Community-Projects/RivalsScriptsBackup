//intro anims

var trick_player = get_player_color(player);
var trick_color_r, trick_color_g, trick_color_b;



//get color
if (trick_player == 8) {
trick_color_r = get_color_profile_slot_r(trick_player, 7);
trick_color_g = get_color_profile_slot_g(trick_player, 7);
trick_color_b = get_color_profile_slot_b(trick_player, 7);
}
if (trick_player != 8) {
trick_color_r = get_color_profile_slot_r(trick_player, 1);
trick_color_g = get_color_profile_slot_g(trick_player, 1);
trick_color_b = get_color_profile_slot_b(trick_player, 1);
}

var trick_color = make_color_rgb(trick_color_r,trick_color_g,trick_color_b);



if (get_training_cpu_action() == CPU_FIGHT){	
    
	if (get_player_color(player) == 6) { //vergil

		if (sprite_index != sprite_get("vergil_intro")) && intro_timer != (intro_full) && chairtimer < 3{
            draw_sprite_ext( sprite_get("vergil_chair"), chairtimer, x + (2 * spr_dir), y, 2 * spr_dir, 2, 0, c_white, 1);
		}

	}


}


shader_start();
//Trick JC
if (state == clamp(state,5,6)) && (attack == AT_NSPECIAL) && window_timer < get_window_value(attack, 2, AG_WINDOW_LENGTH)-3 && window == 2 && grabbed_player != noone{


var jc_dist = point_distance(x, y, grabbed_player.x, grabbed_player.y);
var jc_distmult;
var jc_angle = point_direction( x, y, grabbed_player.x, grabbed_player.y);
var jc_opa;

if (window_timer <= floor(get_window_value(attack, 2, AG_WINDOW_LENGTH))*0.25 ){
jc_distmult = 0.25;
}
else if (window_timer <= floor(get_window_value(attack, 2, AG_WINDOW_LENGTH))*0.50 ){
jc_distmult = 0.50;
}
else if (window_timer <= floor(get_window_value(attack, 2, AG_WINDOW_LENGTH))*0.75 ){
jc_distmult = 0.75;
}
jc_opa = jc_distmult + 0.05;

gpu_set_blendmode(bm_add);
draw_sprite_ext( sprite_get("nspecial_proj"), get_gameplay_time()/4, x + lengthdir_x(jc_dist * jc_distmult, jc_angle), y + lengthdir_y(jc_dist * jc_distmult, jc_angle) - 40, 1, 1, 0, c_white, jc_opa);
gpu_set_blendmode(bm_normal);
draw_sprite_ext( sprite_get("nspecial_proj"), get_gameplay_time()/4, x + lengthdir_x(jc_dist * jc_distmult, jc_angle), y + lengthdir_y(jc_dist * jc_distmult, jc_angle) - 40, 1, 1, 0, c_white, jc_opa);

}
shader_end();
//MOTIVATION
if (state == clamp(state,5,6)) && (attack == AT_TAUNT_2) && (vergil_taunt) && window >= 2{
//rain
var camx = (view_get_xview() + view_get_wview()/2);
var camy = (view_get_yview() + view_get_hview()/2);


draw_sprite_ext( sprite_get("approaching"), get_gameplay_time()/4, camx, camy, 2, 2, 0, c_white, 0.3);

gpu_set_blendmode_ext(bm_src_alpha, bm_one);
draw_circle_colour(x- (6*spr_dir), y - 70, 40, c_aqua, c_black, 0);
gpu_set_blendmode(bm_normal);

}



gpu_set_fog(1,c_white,0,0);
if (just_window || fspec_charge == 15)
{
draw_sprite_ext( sprite_index, image_index,
x,
y,
(1 + small_sprites) * spr_dir, (1 + small_sprites), 
spr_angle,
c_white, 0.2);
}
gpu_set_fog(0,0,0,0);





// switch(attack){

// 	case AT_EXTRA_2:

// 		if (window == 1){
// 			draw_sprite_ext( sprite_get("jce_lines"), 0, x, y, 2, 300, 0, c_white, 1);
// 		}




// 	break;

// }