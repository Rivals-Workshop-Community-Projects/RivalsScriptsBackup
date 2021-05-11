//a

//0.2 //0.3
//0.0009 //0.0012
//
//0.25 //0.2

var spr_oldstar = (altmoon)?(sprite_get("moon_stars_alt")):(sprite_get("moon_stars"))
var optimalmode = false;


//not optimized as much
var alp_dec = 0.045//0.02
var tmp_angle = fake_angle
var ang_inc = 1.9//1.1


for (var tmp_a = alp_start; tmp_a>0; tmp_a -= alp_dec){
	tmp_angle += ang_inc
	ang_inc += 0.005
	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, tmp_angle, -1, tmp_a/2 );
}

/*
draw_sprite_ext( sprite_get("stars"), 0, x, y, 2, 2, image_angle, -1, 1 );

	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, image_angle, -1, 1 );
	
	*/
if (!optimalmode){ // if optimal is not on, display star flares
	
//var f_alpha = ease_quartIn( 0.1*100, 0, r_timer, r_dur )/100
var f_alpha = alp_start/9;
	gpu_set_blendmode(bm_add);
	draw_sprite_ext( spr_oldstar, 0, x+1, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+1, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-1, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+2, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-2, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+3, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-3, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+4, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-4, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y+1, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y-1, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y+2, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y-2, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, fake_angle, -1, f_alpha*5 );
	gpu_set_blendmode(bm_normal);
	
}

	draw_sprite_ext( sprite_index, image_index, x, y, 2, 2, 0, -1, 1 );