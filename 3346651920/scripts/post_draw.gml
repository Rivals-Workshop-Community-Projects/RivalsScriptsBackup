//slenderman post_draw


/*
if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
	if (attack==AT_DSPECIAL_AIR){
		if (window==1){
			var a_slope = ease_quadIn( 0, 100, window_timer, 16 )/100
			draw_sprite_ext( sprite_get("__operator_symbol"), 0, x, y-100, 2, 2, 0, -1, 1-a_slope )
		}
		
	}
}*/

if (dsp_air_try_cd_timer){
	var a_slope = ease_quadOut( 0, 100, dsp_air_try_cd_timer, dsp_air_try_cd_timer_max )/100
	draw_sprite_ext( sprite_get("__operator_symbol"), 0, x, y-100, 2, 2, 0, -1, a_slope )
		
}






//day one mode
/*
if (object_index == asset_get("oTestPlayer")){//this checks if it's in a playtest screen.
	if (get_synced_var( player )!=666){
		var bc_x = clamp( x, 100, 860 );//i guess this is the "center", bottom center
		var bc_y = clamp( (y + 61), 209, room_height-13 );//puzzles of math
		if (!variable_instance_exists(id,"timertest")){
			timertest = 0;
		}
		timertest+=0.4;
	shader_start() 
		//draw_sprite_ext(sprite_get("__static_css"),timertest,bc_x-100,bc_y-161,2,2,0,-1,1);
		//draw_sprite_ext(sprite_get("__static_css"),timertest,bc_x-100,bc_y-19,2,2,0,-1,1);
		draw_sprite_tiled_ext(sprite_get("__static_css"),timertest,bc_x-100,bc_y-161,2,2,-1,1);
		//print("its runnin")
	shader_end() 
	//hitpause = true;
	//hitstop = 666;
	//hitstop_full = 666; //apparently it breaks playtest (it softlocks)
	state=PS_SPAWN;
	state_timer = 1;
	}
}*/
//day one intro
if (state==PS_SPAWN && get_gameplay_time() <= 122){
	//if (day_one_special_intro){//nvm i'll let intro be always available
		
		//What
		//draw_sprite_part_ext(sprite, subimg, left, top, width, height, x, y, xscale, yscale, colour, alpha);

		shader_end();
		maskHeader();
		
		var a_slope = ease_cubeIn( 100, 0, clamp(state_timer,0,122), 122 )/100

		draw_sprite_ext( sprite_get("__static_masker"), 0, x, y-66, 3, 3, 0, -1, a_slope )

		maskMidder();

		if (static_wait>0){
			static_wait--;
		}
		if (static_wait==0){
			draw_sprite_tiled_ext(sprite_get("__static"), get_gameplay_time()*0.4, x-120, y-120, 2, 2, -1, 1);
		}

		maskFooter();
		
	//}
}



//================================================================================
#define maskHeader
// Mask renderer utility: disables Normal draw.
// Draw shapes or sprites to be used as the stencil(s) by maskMidder.
//================================================================================
{
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false,false,false,true);
    draw_set_alpha(0);
    draw_rectangle_color(0,0, room_width, room_height, c_white, c_white, c_white, c_white, false);
    draw_set_alpha(1);
}
//================================================================================
#define maskMidder
// Reenables draw but only within the region drawn between maskHeader and maskMidder.
// Lasts until maskFooter is called.
//================================================================================
{
    gpu_set_blendenable(true);
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode_ext(bm_dest_alpha,bm_inv_dest_alpha);
    gpu_set_alphatestenable(true);
}
//================================================================================
#define maskFooter
// Restores normal drawing parameters
//================================================================================
{
if instance_number(oTestPlayer) > 0 {
    gpu_set_blendenable(false);
    gpu_set_colorwriteenable(false, false, false, true);
    draw_rectangle_color(0, 0, room_width, room_height, c_white, c_white, c_white, c_white, false);
}
gpu_set_alphatestenable(false);
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);
gpu_set_blendenable(1);
gpu_set_colorwriteenable(true,true,true,true);
}
