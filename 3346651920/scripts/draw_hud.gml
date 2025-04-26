

var spr_staticthing = sprite_get("__static_css")

if (variable_instance_exists(id, "static_hitpause")){
if (static_hitpause!=-4){
	var tmp_x = static_hitpause.x-view_get_xview()
	var tmp_y = static_hitpause.y-view_get_yview()
	var a_slope = ease_quartOut( 0, 60, round(hitstop), round(hitstop_full) )/100
	draw_sprite_tiled_ext(sprite_get("__static_css"), get_gameplay_time()*0.4, 0, 0, 2, 2, -1, a_slope/5);
	/*gpu_set_blendmode(bm_add);
	draw_sprite_tiled_ext(sprite_get("__static_css"), get_gameplay_time()*0.4, 0, 0, 2, 2, -1, a_slope/4);
	gpu_set_blendmode(bm_normal);*/
	draw_sprite_ext( sprite_get("__operator_symbol"), 1, tmp_x, tmp_y-round(static_hitpause.char_height/1.4), 3, 3, 0, c_black, a_slope )
	draw_sprite_ext( sprite_get("__operator_symbol"), 1, tmp_x, tmp_y-round(static_hitpause.char_height/1.4), 2, 2, 0, -1, a_slope*2 )
}
}


//distance between each player should be 231 or something
//238? yeah math says 238

//dude im too lazy to math this out man im just gonna do this
//print(string(temp_x)+", "+string(temp_y))
//

//377,492 on 1 player

//258,492 on 2 player left
//496,492 on 2 player right

//139,492 on 3 player left
//377,492 on 3 player middle
//i can only assume 3 player right is 615

//i assume 4 player left is 20
//258,492 on 4 player 2nd
//496
//734

if (variable_instance_exists(id, "slender_playercounting")){
if (slender_playercounting == 0){
	for (var i=1; i<=4; i++;){
		slender_playercounting += is_player_on( i )
	}
	//print("counted "+string(slender_playercounting))
}


with(oPlayer){
	if (id != other.id){
		if (slender_haunt == other.id){
			if (slender_haunt_timer>0){//slendersickness active

//I DONT WANT TO MATH THIS OUT MAAAAAN HELP ME
//print(string(get_player_hud_color( player )))
//print(string(get_local_player()))
if (get_local_player()){//CHECK ONLINE hopefully this works

	if (other.slender_playercounting==2){
		if (get_player_hud_color( player ) == make_colour_rgb(66, 229, 100)){//if this haunted player is GREEN
			var wow_x = 258;
		}else{//if not, which means probably purple
			var wow_x = 496;
		}
	}
}else{//if local
	if (other.slender_playercounting==2){
		if (player<other.player){
			var wow_x = 258;
		}else{
			var wow_x = 496;
		}
	}
}//check online close


//WHAT HOW DO I DO THIS ONE
if (other.slender_playercounting==3){
	if (player==1){
		var wow_x = 139;
	}
	if (player==4){
		var wow_x = 615;
	}
	//thats the simple guranteed ones
	
	if (player==2 && is_player_on( 1 ) == false){
		var wow_x = 139;
	}
	if (player==3 && is_player_on( 4 ) == false){
		var wow_x = 615;
	}
	
	if (player==2 && is_player_on( 1 ) == true){
		var wow_x = 377;
	}
	if (player==3 && is_player_on( 4 ) == true){
		var wow_x = 377;
	}
}
if (other.slender_playercounting==4){
	switch (player){
		case 1: var wow_x = 20; break;
		case 2: var wow_x = 258; break;
		case 3: var wow_x = 496; break;
		case 4: var wow_x = 734; break;
		default: break;
	}
}
var wow_y = 492

draw_sprite_part_ext( spr_staticthing, get_gameplay_time()*0.4, -2,0,49,16, wow_x+78, wow_y+8, 2, 2, -1, 0.5 )
draw_sprite_part_ext( spr_staticthing, get_gameplay_time()*0.4, 2,0,43,16, wow_x+86, wow_y+8, 2, 2, -1, 1 )



			}//slender haunt timer
		}//slender haunt
	}//id
}//with()
}//in self