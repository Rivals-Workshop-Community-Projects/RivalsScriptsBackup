var megamen = 0;
with(oPlayer) if url == other.player_id.url  megamen++;

if(megamen > 1){ // Outline code by Bar-Kun
    var col_light = 6;
    var outline_offset = 2;
    
    var color = get_player_hud_color(player_id.player);
    
    gpu_set_fog(1, color, 0, 1);
    //set X's and set Y's
    for (var i_x = -outline_offset; i_x <= outline_offset; i_x += outline_offset) for (var i_y = -outline_offset; i_y <= outline_offset; i_y += outline_offset)
    {  
    	//don't draw in the center cuz bar is there
    	if (i_y != 0 && i_x != 0) draw_sprite_ext(sprite_index, image_index, x + i_x, y - i_y, 1*spr_dir, 1, image_angle, c_white, 1);
    }
    gpu_set_fog(0, c_white, 0, 0);
}