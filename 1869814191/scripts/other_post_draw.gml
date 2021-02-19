//post-draw

if (grabbed && other_player_id == grabbed_id){
    var soul_sprite = -1;
    with (grabbed_id){
        soul_sprite = sprite_get("arrows");
        shader_start();
    }
    if (soul_sprite != -1)
        draw_sprite(soul_sprite, get_gameplay_time()*.3, x, y-char_height*.5);
    with (grabbed_id){
        shader_end();
    }
}