//post-draw

if (poisoned && other_player_id == poisoned_id){
    var poisoned_sprite = -1;
    with (poisoned_id){
        //sprite_get can only be called directly by the workshop character
            poisoned_sprite = sprite_get("poisoned_arrow");
        shader_start();
    }
    if (poisoned_sprite != -1)
        draw_sprite(poisoned_sprite, get_gameplay_time()*.15, x+5, y-(char_height+15));
    with (poisoned_id){
        shader_end();
    }
}
/*
if (webbed && other_player_id == webbed_id){
    var webbed_sprite = -1;
    with (webbed_id){
        //sprite_get can only be called directly by the workshop character
            webbed_sprite = sprite_get("webbedeffect");
        shader_start();
    }
    if (webbed_sprite != -1)
        draw_sprite(webbed_sprite, get_gameplay_time()*.15, x, y);
        with (webbed_id) {
            draw_sprite(webbed_sprite, get_gameplay_time()*.15, x, y);
        }
    with (webbed_sprite){
        shader_end();
    }
}
*/

/*
if (poisoned && other_player_id == poisoned_id) {
	with (poisoned_id){
        var poisoned_sprite;
        poisoned_sprite = sprite_get("poisonproj");

        draw_sprite(other_player_id.poisoned_sprite, 1, x, y);
	}

}
*/