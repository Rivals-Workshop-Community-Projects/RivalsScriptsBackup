//a

//0.2 //0.3
//0.0009 //0.0012
//
//0.25 //0.2

if (!player_id.optimalmodeEX){

var spr_oldstar = sprite_get("stars")
var spr_bgstar = sprite_get("stars3")
var spr_oldstar_ii = sprite_get("stars_v2")
var spr_bgstar_ii = sprite_get("stars3_v2")
var optimalmode = false;


//not optimized as much
var alp_dec = 0.04//0.02
var tmp_angle = image_angle
var ang_inc = 1.8//1.1

var tmp_angle2 = image_angle
var ang_inc2 = 1.8//1.1

/*
for (var tmp_a = alp_start; tmp_a>0; tmp_a -= alp_dec){
	tmp_angle2 += ang_inc2
	ang_inc2 += 0.005
	draw_sprite_ext( spr_bgstar, 0, x, y, 2, 2, tmp_angle2, -1, tmp_a/2 );
}
for (var tmp_a = alp_start; tmp_a>0; tmp_a -= alp_dec){
	tmp_angle += ang_inc
	ang_inc += 0.005
	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, tmp_angle, -1, tmp_a/2 );
}
*/

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

	draw_sprite_ext( spr_bgstar_ii, 0, x, y, 1, 1, tmp_angle2, tmp_col, alp_start );
	draw_sprite_ext( spr_bgstar_ii, 0, x, y, 1, 1, tmp_angle2, tmp_col, alp_start );
	draw_sprite_ext( spr_oldstar_ii, 0, x, y, 1, 1, tmp_angle, -1, alp_start );

/*
gpu_set_blendmode(bm_add);
draw_sprite_ext( sprite_get("stars"), 0, x, y, 2, 2, image_angle, -1, 1 );
gpu_set_blendmode(bm_normal);

	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, image_angle, -1, 1 );
	
	*/
if (!optimalmode){ // if optimal is not on, display star flares
	
var f_alpha = ease_quartIn( 0.1*100, 0, r_timer, r_dur )/100
	draw_sprite_ext( spr_oldstar, 0, x+1, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+1, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-1, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+2, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-2, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+3, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-3, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x+4, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x-4, y, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y+1, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y-1, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y+2, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y-2, 2, 2, image_angle, -1, f_alpha );
	draw_sprite_ext( spr_oldstar, 0, x, y, 2, 2, image_angle, -1, f_alpha*5 );
	
}

}
