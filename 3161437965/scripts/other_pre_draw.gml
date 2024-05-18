if "other_player_id" in self && instance_exists(other_player_id) && instance_exists(other_player_id.artc_savepoint) && other_player_id.artc_savepoint.saved_player == self {
    var col_light = 6;
    var aura_offset = 2;
    
    var alph_timer = other_player_id.artc_savepoint.enemy_warp_timer;
    var alph = 0;
    // if alph_timer <= 30 alph = (30-alph_timer)/30;
    if alph_timer <= 30 alph = ((alph_timer-30)*(alph_timer-30))/900;
    
    
    with(other_player_id) var color = get_player_hud_color(player);
    
    gpu_set_fog(1, color, 0, 1);
    //set X's and set Y's
    for (var i_x = -aura_offset; i_x <= aura_offset; i_x += aura_offset) for (var i_y = -aura_offset; i_y <= aura_offset; i_y += aura_offset)
    {  
    	//don't draw in the center cuz bar is there
    	if (i_y != 0 && i_x != 0) draw_sprite_ext(sprite_index, image_index, x + i_x + draw_x, y - i_y + draw_y, (1 + small_sprites)*spr_dir, (1 + small_sprites), spr_angle, c_white, alph);
    }
    gpu_set_fog(0, c_white, 0, 0);
}