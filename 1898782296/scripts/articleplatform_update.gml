state_timer++;
image_index += 0.15
//spr_dir = sign(hsp)

if(platform_type = 0){//Magic Carpet
	sprite_index = sprite_get("carpet");
	mask_index = sprite_get("carpet_coll");
	switch(state){
		case 0://Move forward, react to floor below, go to next state if touching blastzones
			hsp = 3*spr_dir;
			if(goingup == true and vsp > -4){
				cvsp -= 0.25;
			}
			if(goingup == false){
				cvsp += 0.2;
			}
			if(vsp < -3.5){
				goingup = false;
			}
			if(vsp > 4.5){
				goingup = true;
			}
			vsp = round(cvsp)
			
			if((position_meeting(x, y+30, asset_get("par_block"))
				and !position_meeting(x, y-30, asset_get("par_block")))
				or position_meeting(x, y+40, asset_get("par_jumpthrough"))){
					cvsp -= 0.25
					goingup = true;
				}
			if(
				( state_timer > 15 and (x <= get_stage_data(SD_LEFT_BLASTZONE_X) + 50
				or x >= get_stage_data(SD_RIGHT_BLASTZONE_X) - 50
				or y >= get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 50
				or y <= get_stage_data(SD_TOP_BLASTZONE_Y) + 50))
				or shy_guy_parried){
					var mini = instance_create(x+10*spr_dir, y-14,"obj_article1")
					mini.hsp = hsp;
					mini.vsp = vsp;
					mini.player_id = player_id;
					mini.spr_dir = spr_dir;
					player_id.carpet = mini;
					if(player_id.autobomb != noone){
						player_id.autobomb.carpet_lock = noone;
					}
					instance_destroy();
					exit;
				}
		break;
		case 1://Spawning
			sprite_index = sprite_get("carpet_boost");
			mask_index = sprite_get("carpet_coll");
			chsp -= 0.3*spr_dir
			if(player_id.down_down == true){
				cvsp += 0.025;
			} else if (player_id.up_down == true){
				cvsp -= 0.15
			} else {
			cvsp -= 0.05;
			}
			vsp = round(cvsp)
			hsp = round(chsp)
			if(instance_exists(carpet_boost_hitbox)){
				carpet_boost_hitbox.x = x + hsp;
				carpet_boost_hitbox.y = y + vsp;
			}
			if(state_timer >= 25){
				state = 0;
			}
		break;
	}
	
	if(shy_guy_death){
		player_id.carpet = noone;
		instance_destroy();
		exit;
	}
} else {//Autobomb
	if(autobomb != noone){
		//if(autobomb.carpet_lock == noone){
			var _next_x = round(lerp(x, autobomb.x + autobomb.hsp, 1));
			if(state_timer < 10){
				var _next_y = round(lerp(y, autobomb.platform_height + autobomb.vsp * 2, 0.2));
			} else {
				var _next_y = round(lerp(y, autobomb.platform_height + autobomb.vsp * 2, 1));
			}
			hsp = (_next_x - x);
			vsp = (_next_y - y);
		//}
		if(place_meeting(x, y-2, player_id)){
			player_id.on_autobomb = true;
		}
	} else {
		instance_destroy();
		exit;
	}
}