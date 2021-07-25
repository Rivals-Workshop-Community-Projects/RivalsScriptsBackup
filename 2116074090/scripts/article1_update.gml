
var damage_rate = 175;

var cur_state = 0;
var cur_spr_dir = spr_dir;

with (oPlayer){
	cur_state = state;
}


x = get_marker_x( 1 );
y = get_marker_y( 1 ) + 2;


if (cur_state != PS_SPAWN){
	
	timer++;
	
	
	//hitbox stuff
	
	if (timer == damage_rate - 10){
		image_index++;
	}
	
	
	
	
	var shortest_dist = 999;
	var shortest_id = 0;
	
	if (timer mod damage_rate == 0){
		
		//spawn wapod
		sound_play(sound_get("spawn"));
		wapod_proj = create_hitbox(AT_USPECIAL, 1, x, y - 16);
		
		//wapod faces closest player
		with (oPlayer){
		    var curr_dist = point_distance(x,y,other.x,other.y);
		    if (curr_dist < shortest_dist) {
		        shortest_dist = curr_dist;
		        shortest_id = id;
		    }
		}
		if (shortest_id.x < x) {
		    wapod_proj.spr_dir = 1;
		} else {
		    wapod_proj.spr_dir = -1;
		}
		
		if (shortest_id.x == x){
			wapod_proj.spr_dir = -1;
		}
		
		//animate
		image_index++;
	}
	

	
	
	if (timer == damage_rate + 5){
		image_index++;
		timer = 0;
	}

}