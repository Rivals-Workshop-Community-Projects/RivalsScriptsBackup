//
with (player_id) shader_end();
if(state == 0){
    draw_sprite_ext(sprite_get("nspecial_ward_loop"), 0, x, y, 0+intro_ring_size_2, 0+intro_ring_size_2, ring_turn_cycle_2, c_white, intro_alpha);   
}else{
    var fx_image_index = get_gameplay_time() / 10;
    draw_sprite_ext(sprite_get("nspecial_ward_loop"), fx_image_index, x-1, y-1, 1, 1, 0, c_white, intro_alpha-0.1); 
}
with (player_id) shader_start();