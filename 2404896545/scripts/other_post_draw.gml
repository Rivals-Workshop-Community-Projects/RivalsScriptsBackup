if (autobombed && other_player_id == autobomb_id){
    var status_sprite = -1;
    with (autobomb_id){
        //sprite_get can only be called directly by the workshop character
        status_sprite = sprite_get("flame_status")
        shader_start();
    }
    if (status_sprite != -1)
        draw_sprite(status_sprite, get_gameplay_time()*0.25, x-20, y-char_height);
        draw_sprite(status_sprite, get_gameplay_time()*0.31, x-15, y-char_height*0.9);
        draw_sprite(status_sprite, get_gameplay_time()*0.37, x-10, y-char_height*1.1);
    with (autobomb_id){
        shader_end();
    }
}