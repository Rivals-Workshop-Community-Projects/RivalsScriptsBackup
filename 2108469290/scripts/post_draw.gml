shader_start();

if get_gameplay_time() < 110 {
     draw_sprite(sprite_get("uspecial"), 6 + (get_gameplay_time() % 24)/4, x ,y - 220 + get_gameplay_time()*2  );
}
if lockon = 1{
    draw_sprite(sprite_get("esm"), get_gameplay_time() / 4, hit_player_obj.x ,hit_player_obj.y + 40  );
}

if move_cooldown[AT_TAUNT] > 0  {
        draw_sprite(sprite_get("sbreak"), get_gameplay_time() / 2, x - 34 ,y - 10  );

}

shader_end() 


