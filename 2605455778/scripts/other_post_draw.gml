if(inRock){
    //shader_start();
    //draw_sprite_ext(other_player_id.rockPrisonForm, myPrison.image_index, x, y, 1*spr_dir, 1, 0, c_white, 1);
    //shader_end();
    
    with(other_player_id){
        shader_start();
        draw_sprite_ext(rockPrisonForm, other.myPrison.image_index, other.x, other.y, 1*other.spr_dir, 1, 0, c_white, 1);
        shader_end();
    }
}