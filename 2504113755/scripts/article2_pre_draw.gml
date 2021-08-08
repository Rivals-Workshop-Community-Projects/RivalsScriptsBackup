 
// col1 = player_id.col1
if (state == 0) {

col2 = player_id.col2
 
 	var tempColour = c_white;

 
	gpu_set_fog(1, col2, 0, 1);

				//	draw_sprite_ext(article_sprite_index, article_image_index, x, y, 2*article_spr_dir, 2, 1, col1, 100);
					     	gpu_set_blendmode(bm_add);
					     	//					draw_sprite_ext(article_sprite_index, article_image_index, x, y, 2*article_spr_dir, 2, 1, col1, 100);


        gpu_set_blendmode(bm_normal);

					       gpu_set_fog(0, c_white, 0, 0);
					    //     gpu_set_blendmode(bm_normal);




 gpu_set_fog(1, tempColour, 0, 1); 
               	gpu_set_blendmode(bm_normal);

        
			draw_sprite_ext(article_sprite_index, article_image_index, x, y, 2*article_spr_dir, 2, 1, col2, 0.4);
        	gpu_set_blendmode(bm_add);
			draw_sprite_ext(article_sprite_index, article_image_index, x, y, 2*article_spr_dir, 2, 1, tempColour, 0.4);

        gpu_set_blendmode(bm_normal);


   
         gpu_set_blendmode(bm_normal);
    
        gpu_set_fog(0, c_white, 0, 0);



}


//// input the shade slot index
// outputs the colour of the shade slot of the current alt
#define GetColourPlayer(_index)
{
    return make_colour_rgb(get_color_profile_slot_r(get_player_color(player), _index),
    get_color_profile_slot_g(get_player_color(player), _index),
    get_color_profile_slot_b(get_player_color(player), _index));
} // lukaru