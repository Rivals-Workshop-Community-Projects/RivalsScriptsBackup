//post-draw

if (debuff && other_player_id == debuff_id){
    var debuff_sprite = -1;
    with (debuff_id){
        //sprite_get can only be called directly by the workshop character
        if (other.debuff = true){
            debuff_sprite = sprite_get("debuff");
        }
        
        shader_start();
    }
    if (debuff_sprite != -1)
        draw_sprite(debuff_sprite, floor((get_gameplay_time() % 48)/image_number), other.x, other.bbox_bottom);
    with (debuff_id){
        shader_end();
    }
}
