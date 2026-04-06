if (sprite_index == sprite_get("pizzahead_dspecial2_TV_frame")){
    with player_id shader_end();
    if (instance_exists(player_id.hit_player_obj) && "pizzaTVcontent" in player_id.hit_player_obj){
        with (player_id.hit_player_obj){
            shader_start();
            draw_sprite_ext(pizzaTVcontent, other.state_timer * other.article_anim_speed, other.x - 80 * other.spr_dir, other.y - 160, 2 * other.spr_dir, 2, 0, -1, 1);
            shader_end();
        }
    } else {
        draw_sprite_ext(sprite_get("pizzahead_dspecial2_TV_content"), state_timer * article_anim_speed, x, y, 2 * spr_dir, 2, 0, -1, 1);
    }
}

if (sprite_index == sprite_get("pizzahead_dspecial2_TV_bounce_frame")){
    with player_id shader_end();
    if (instance_exists(player_id.hit_player_obj) && "pizzaTVbounce" in player_id.hit_player_obj){
        with (player_id.hit_player_obj){
            shader_start();
            draw_sprite_ext(pizzaTVbounce, other.state_timer * other.article_anim_speed, other.x - 80 * other.spr_dir, other.y - 160, 2 * other.spr_dir, 2, 0, -1, 1);
            shader_end();
        }
    } else {
        draw_sprite_ext(sprite_get("pizzahead_dspecial2_TV_bounce_content"), state_timer * article_anim_speed, x, y, 2 * spr_dir, 2, 0, -1, 1);
    }
}

