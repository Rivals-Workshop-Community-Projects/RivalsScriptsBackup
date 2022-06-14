//other_post_draw

if (enemyHokuto) {
    var hokuto_sprite = -1;
    with (hit_player_obj) {
        hokuto_sprite = sprite_get("hokuto");
    }
    
    if (enemyHokuto) {
        draw_sprite(hokuto_sprite, 1, x, y - char_height + 10);
    }
    else {
    hokuto_sprite = -1;
    }
} 

