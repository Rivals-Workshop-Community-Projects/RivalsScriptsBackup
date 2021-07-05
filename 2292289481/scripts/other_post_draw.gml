//post-draw

if (poisoned && other_player_id == poisoned_id){
    var bubble_sprite = -1;
    with (poisoned_id){
        //sprite_get can only be called directly by the workshop character
        if (other.land_time < 6)
            bubble_sprite = sprite_get("poisoned_arrow");
        //shader_start();
    }
    if (bubble_sprite != -1)
        draw_sprite(bubble_sprite, get_gameplay_time()*.15, x+10, y-char_height);
    with (poisoned_id){
        //shader_end();
    }
}


/*
if (poisoned && other_player_id == poisoned_id) {
	with (poisoned_id){
        var poisoned_sprite;
        poisoned_sprite = sprite_get("poisonproj");

        draw_sprite(other_player_id.poisoned_sprite, 1, x, y);
	}

}
*/