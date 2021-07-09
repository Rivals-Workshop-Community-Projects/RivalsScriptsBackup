// afterimage
var tempColour = c_white;
col1 = GetColourPlayer(0)
col2 = GetColourPlayer(1)

image_index_offset = 0
afterimage_division_offset = 0
//spr_dir_thing_cuz_b_reverse_AUGH = 1
    
    
    
afterimage_division_multiplier = 40







if (blink_state_timer < 20) {
	

	if (blink_state_timer <= (blink_start_frame - 1)) {
				y_offset = blink_vsp*6
		x_offset = -blink_hsp*6
			
			
			
		
	                	for (var i = 1; i <= 10; i++){
                        if (place_meeting((x + (i/10)*3*(x_offset)), (y + (i/10)*3*y_offset) ,asset_get("par_block"))) {
	                	
	                		y_offset *= ((i-1)/10)
	                		old_y_offset = y_offset
	                		  x_offset *= ((i-1)/10)
	                
							
                        }	
                        
                       

	                	}
	    
	          if !(place_meeting((x + 3*(x_offset)), (y + 3*blink_vsp*6) ,asset_get("par_block"))) {
	          	
	        
	                	  		y_offset = blink_vsp*6

	                	    
	                	}
	    
	    
								 
	
	
		if !(place_meeting((x + 3*(-blink_hsp*6*spr_dir)), (y + 3*old_y_offset) ,asset_get("par_block"))) {
	                						x_offset = -blink_hsp*6

	                 } 
	                		for (var i = 1; i <= 10; i++){
	                			
	                			  if (place_meeting((x + (i/10)*3*(x_offset)), (y + (i/10)*3*y_offset) ,asset_get("par_jumpthrough")) && y_offset > 0 && !(down_down || down_pressed)) {
	                	
	                		y_offset *= ((i-1)/10)
	                		
	                //		  x_offset *= ((i-1)/10)
	                
							
                        }
	                			
	                			
	                			
	                			
	                		}
	                	
                  
	
	
	} }


























for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > -1)
{


if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && afterImage[i].sprite_index == sprite_index) {
    

    //REMEMBER, up each image index by 1 in your head
    if (afterImage[i].image_index = 1 && afterImage[i].window == 1 && afterImage[i].window_timer == 9) {
    y_offset = 0 
    	
    } //initial dash
    else if (afterImage[i].image_index = 2  && afterImage[i].window == 2 && afterImage[i].window_timer == 2) {
    y_offset = -15 } //start 1
    else if (afterImage[i].image_index = 3  && afterImage[i].window == 3 && afterImage[i].window_timer == 1) {
    y_offset = -15 } //attack 1
    else if (afterImage[i].image_index = 5 && afterImage[i].window == 5 && afterImage[i].window_timer == 1) {
    y_offset = 6 }
    else if (afterImage[i].image_index = 6 && afterImage[i].window == 5 && afterImage[i].window_timer == 3) {
    y_offset = 6 }
    else if (afterImage[i].image_index = 8 && afterImage[i].window == 7 && afterImage[i].window_timer == 1) {
    y_offset = -17 }
    else if (afterImage[i].image_index = 9 && afterImage[i].window == 7 && afterImage[i].window_timer == 3) {
    y_offset = -17 }
    else if (afterImage[i].image_index = 11  && afterImage[i].window == 9 && afterImage[i].window_timer == 1) {
    y_offset = 8 }
    else if (afterImage[i].image_index = 12  && afterImage[i].window == 9 && afterImage[i].window_timer == 3) {
    y_offset = 8 }
    else if (afterImage[i].image_index = 14  && afterImage[i].window == 11 && afterImage[i].window_timer == 1) {
    y_offset = -4 }
    else if (afterImage[i].image_index = 15  && afterImage[i].window == 11 && afterImage[i].window_timer == 3) {
    y_offset = -4 }

    
    else { afterImage[i].alpha = 0 }
    
    if afterImage[i].image_index = 1 {
    x_offset = -40*spr_dir 
    	afterimage_division_offset = 2
	afterimage_division_multiplier = 30
    	
    	
    } else { x_offset = 30*spr_dir
    afterimage_division_offset = 0.5
    afterimage_division_multiplier = 40
    	
    }
    image_index_offset = 1
    
    final_variable_for_afterimage_because_i_am_ocd = -1
    
} else if   (attack == AT_USPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && afterImage[i].sprite_index == sprite_index) {
	
	y_offset = -18*1.15
	x_offset = -14*1.15*spr_dir
    image_index_offset = 1
    afterimage_division_offset = 2
	afterimage_division_multiplier = 30
	    final_variable_for_afterimage_because_i_am_ocd = 1

} else if (blink_state_timer < 20) {
	
	

	
	afterimage_division_offset = 2
	afterimage_division_multiplier = 30
	 final_variable_for_afterimage_because_i_am_ocd = 1
//	spr_dir_thing_cuz_b_reverse_AUGH
} 





