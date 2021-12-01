//post-draw

if(skl_poisoned && skl_poisoner == other_player_id.player) {
    with(other_player_id) {
        shader_start();

        var anim_speed = 1/3;

        draw_sprite(vfx_poison, anim_speed * get_gameplay_time() % 30, other.x, other.y - 3*(other.bbox_bottom - other.bbox_top)/4);

        shader_end();
    }
}