//ee


//trick range draw
var nearest_dist = -1;
var nearest_player;
var free_chaos = has_rune("M");

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

//detect nearest
with (oPlayer){
    if (player != other.player && get_player_team( player ) != get_player_team( other.player )){
    	if (trick_marked) || free_chaos
    	{
    		if (abs(other.x - x) < nearest_dist) || (nearest_dist == -1){
    		nearest_player = id;
    		
    		nearest_dist = point_distance(other.x, other.y, x, y);
    		
    		if (nearest_dist > other.trick_range)
			nearest_dist = -1;
			
    		}
    	}
    }
}

//draw chaos link

gpu_set_fog(1,trick_color,0,0);
var range_alpha = ((trick_range-nearest_dist)/trick_range);

if (nearest_dist != -1){


//COMPATIBILIT-HEE HEE
var distort_draw_y;

if ("thrusting" in nearest_player)
distort_draw_y = 0;
else
distort_draw_y = nearest_player.draw_y;



if (trick_path < 1)
trick_path += 0.1;
else if (trick_path == 1)
trick_path = 0;

range_alpha = clamp(range_alpha,0.25, 0.75)

if (state == clamp(state,5,6))
range_alpha = 0.1;

if (nearest_dist != -1)
draw_sprite_ext( sprite_index, image_index,
lerp((x + draw_x), (nearest_player.x + nearest_player.draw_x), trick_path),
lerp((y + distort_draw_y), (nearest_player.y + distort_draw_y), trick_path),
(1 + small_sprites) * spr_dir, (1 + small_sprites), 
spr_angle,
trick_color, range_alpha);


}
gpu_set_fog(0,0,0,0);



//draw uspecial teleport ghost
if (state == clamp(state,5,6)) && (attack == AT_USPECIAL) && window >= 2{
	
var vfx_rand;
	
if  get_gameplay_time()%3 == 0
vfx_rand = random_func( 0, 10, true );
	
gpu_set_fog(1,trick_color,0,0);
	draw_sprite_ext( sprite_get("jump"), 5, (x + draw_x) + vfx_rand, (y + distort_draw_y) + 2, (1.1 + small_sprites) * spr_dir, (1.1 + small_sprites), spr_angle, trick_color, 0.2 );
	draw_sprite_ext( sprite_get("jump"), 5, (x + draw_x) - vfx_rand, (y + distort_draw_y) + 2, (1.1 + small_sprites) * spr_dir, (1.1 + small_sprites), spr_angle, trick_color, 0.2 );
gpu_set_fog(0,0,0,0);

}


if (state == clamp(state,5,6)) && (attack == AT_TAUNT_2) && (get_player_color(player) == 6){
//THE STORM
var camx = (view_get_xview() + view_get_wview()/2);
var camy = (view_get_yview() + view_get_hview()/2);
if (lightning_x == 0) 
lightning_x = camx;

if (provoking < 12)
{
provoking += 0.2;

if (floor(provoking) == 5 || floor(provoking) == 11) {
	lightning_x = view_get_xview() + random_func( 0, view_get_wview(), false );
	lightning_dir = -1 + random_func( 0, 2, false )
}

}
else if (provoking >= 12)
{
	provoking = 0;
}



draw_sprite_ext( sprite_get("storm"), 0, camx, camy, 10, 10, 0, c_black, 0.5);
draw_sprite_ext( sprite_get("provoking"), floor(provoking), lightning_x, camy, 2, 2, 0, c_white, 1);

}




// print_debug(string(range_alpha));