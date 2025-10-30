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

if "other_player_id" in self && instance_exists(other_player_id) && get_player_color(other_player_id.player) == 28 {
    // afterimage (code by Karu)
    gpu_set_alphatestenable(true);
    for (var i = 0; i < array_length_1d(other_player_id.galaxy_vfx_array); ++i)
    {
        var obj = other_player_id.galaxy_vfx_array[i];
        gpu_set_fog(1, obj.col, 0, 1);
        if visible draw_sprite_ext(obj.sprite_index, obj.image_index, obj.x, obj.y, obj.spr_dir*(1+small_sprites), 1+small_sprites, obj.rot, obj.col, 1-obj.timer/obj.timerMax);
    }
    gpu_set_fog(0, c_white, 0, 0);
    gpu_set_alphatestenable(false);
    
    if(array_find_index(other_player_id.galaxy_vfx_list, self) >= 0){
        FlagPart(make_colour_rgb(85, 205, 252), sprite_height, sprite_yoffset); // mayablue
        FlagPart(make_colour_rgb(247, 168, 223), char_height/5*2, char_height/5*2.5); // pink
        FlagPart(c_white, char_height/5, char_height/5*2);
        gpu_set_fog(0, c_white, 0, 0);
    }
}


#define FlagPart(_colour, _height, _xLoc) // Code by Karu
{
    gpu_set_fog(1, _colour, 0, 1);
    for (var i = -1; i < 2; ++i) for (var j = -1; j < 2; ++j) draw_sprite_general(sprite_index, image_index, 0, sprite_yoffset-_xLoc, abs(sprite_width), min(max(sprite_height-sprite_yoffset+_xLoc,0),_height),
        i*2+x+draw_x+(dsin(spr_angle)*(-_xLoc)+dcos(spr_angle)*(-sprite_xoffset))*(small_sprites + 1),
        j*2+y+draw_y+(dcos(spr_angle)*(-_xLoc)-dsin(spr_angle)*(-sprite_xoffset))*(small_sprites + 1),
        spr_dir*(small_sprites + 1), (small_sprites + 1),
        spr_angle, c_white, c_white, c_white, c_white, (hitpause ? 1.2 - hitstop/hitstop_full : 1));
}