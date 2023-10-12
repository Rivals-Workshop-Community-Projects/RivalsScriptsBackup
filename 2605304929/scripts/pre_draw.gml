//pre_draw

//Intro Platform BG

if(state == PS_RESPAWN){
    shader_start();
	draw_sprite_ext(sprite_get("plat_bg"),image_index,x,y,spr_dir,1,0,c_white,1);
	shader_end();
}

if((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && attack == AT_EXTRA_3){
	switch(window){
		case 1:
		case 2:
		case 3:
			shader_start();
			draw_sprite_ext(sprite_get("extra_3_behind"),image_index,x,y,spr_dir,1,0,c_white,1);
			shader_end();
		break;
		
		default:
		break;
	}
}
// Draw Tehend Galaxy
if(opponent_activated_kill_effect){
	if (galaxy_current_timer > 0) {
	    var temp_scalar = .50;
	    var temp_opacity = .50 - ((galaxy_current_timer * 1.5) / 100);
	    // Referenced Po and Gumbo's draw function for this.
	    shader_start();
        draw_sprite_ext(sprite_get("compat_ltg"),0, view_get_xview() -(-125 + temp_scalar*250), view_get_yview() -(-100 + temp_scalar*200), 1.5+temp_scalar , 1.5+temp_scalar ,0, c_white, temp_opacity );
    	shader_end();
	}
}

/* Disabled 3/18/22
// afterimage  Code for Amateratsu
if(get_player_color(player) == 25 || get_player_color(player) == 22){ // Amateratsu
	for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
	{
	    shader_start();
	    gpu_set_blendmode(bm_subtract);
	    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir*1, 1, 0, c_white, afterImage[i].alpha/20);
	    gpu_set_blendmode(bm_normal);
	    shader_end();
	}
}
*/ 
/*
if(attack == AT_DSPECIAL && tsunami_proj != 0){
    shader_start();
    //Extract variables from tsunami
    with(tsunami_proj){
        var tsunami_x = x;
        var tsunami_y = y - y_pos;
        var tsunami_spr_dir = spr_dir;
    }
    }
    //Draw script
    var tsunami_image_index = get_gameplay_time()/ 6;
    var tsunami_y_offset = -110 / 2;
    draw_sprite_ext(sprite_get("dspecial_water_proj_surf"),tsunami_image_index,tsunami_x,tsunami_y + tsunami_y_offset,tsunami_spr_dir,1,0,c_white,1);
    shader_end();
}
*/

/*
if(attack == AT_DSPECIAL_2 && tsunami_surf_hitbox_id != 0){
    
    with(tsunami_surf_hitbox_id){
            var tsunami_x = x;
            var tsunami_y = y - y_pos;
            var tsunami_spr_dir = spr_dir;
    }    
    
    var tsunami_image_index = get_gameplay_time()/ 6;
    draw_sprite_ext(sprite_get("dspecial_water_proj_surf"),tsunami_image_index,tsunami_x,tsunami_y,tsunami_spr_dir,1,0,c_white,1);
   
   // Sound handler for this 
   /* 
    if(tsunami_image_index % 6 == 1 && instance_exists(tsunami_surf_hitbox_id)){
        sound_play(asset_get("sfx_troupple_splash_big"),false,noone,.25,1);
    }
    
}

*/