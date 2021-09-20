//post-draw

if (amaya_venom && other_player_id == amaya_venom_id){
    var amaya_venom_sprite = -1;
    with (amaya_venom_id){
            amaya_venom_sprite = sprite_get("venom_mark");
        shader_start();
    }
    if (amaya_venom_sprite != -1)
        draw_sprite(amaya_venom_sprite, amaya_venom_count-1, x, y-char_height-22);
    with (amaya_venom_id){
        shader_end();
    }
}