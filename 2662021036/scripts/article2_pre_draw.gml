if ((player_id.state == PS_ATTACK_AIR || player_id.state = PS_ATTACK_GROUND) && player_id.attack == 49){
    
    if (player_id.window > 5 && player_id.window < 8){

draw_sprite_ext(sprite_get("final_beam_background"), -1, room_width/2, room_height/2, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("final_speedlines"), speedline_timer / 2, room_width/2, room_height/2, 2, 2, 0, c_white, 1);

draw_sprite_ext(sprite_get("final_flash"), -1, room_width/2, room_height/2, 2, 2, 0, c_white, beamflash_opacity);

}

if (player_id.window = 8){
  draw_sprite_ext(sprite_get("final_flash"), -1, room_width/2, room_height/2, 2, 2, 0, c_white, beamflash_opacity);  
}


}