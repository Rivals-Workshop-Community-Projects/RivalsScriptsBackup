//article2_init


exist_timer = 0;
bounce_height = room_height * 2;
image_alpha = 0.9;

if (player_id.object_index == oPlayer)  {
    sprite_index = player_id.ralsei_default_shell_bounce_spr;
    bounce_sound = player_id.ralsei_default_shell_bounce_sound;
    spr_dir = player_id.spr_dir;
    var num = instance_number(obj_article2);
    rotation_speed = random_func(num mod 25, 10, 0) * spr_dir;
    vsp = (player_id.vsp * 0.5) -2 + random_func((num + 1) mod 25, 1, 0);
    hsp = (player_id.hsp * 0.5) - (spr_dir * 2) - 1 + random_func((num + 1) mod 25, 2, 0); 
}
else {
    //the article that spawned this article should fill in in the above instead.
}


