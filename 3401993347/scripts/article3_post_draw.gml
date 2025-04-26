//modified lucario shot sphere renderer
shader_end();
var col1 = GetColourPlayer(0);
var col2 = GetColourPlayer(1);

var playerAlt = get_player_color(player);
switch (playerAlt)
{
	case 11: //rbg
	{
		if ("hue" not in player_id) player_id.hue = 0;
		col2 = make_color_hsv((color_get_hue(col2)+player_id.hue)%255,color_get_saturation(col2),color_get_value(col2))
	}
	break;
}

//trapRenderer is behind the player

with (pHitBox) if (player_id == other.player_id && 
(!other.trapRenderer && attack == AT_NSPECIAL && hbox_num == 2 && sprite_index == asset_get("empty_sprite")
|| (other.trapRenderer && attack == AT_FSPECIAL && (hbox_num == 7 ||hbox_num == 5 || hbox_num == 4 || hbox_num == 3 ))))
{
	var exploding = 0;

	var trap = false;

	var rad = image_xscale*100;
	if(attack == AT_FSPECIAL && hbox_num == 5 || hbox_num == 7){
		rad = 20;
		trap = true;
		if(hbox_num == 7){
			rad -= hitbox_timer;
			if(rad <= 0){
				rad = 0;
			}
		}

		if(hbox_num == 5){
			rad *= ease_quadInOut(0, 1, player_id.trapboxCurrentTime, player_id.trapboxSetupTime);
		}
	}
	if(attack == AT_FSPECIAL && hbox_num == 3){
		rad = 10;
		exploding = 8;
		if ("exploding" in self) {
			exploding -= self.exploding;
		}
		if ("fade" in self) {
			rad -= self.fade*0.2;
		}
		if "setupAmount" in self {
			rad *= self.setupAmount/player_id.trapboxSetupTime;
		}
		rad -= exploding/3;
		if(rad <= 0){
			rad = 0;
		}
		
	}

	var test = 0;//-20 //(y-448)/4;
	var newX = x;
	var newY = y;

	// draw_circle_colour(newX+50, newY, rad*2, col1, col1, 0);
	// draw_circle_colour(newX+100, newY, rad*2, col2, col2, 0);

	newY += test;
	draw_set_alpha(0.5);

	gpu_set_blendmode(bm_add);
	draw_circle_colour(newX, newY, rad*2, c_white, c_black, 0);
	newY += test;

	draw_set_alpha(0.9);
	draw_circle_colour(newX, newY, rad*2, col1, c_black, 0);
	newY += test;

	gpu_set_blendmode(bm_normal);
	extraStretch = sin(hitbox_timer*0.2)*1;
	draw_set_alpha(1);
	if(exploding>0){
		draw_set_alpha(1-exploding/10);
	}
	if(!trap){

		var wa = draw_circle_colour(newX, newY, rad+extraStretch, col2, col2, 0);
		// print("wa: " + string(wa.depth));
		newY += test;
		// draw_circle_colour(newX, newY, 2*rad/3, col1, col1, 0);
		//has mixels wtf
		draw_circle_colour(newX, newY, rad+extraStretch, c_black, c_white, 1);

		draw_set_alpha(0.1);
		newY += test;

	}



	// draw_circle_colour(newX, newY, rad+extraStretch+20, col2, c_ltgray, 0);


	// newY += test;
	// gpu_set_blendmode(bm_normal);
	// draw_circle_colour(newX, newY, rad/2+random_func(0, 3, 1), black, c_white, 0);
	// newY += test;
	// gpu_set_blendmode(bm_normal);
	draw_set_alpha(1);
}

#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player_id.player), _index),get_color_profile_slot_g(get_player_color(player_id.player), _index),get_color_profile_slot_b(get_player_color(player_id.player), _index));
}