//post-draw AR
//shader_start();

//    var state_timer = 0;

//var fsplayer = id
shader_start()
if (jiseffect <= (3*6)&& jiseffect>0){
	draw_sprite_ext(sprite_get("jis_hit_test"), floor(((3*6)-jiseffect)/3), x, y-(floor(char_height/2)+10), spr_dir, 1, 0, -1, 1 );
}
shader_end()

with (asset_get("obj_article2")){
	if (player_id==other.id) {
	if (init==1){
	var imgindexlight = 0;
	var lighttemp_ys = 0;
	var summon_time = 8;
//	var state_timer = 0;
//	state_timer = state_timer + 1;
	imgindexlight = (state_timer * 4 / summon_time);
	lighttemp_ys = (dista_y/(sprite_get_height(sprite_get("lightning"))));
//	lighttemp_ys = (80/(sprite_get_height(sprite_get("lightning"))));
//	draw_sprite_ext(sprite_get("lightning"), 0, x-2, y, 1, lighttemp_ys, 0, c_white, 1 );	
	draw_sprite_ext(sprite_get("lightning"), imgindexlight, x-2, y, 1, lighttemp_ys, 0, c_white, 1 );	
//	spawn_hit_fx( x, y, 120 );
	//if (state_timer > 0 ) {spawn_hit_fx( x, y, 120 );}
	}
	}
//	if (init==0 && state_timer !=0){
//	state_timer = 0
//	}
}

//    if (window == 1){
//        if (window_timer == 1

//if (attack==AT_TAUNT && window == 1 && window_timer == 1){
//	draw_sprite_ext(get_sprite("acidraincloud"),1,x,y,1,1,0,c_white,1);
//}

//debug-purpose taunt thing
//if (attack==AT_TAUNT && window == 1){ //&& window_timer == 1){
//		draw_sprite_ext(sprite_get("acidraincloud"),1,x,y,1,1,0,c_white,1);
//		sound_play( sound_get( "SWB1" ) );
//}


//shader_end();





//if (lightn_state > 0) {
//	var lighttemp_ys = 0
//	lighttemp_ys = (sprite_get_height(get_sprite("lightning"))
//	lighttemp_ys = lightfull_y / lighttemp_ys
//	draw_sprite_ext( get_sprite("lightning"), (floor(lightn_state/2)), lightconfirm_x, lightcenter_y, 1, lighttemp_ys, 0, c_white, 1 );	
//	}

if (!phone_disable){
	if (phone_manual_init >= 1){
		user_event(12);
	}
}