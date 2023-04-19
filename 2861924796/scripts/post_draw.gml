//
if get_player_color(player) >= 17 and get_player_color(player) < 21 and shiny_timer <= 15{
    //spawn_hit_fx(x + (shiny_x - 32), y + shiny_y, sprite_get(shiny_vfx))
    //print("cat")
    draw_sprite(sprite_get( "shiny" ), shiny_timer/4, x + (shiny_x -32 ), (y + shiny_y * -1)-8);
}

if (attack == AT_FSPECIAL){
    if window == 1 and window_timer == 19{
        spawn_hit_fx(x,y,after_image)
    }
}

if clinging{
    if cling_time <= 60{
        draw_sprite(sprite_get("wall_honey"),0,x - (21*spr_dir),y - 44)
    }
    if cling_time >= 60{
        spawn_hit_fx(x - (33*spr_dir),y -44,wall_trail)
    }
}

//print(shiny_timer)