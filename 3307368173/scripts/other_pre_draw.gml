if (instance_exists(other_player_id) && other_player_id.attack == AT_UAIR && other_player_id.image_index >= 11 && other_player_id.image_index <= 15 && other_player_id.my_grab_id == id)
{
    draw_y = -1000;
    scaleup = 1+small_sprites;
    shader_start();
    draw_sprite_ext(sprite_index,image_index,x,y-char_height,spr_dir*scaleup,scaleup,180,c_white,1);
    shader_end();
}