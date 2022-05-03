

if get_gameplay_time() == 3{
    waking = spawn_hit_fx(x,y - 46,awaken)
    waking.depth = -15
    sound_stop(asset_get("sfx_ori_bash_hit"))
    sound_play(asset_get("sfx_ori_bash_hit"),false,noone,1,.7)
} else if get_gameplay_time() == 15 {
	sound_stop(asset_get("sfx_waveland_ori"))
    sound_play(asset_get("sfx_waveland_ori"),false,noone,1,.4)
    sound_play(asset_get("sfx_waveland_ori"),false,noone,1,.4)
} else if get_gameplay_time() == 30 {
    vfx = spawn_hit_fx(x,y-40,306)
    vfx.pause = 8
    sound_stop(asset_get("sfx_forsburn_consume"))
    sound_stop(asset_get("sfx_absa_kickhit"))
    sound_play(asset_get("sfx_forsburn_consume"),false,noone,1,1.2)
    sound_play(asset_get("sfx_absa_kickhit"),false,noone,1,.8)
}


if state == PS_RESPAWN {
if state_timer == 60 {
    waking = spawn_hit_fx(x,y - 46,awaken)
    waking.depth = -15
     sound_play(asset_get("sfx_ori_bash_hit"),false,noone,1,.7)
} else if state_timer  == 75 {
    sound_play(asset_get("sfx_waveland_ori"),false,noone,1,.4)
    sound_play(asset_get("sfx_waveland_ori"),false,noone,1,.4)
} else if state_timer  == 90 {
	sound_play(asset_get("sfx_forsburn_consume"),false,noone,1,1.2)
    sound_play(asset_get("sfx_absa_kickhit"),false,noone,1,.8)
}
}



// Dino codes

with pHitBox {
	if (player_id == other.id && attack == AT_NSPECIAL && type == 2) {
		if "uspecialMinX" in self {
		uspecialHudX = clamp(x, view_get_xview() + uspecialMinX , (view_get_xview() + view_get_wview()) - uspecialMaxX )
		uspecialHudY = clamp(y, view_get_yview() + uspecialMinY, (view_get_yview() + view_get_hview()) - (44 + uspecialMaxY ))
		uspecialNum = 0
		if uspecialHudX == (view_get_xview() + uspecialMinX) { //Left
			uspecialNum = 3
		}
		if uspecialHudX == ((view_get_xview() + view_get_wview()) - uspecialMaxX) { //Right
			uspecialNum = 6
		}
		if uspecialHudY == (view_get_yview() + uspecialMinY) { //Up
			uspecialNum += 1
		}
		if uspecialHudY == ((view_get_yview() + view_get_hview()) - (44 + uspecialMaxY )) { //Down
			uspecialNum += 2
		}
		switch(uspecialNum) {
			//Cardinal
			case 0:
			break;
			case 1: //Up
				uspecialRot= 180
				uspecialShape = 0
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 2: //Down
				uspecialRot= 0
				uspecialShape = 0
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;			
			case 3: //Left
				uspecialRot= 270
				uspecialShape = 0
				uspecialHudX = (view_get_xview() + 33)
			break;
			case 6: //Right
				uspecialRot= 90
				uspecialShape = 0
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
			break;
			
			//Diagonal
			case 4: //Left Up
				uspecialRot= 270
				uspecialShape = 1
				uspecialHudX = (view_get_xview() + 33)
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 5: //Left Down
				uspecialRot= 0
				uspecialShape = 1
				uspecialHudX = (view_get_xview() + 33)
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;			
			
			case 7: //Right Up
				uspecialRot= 180
				uspecialShape = 1
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
				uspecialHudY = (view_get_yview() + 33)
			break;
			case 8: //Right Down
				uspecialRot= 90
				uspecialShape = 1
				uspecialHudX = ((view_get_xview() + view_get_wview()) - 33)
				uspecialHudY = ((view_get_yview() + view_get_hview()) - 85)
			break;
		}
		//print(string(uspecialNum))
		//print(string(uspecialHudX))
		//print(string(uspecialHudY))
		
	}
	}
}

if move_cooldown[AT_DTHROW] > 0 {
	move_cooldown[AT_NSPECIAL] = 5
	
if move_cooldown[AT_DTHROW] == 4{
	outline_color = [255, 255, 255]
	sound_play(asset_get("sfx_coin_collect"),false,noone,1,1.4)
}
if move_cooldown[AT_DTHROW] == 1{
	outline_color = [0, 0, 0]
}

}
init_shader();

if get_player_color(player) = 11 {
	hue+= 4
	if hue>255 {
		hue = 0;
	}
	//make hue shift every step + loop around

	color_rgb=make_color_rgb(255, 100, 50);
	//make a gamemaker color variable using kirby's default color (body)
	hue2=(color_get_hue(color_rgb)+hue) mod 255;
	color_hsv=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); 
	//make a gamemaker color variable using the new hue
	set_color_profile_slot(11,2,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));

	set_color_profile_slot(11,0,color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv));
//set the new color using rgb values from the gamemaker color
}
init_shader();