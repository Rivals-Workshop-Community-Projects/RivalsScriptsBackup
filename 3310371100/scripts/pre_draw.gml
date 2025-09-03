// pre-draw


if (state==PS_RESPAWN || (state==PS_ATTACK_GROUND && free && attack==AT_TAUNT)){
	draw_sprite_ext( sprite_get("plat_bg"), 0, x, y, 1, 1, 0, -1, 1 ) 
}

if ((state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR) && attack==AT_DSPECIAL_2 && window==7){
	gpu_set_fog(true, make_colour_rgb(90, 170, 227), 0, 1);
	var tmp_hsp = hsp; var tmp_vsp = vsp;
	if (hitpause){var tmp_hsp = old_hsp; var tmp_vsp = old_vsp;}
	gpu_set_blendmode(bm_add);
	draw_sprite_ext( sprite_index, image_index, x-(tmp_vsp*spr_dir), y-tmp_vsp, 1*spr_dir, 1, 0, -1, 0.5 ) 
	gpu_set_blendmode(bm_normal);
	gpu_set_fog(false, c_white, 0, 1);
}


//pattern test
//copy and paste this anywhere in the file, but make sure the code past "#define" is at the end of the file. 
//Also, make sure to use "shader_end();" before you start the code, and "shader_start(); if you want to put more code after.

//idk who made this code but thanks -hy

if (get_synced_var( player )==0){//A
	/*if (get_player_color( player ) == 8){//sorbet
		shader_end();
		maskHeader();
		draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_pool"), 0, x-121, y-141, 0.6, 0.6, c_white, 1)
		}
		maskFooter();
	}*/
	if (get_player_color( player ) == 9){//radialvortex
		shader_end();
		maskHeader();
		draw_sprite_ext( sprite_index, image_index, x-4, y, 1*spr_dir, 1, 0, -1, 0.15 )
		//draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_water"), get_gameplay_time()/8, x-121, y-141, 1, 1, c_white, 1)
		}
		maskFooter();
		maskHeader();
		draw_sprite_ext( sprite_index, image_index, x+4, y, 1*spr_dir, 1, 0, -1, 0.15 )
		//draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_water"), get_gameplay_time()/8, x-121, y-141, 1, 1, c_white, 1)
		}
		maskFooter();
		maskHeader();
		draw_sprite_ext( sprite_index, image_index, x, y, 1*spr_dir, 1, 0, -1, 1 )
		//draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_water"), get_gameplay_time()/8, x-121, y-141, 1, 1, c_white, 1)
		}
		maskFooter();
	}
}
if (get_synced_var( player )==2){//C
	if (get_player_color( player ) == 2){//starburst
		shader_end();
		maskHeader();
		draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_celestial"), 0, x+(get_gameplay_time()*0.05), y-(get_gameplay_time()*0.03), 2, 2, c_white, 1)
			//draw_set_alpha(0.1);
			//draw_sprite_tiled_ext(sprite_get("etc_field_star"), 0, view_get_xview()+(get_gameplay_time()*0.3), view_get_yview()+(get_gameplay_time()*0.2), 1, 1, c_white, 1)
			//draw_set_alpha(1);
		}
		maskFooter();
	}
}
if (get_synced_var( player )==3){//EXTRA??
	if (get_player_color( player ) == 1){//sorbet
		shader_end();
		maskHeader();
		draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_pool"), 0, x-121, y-141, 0.6, 0.6, c_white, 1)
		}
		maskFooter();
	}
}
if (get_synced_var( player )==4){//EXTRA??
	if (get_player_color( player ) == 1){//ultragenesis
		if (get_player_name( player )!="KYOUKO"){
			shader_end();
			maskHeader();
			draw_self();
			maskMidder();
			if (mask_wait>0){
				mask_wait--;
			}
			if (mask_wait==0){
				draw_sprite_tiled_ext(sprite_get("etc_field_genesis"), 0, view_get_xview()+(get_gameplay_time()*0.5), view_get_yview()+(get_gameplay_time()*0.3), 1, 1, c_white, 1)
			}
			maskFooter();
			
			maskHeader();
			draw_sprite_ext(sprite_index,image_index,x-hsp*2,y-vsp*2, spr_dir,1,0,-1,0.3)
			maskMidder();
			if (mask_wait==0){
				draw_sprite_tiled_ext(sprite_get("etc_field_genesis"), 0, view_get_xview()+(get_gameplay_time()*0.5), view_get_yview()+(get_gameplay_time()*0.3), 1, 1, c_white, 1)
			}
			maskFooter();
			
			maskHeader();
			draw_sprite_ext(sprite_index,image_index,x-hsp*1,y-vsp*1, spr_dir,1,0,-1,0.3)
			maskMidder();
			if (mask_wait==0){
				draw_sprite_tiled_ext(sprite_get("etc_field_genesis"), 0, view_get_xview()+(get_gameplay_time()*0.5), view_get_yview()+(get_gameplay_time()*0.3), 1, 1, c_white, 1)
			}
			maskFooter();
		}
	}
	if (get_player_color( player ) == 8){//grid
		shader_end();
		maskHeader();
		draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_grid"), 0, view_get_xview(), view_get_yview(), 2, 2, c_white, 1)
		}
		maskFooter();
	}
	if (get_player_color( player ) == 10){//hymn
		shader_end();
		maskHeader();
		draw_self();
		maskMidder();
		if (mask_wait>0){
			mask_wait--;
		}
		if (mask_wait==0){
			draw_sprite_tiled_ext(sprite_get("etc_field_green"), 0, view_get_xview()+(get_gameplay_time()*9), y-60, 1, 0.7, c_white, 1)
		}
		maskFooter();
		
			maskHeader();
			draw_sprite_ext(sprite_index,image_index,x-hsp*2,y-vsp*2, spr_dir,1,0,-1,0.3)
			maskMidder();
			if (mask_wait==0){
				draw_sprite_tiled_ext(sprite_get("etc_field_green"), 0, view_get_xview()+(get_gameplay_time()*9), y-60, 1, 0.7, c_white, 1)
			}
			maskFooter();
	}
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
