if (sprite_index == sprite_get("pizzahead_dspecial2_TV_frame")){
    if (instance_exists(player_id.hit_player_obj) && "pizzaTVcontent" in player_id.hit_player_obj){
        draw_sprite_ext(player_id.hit_player_obj.pizzaTVcontent, state_timer * article_anim_speed, x - 80 * spr_dir, y - 160, 2 * spr_dir, 2, 0, -1, 1);
    } else {
        draw_sprite_ext(sprite_get("pizzahead_dspecial2_TV_content"), state_timer * article_anim_speed, x, y, 2 * spr_dir, 2, 0, -1, 1);
    }
}

if (sprite_index == sprite_get("pizzahead_dspecial2_TV_bounce_frame")){
    if (instance_exists(player_id.hit_player_obj) && "pizzaTVbounce" in player_id.hit_player_obj){
        draw_sprite_ext(player_id.hit_player_obj.pizzaTVbounce, state_timer * article_anim_speed, x - 80 * spr_dir, y - 160, 2 * spr_dir, 2, 0, -1, 1);
    } else {
        draw_sprite_ext(sprite_get("pizzahead_dspecial2_TV_bounce_content"), state_timer * article_anim_speed, x, y, 2 * spr_dir, 2, 0, -1, 1);
    }
}

