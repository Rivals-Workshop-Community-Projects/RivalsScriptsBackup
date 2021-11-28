//
if get_player_color(player) == 1 and shiny_timer <= 15{
    //spawn_hit_fx(x + (shiny_x - 32), y + shiny_y, sprite_get(shiny_vfx))
    //print("cat")
    draw_sprite(sprite_get( "shiny" ), shiny_timer/4, x + (shiny_x -32 ), (y + shiny_y * -1)-8);
}

//print(shiny_timer)