if (afterimage_division_multiplier = 40) { gpu_set_fog(1, c_white, 0, 1); } else { gpu_set_fog(1, col1, 0, 1); }
       
        
			draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index + image_index_offset, afterImage[i].x - x_offset, afterImage[i].y + y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, (afterImage[i].alpha - (1 + final_variable_for_afterimage_because_i_am_ocd))/(afterimage_division_multiplier*afterimage_division_offset));
        	gpu_set_blendmode(bm_add);
                        draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index  + image_index_offset, afterImage[i].x - x_offset, afterImage[i].y + y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, afterImage[i].alpha/(afterimage_division_multiplier*afterimage_division_offset));

        gpu_set_blendmode(bm_normal);


    gpu_set_fog(1, col2, 0, 1);


                draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index + image_index_offset, afterImage[i].x - 2*x_offset, afterImage[i].y + 2*y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, (afterImage[i].alpha - 1)/afterimage_division_multiplier);
        gpu_set_blendmode(bm_add);
                        draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index + image_index_offset , afterImage[i].x - 2*x_offset, afterImage[i].y + 2*y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, afterImage[i].alpha/afterimage_division_multiplier);

        gpu_set_blendmode(bm_normal);
          
          
          
          
       if (afterimage_division_multiplier = 40) { gpu_set_fog(1, col1, 0, 1); } else  { gpu_set_fog(1, c_white, 0, 1); }
                  
       // gpu_set_fog(1, col1, 0, 1);
                 draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index  + image_index_offset, afterImage[i].x - 3*x_offset, afterImage[i].y + 3*y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, (afterImage[i].alpha - (1 - final_variable_for_afterimage_because_i_am_ocd))/(afterimage_division_multiplier/afterimage_division_offset));
        gpu_set_blendmode(bm_add);
                        draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index  + image_index_offset, afterImage[i].x - 3*x_offset, afterImage[i].y + 3*y_offset, 2*afterImage[i].spr_dir, 2, 1, tempColour, afterImage[i].alpha/(afterimage_division_multiplier/afterimage_division_offset));

         gpu_set_blendmode(bm_normal);
    
        gpu_set_fog(0, c_white, 0, 0);

}









/*
with(speeddisk) {
var tempColour = c_white;

for (var i = 0; i < afterImageMax; ++i) if (afterImage[i] != -1 && afterImage[i].alpha > 0 && draw_indicator)
{
    shader_start();
    gpu_set_blendmode(bm_add);
    draw_sprite_ext(afterImage[i].sprite_index, afterImage[i].image_index, afterImage[i].x, afterImage[i].y, afterImage[i].spr_dir, 1, 0, tempColour, afterImage[i].alpha/20);
    gpu_set_blendmode(bm_normal);
    shader_end();
}}
*/


col1 = GetColourPlayer(0)
col2 = GetColourPlayer(1)
/*
if (attack == AT_FSPECIAL) {
    
    
}



  	if (attack == AT_FSPECIAL && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && window == 2) {

        gpu_set_fog(1, col2, 0, 1);

        draw_sprite_ext(sprite_index, image_index, x -55*spr_dir, y ,2*spr_dir,2,0,-1,.25)
          gpu_set_blendmode(bm_add);
     //   draw_sprite_ext(sprite_index, image_index , x -15*spr_dir , y ,2*spr_dir,2,0,-1,1 - state_timer/40)  
          gpu_set_blendmode(bm_normal);
            
        gpu_set_fog(0, c_white, 0, 0);
        
        gpu_set_fog(1, col1, 0, 1);

        draw_sprite_ext(sprite_index, image_index, x-20*spr_dir , y ,2*spr_dir,2,0,-1,.75)
          gpu_set_blendmode(bm_add);
    //    draw_sprite_ext(sprite_index, image_index, x-50*spr_dir , y ,2*spr_dir,2,0,-1,1 - state_timer/40)  
          gpu_set_blendmode(bm_normal);
            
        gpu_set_fog(0, c_white, 0, 0);
    }
    */




















//// input the shade slot index
// outputs the colour of the shade slot of the current alt
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),
    get_color_profile_slot_g(get_player_color(player), _index),
    get_color_profile_slot_b(get_player_color(player), _index));
} // lukaru

