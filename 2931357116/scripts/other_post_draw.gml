if instance_exists(other_player_id) && frostbite && "frost_sprite" in other_player_id for(var i=0; i < 4; i++){
    draw_sprite_ext(other_player_id.frost_sprite, frostbite_anim, x + (dcos(frost_angle + (90*i)) * ((char_height*2/3) + bite_distance)), y - char_height/2 - 10 + (dsin(frost_angle + (90*i)) * -((char_height*2/3) + bite_distance)), 1, 1, frost_angle + (90*i), c_white, 1);
}