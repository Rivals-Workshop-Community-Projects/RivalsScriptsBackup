

	if mycolich_type == 1 && mycolich_sporetime && mycolich_player == other_player_id.player && mycolich_healed > 0 && (mycolich_sporetime > other_player_id.fspecial_mintime or mycolich_sporetime mod 10 < 5){
	var d, t, xx, yy;
		with (other_player_id) {
			d = sprite_get("dmgtag");
			shader_start();
		}

		draw_set_halign(fa_middle)
		draw_set_valign(fa_middle)
		draw_set_font(asset_get("roundFont"));
		t = "-"+string(floor(mycolich_healed))+"%"
		
		
		xx = x+19
		yy = y-char_height-26
		
		draw_sprite(d, 0, xx, yy)
		
//		draw_text_colour(xx-2, yy, t, c_black, c_black, c_black, c_black, 1)
//		draw_text_colour(xx, yy+2, t, c_black, c_black, c_black, c_black, 1)
//		draw_text_colour(xx+2, yy, t, c_black, c_black, c_black, c_black, 1)
//		draw_text_colour(xx, yy-2, t, c_black, c_black, c_black, c_black, 1)
		
		draw_text_colour(xx, yy, t, $D0FFA8, $D0FFA8, $D0FFA8, $D0FFA8, 1)
		
		shader_end();
	}





if mycolich_type == 1 && mycolich_sporetime && mycolich_player == other_player_id.player {
	with (other_player_id) {
		shader_start();
		var s = sprite_get("sporering")
	}
	
	var t = mycolich_sporetime
	if hitpause && state_cat == SC_HITSTUN {
		t *= (hitstop/hitstop_full)
	}
		
	
	var a, c;
	var d = 8;
	var w = ((bbox_right-bbox_left)+20)+t/5
	var yy = y - char_height/2
	for (var i = 0; i < d; i++) {
		a = dcos((t*3)+(i*(360/8)))
		c = dsin((t*3)+(i*(360/8)))

		if c > 0 draw_sprite_ext(s, i, x + a*w, yy+c*20, 1, 1, 0, c_white, t/10)
	}
	
	
	shader_end();
}



/*
var L = (mycolich_sporetime/other_player_id.sporecap)
var sp = -1;
var d = other_player_id.sporediv;
var a = 360/d
	with (other_player_id) {
		sp = sprite_get("sporedot");
		shader_start();
	}
	var brt = 1;
if sp != -1 && mycolich_sporetime > 0 for (var i = floor(L * d); i >= 0; i--) {
	
	draw_sprite(sp, ((mycolich_sporetime/10) mod 2)+(mycolich_type > 0 or brt)*2, x + lengthdir_x(char_height, (i*a)+90), y + lengthdir_y(char_height, (i*a)+90) - char_height/2)
	brt = 0;
}

shader_end();

draw_debug_text(x,y+12, string(mycolich_player)+" "+string(mycolich_type));
/*
if mycolich_sporetick  {
	shader_start();
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,$AAAAAA,image_alpha)
	shader_end();
}

if other_player_id.fspecial_target == id && other_player_id.window == 3 && other_player_id.attack == AT_FSPECIAL_2 {

	var leech_sprite = -1;
	
	with (other_player_id) {
		leech_sprite = sprite_get("leech");
		shader_start();
	}		
	
	
	draw_sprite_ext(leech_sprite, other_player_id.image_index, x, y - char_height/2, spr_dir, 1, 0, c_white, 1)

}
draw_debug_text(x,y,string(mycolich_player))
