//article draw


//thrown rocks
//note keep in sync with article_update.gml
#macro AUDIENCE_THROW     7

//draw rock target
if (rock_state == 1)
{
    draw_sprite(sprite_get("warning"), min(3, floor(rock_obj.timer/5)), 
                rock_obj.target_x, rock_obj.target_y);
}
//draw thrown rock
else if (rock_state == 2)
{
    var angle = 0, scale = 1.5;
    if (rock_obj.timer < rock_obj.timer_max)
    {
        scale = 0.01 * ease_linear(200, 150, rock_obj.timer, rock_obj.timer_max);
    }
    else
    {
        angle = (rock_obj.timer - rock_obj.timer_max) * 15;
    }
    
    draw_sprite_ext(sprite_get("rock"), 0, 
                    rock_obj.x, rock_obj.y, scale, scale, angle, c_white, 1);
}

//audience
for (var i = 0; i < audience_number; i++)
{
    //need to draw the row of chairs now
    if (i == audience_front_row)
    { draw_sprite_ext(chairs_spr, 0, x, y, 2, 2, 0, c_white, 1); }
    
    var guy = audience_array[i];
    if (guy == noone || guy.sprite == noone || guy.state == -1) 
        continue; //failsafe: "nothing to draw"

    draw_sprite_ext(guy.sprite, guy.subimg * 2 + (guy.xscale < 0 ? 1 : 0), 
                    x + guy.seat_x + guy.x, y + guy.seat_y + guy.y, 
                    2 * guy.xscale, 2 * guy.yscale, 0, c_white, 1);
    if (guy.state == AUDIENCE_THROW)
    {
        //draw_rock
        draw_sprite_ext(sprite_get("rock"), 0, x + guy.seat_x + guy.x, 
            y + guy.seat_y + guy.y + rock_held_height, 2, 2, 0, c_white, 1);
    }
}
