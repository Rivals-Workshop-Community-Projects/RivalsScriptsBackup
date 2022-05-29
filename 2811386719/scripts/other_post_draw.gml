if(static_pull > 0){
  with other_player_id shader_start()
  if(other_player_id.pulling){
    var rot = point_direction(x, y, other_player_id.pull_dir_x, other_player_id.pull_dir_y);
    draw_sprite_ext(other_player_id.static_max_pull_spr, floor(other_player_id.game_time/3)%11, x, y-(char_height/2), 2, 2, rot, c_white, 1);
    draw_mag_trail();
  }else{
    draw_sprite_ext(other_player_id.static_max_spr, floor(other_player_id.game_time/5)%13, x, y-(char_height/2), 2, 2, 0, c_white, 1);
  }
   with other_player_id shader_end()
}
with other_player_id{
	if(grabbed_player_obj == other){
		
    if(attack == AT_NTHROW and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR) and (window == 2 or window == 3)){
      var window_length = get_window_value(attack, 2, AG_WINDOW_LENGTH);
	    var window2_length = get_window_value(attack, 3, AG_WINDOW_LENGTH);
	    
	    var indx = ease_linear(0 + (window == 3)*8, 8 + (window == 3)*4, window_timer, window_length);
      shader_start()
      draw_sprite_ext(nspecial_water_ball_overlay_spr, indx, other.x, other.y-(other.char_height/2), 2, 2, 0, c_white, 1);
      shader_end()
    }
    
  } 
  
}
// draw_debug_text( floor(x+60), floor(y-15), "hsp : " + string(hsp));
// draw_debug_text( floor(x+60), floor(y-30), "vsp : " + string(vsp));
  // draw_debug_text( floor(x+60), floor(y-30), "frict : " + string(frict));

#define draw_mag_trail()

var owner = other_player_id;

if(pull_strength < 0.1) return;

var x_loc = x;
var y_loc = y - char_height/2;
var x_width = 35;
var x_loc_other = owner.pull_dir_x;
var y_loc_other = owner.pull_dir_y;

var dire = point_direction(x_loc_other, y_loc_other, x_loc, y_loc);
var dist = point_distance(x_loc_other, y_loc_other, x_loc, y_loc);
var avg_x = (x_loc + x_loc_other)/2;
var avg_y = (y_loc + y_loc_other)/2;

var scl = dist/x_width;

draw_sprite_ext(owner.magnetism_trail_spr, owner.game_time, avg_x, avg_y, scl, owner.small_sprites + 1, dire, c_white, pull_strength);