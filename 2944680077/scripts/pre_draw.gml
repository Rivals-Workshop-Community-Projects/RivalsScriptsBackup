
//afterimages
if  (get_player_color(player) == 0) { 
    var col_red = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 0 ), get_color_profile_slot_g( get_player_color(player), 0 ), get_color_profile_slot_b( get_player_color(player), 0 ));
}
else {
   var col_red = make_colour_rgb(get_color_profile_slot_r( get_player_color(player), 2 ), get_color_profile_slot_g( get_player_color(player), 2 ), get_color_profile_slot_b( get_player_color(player), 2 )); 
}
for (var i = 0; i < 10; i++){
    if (after_image[i] != -1 && after_image[i].alpha > 0){
        
        gpu_set_fog(true,col_red,0,1);
        
        draw_sprite_ext(after_image[i].sprite_index, after_image[i].image_index, after_image[i].x, after_image[i].y, (1 + small_sprites) * after_image[i].spr_dir,
            1 + small_sprites, 0, c_white, after_image[i].alpha/10 );
            
        gpu_set_fog(false,c_white,0,0);
        
    }
}

//respawn plat
if (state == PS_RESPAWN) {
    shader_start();
    draw_sprite(sprite_get("platbehind"),get_gameplay_time()/8,x,y);
}