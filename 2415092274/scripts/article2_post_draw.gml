//a

//0.2 //0.3
//0.0009 //0.0012
//
//0.25 //0.2

if (!player_id.optimalmodeEX){

var spr_oldstar = (altmoon)?(sprite_get("moon_stars_alt")):(sprite_get("moon_stars"))
var spr_oldstar_ii = sprite_get("moon_stars_v2")
var spr_oldstar_wh = sprite_get("moon_stars_wh")
var optimalmode = false;


//not optimized as much
var alp_dec = 0.045//0.02
var tmp_angle = fake_angle
var ang_inc = 1.9//1.1


/*for (var tmp_a = alp_start; tmp_a>0; tmp_a -= alp_dec){
	tmp_angle += ang_inc
	ang_inc += 0.005
	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, tmp_angle, -1, tmp_a/2 );
}*/

//new! optimziedrshjykuilo;l\:
var tmp_colorslot = 0;
var tmp_colornum = get_player_color(player_id.player);
switch (tmp_colornum){
    case 8:
    case 11:
    case 14:
    case 22:
    case 23:
        tmp_colorslot = 2;
    break;
    
    default: break;
}

var tmp_colr = get_color_profile_slot_r(tmp_colornum, tmp_colorslot);
var tmp_colg = get_color_profile_slot_g(tmp_colornum, tmp_colorslot);
var tmp_colb = get_color_profile_slot_b(tmp_colornum, tmp_colorslot);

var tmp_col = make_color_rgb(tmp_colr, tmp_colg, tmp_colb);

	draw_sprite_ext( spr_oldstar_ii, 0, x, y, 1, 1, tmp_angle, tmp_col, alp_start );
	draw_sprite_ext( spr_oldstar_ii, 0, x, y, 1, 1, tmp_angle, tmp_col, alp_start );

/*
draw_sprite_ext( sprite_get("stars"), 0, x, y, 2, 2, image_angle, -1, 1 );

	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, image_angle, -1, 1 );
	
	*/
/*
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

	draw_sprite_ext( sprite_index, image_index, x, y, 2, 2, 0, -1, 1 );*/
	
}
var f_alpha = alp_start/2;
	draw_sprite_ext( spr_oldstar_wh, 0, x, y, 2, 2, fake_angle, -1, f_alpha*2 );
	draw_sprite_ext( spr_oldstar_wh, 0, x-1, y, 2, 2, fake_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar_wh, 0, x+1, y, 2, 2, fake_angle, -1, f_alpha );
	gpu_set_blendmode(bm_add);
	draw_sprite_ext( spr_oldstar_wh, 0, x-3, y, 2, 2, fake_angle, tmp_col, f_alpha/1.5 );
	draw_sprite_ext( spr_oldstar_wh, 0, x+3, y, 2, 2, fake_angle, tmp_col, f_alpha/1.5 );
	draw_sprite_ext( spr_oldstar_wh, 0, x, y-2, 2, 2, fake_angle, tmp_col, f_alpha/1.5 );
	draw_sprite_ext( spr_oldstar_wh, 0, x, y+2, 2, 2, fake_angle, tmp_col, f_alpha/1.5 );
	gpu_set_blendmode(bm_normal);
	draw_sprite_ext( sprite_index, image_index, x, y, 2, 2, 0, -1, 1 );






	