//draw_debug_text( x, y - 64, string(obj_stage_main.charData[2, 0]));

//draw_debug_text( x, y - 64, string(obj_stage_main.charData[0]));
//draw_debug_text( x, y - 96, string(obj_stage_main.charData[1]));
//draw_debug_text( x, y - 128, string(obj_stage_main.charData[2]));

draw_debug_text( x - 148, y - 160, string(obj_stage_main.charData[obj_stage_main.team1, 1]));
draw_debug_text( x + 16, y - 160, string(obj_stage_main.charData[obj_stage_main.team2, 1]));

draw_sprite_ext(sprite_get("logo"), obj_stage_main.charData[obj_stage_main.team1, 4], x - 148, y - 308, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("logo"), obj_stage_main.charData[obj_stage_main.team2, 4], x + 14, y - 308, 2, 2, 0, c_white, 1);


draw_debug_text(x - 360, y - 149, string(name[0]));
draw_debug_text(x + 162, y - 149, string(name[1]));



with oPlayer {
    if player == 1 {
        shader_start()
        draw_sprite_ext(other.select[0], 0, other.x - 364, other.y - 308, 2, 2, 0, c_white, 1);
        shader_end()
    }

    if player == 2 {
        shader_start()
        draw_sprite_ext(other.select[1], 0, other.x + 364, other.y - 308, -2, 2, 0, c_white, 1);
        shader_end()
    }

}

with oPlayer {
    if player == 1 {
        switch (get_player_stocks(player)) {
        case 3:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 136, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 136, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 136, 2, 2, 0, c_white, 1);
            shader_end()
            break;
        case 2:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 136, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 136, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 136, 2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 1:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 136, 2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 136, 2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 136, 2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 0:
            shader_start()
            draw_sprite_ext(other.icon[0], 0, other.x - 138, other.y - 136, 2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[0], 0, other.x - 96, other.y - 136, 2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[0], 0, other.x - 54, other.y - 136, 2, 2, 0, c_white, .1);
            shader_end()
            break;
        default:
        }

    }
    if player == 2 {
        switch (get_player_stocks(player)) {
        case 3:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 136, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 136, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 136, -2, 2, 0, c_white, 1);
            shader_end()
            break;
        case 2:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 136, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 136, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 136, -2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 1:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 136, -2, 2, 0, c_white, 1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 136, -2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 136, -2, 2, 0, c_white, .1);
            shader_end()
            break;
        case 0:
            shader_start()
            draw_sprite_ext(other.icon[1], 0, other.x + 138, other.y - 136, -2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[1], 0, other.x + 96, other.y - 136, -2, 2, 0, c_white, .1);
            draw_sprite_ext(other.icon[1], 0, other.x + 54, other.y - 136, -2, 2, 0, c_white, .1);
            shader_end()
            break;
        default:
        }

    }
}



draw_sprite_ext( //Left Team 1
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 5] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 5] , 3] * get_gameplay_time()),
	obj_stage_main.placement[0 , 0],
	obj_stage_main.placement[0 , 1],
	1,
	1,
	0,
	c_black,
	1 
)

draw_sprite_ext( //Left Team 1
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 5] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 5] , 3] * get_gameplay_time()),
	obj_stage_main.placement[0 , 0],
	obj_stage_main.placement[0 , 1],
	1,
	1,
	0,
	c_white,
	obj_stage_main.opacity
)

draw_sprite_ext( //Left Team 2 
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 6] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 6] , 3] * get_gameplay_time()),
	obj_stage_main.placement[1 , 0],
	obj_stage_main.placement[1 , 1],
	1,
	1,
	0,
	c_black,
	1
)


draw_sprite_ext( //Left Team 2 
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 6] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team1, 6] , 3] * get_gameplay_time()),
	obj_stage_main.placement[1 , 0],
	obj_stage_main.placement[1 , 1],
	1,
	1,
	0,
	c_white,
	obj_stage_main.opacity
)


draw_sprite_ext( //Right Team 1
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 5] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 5] , 3] * get_gameplay_time()),
	obj_stage_main.placement[2 , 0],
	obj_stage_main.placement[2 , 1],
	-1,
	1,
	0,
	c_black,
	1 
)

draw_sprite_ext( //Right Team 1
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 5] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 5] , 3] * get_gameplay_time()),
	obj_stage_main.placement[2 , 0],
	obj_stage_main.placement[2 , 1],
	-1,
	1,
	0,
	c_white,
	obj_stage_main.opacity
)

draw_sprite_ext( //Right Team 2 
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 6] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 6] , 3] * get_gameplay_time()),
	obj_stage_main.placement[3 , 0],
	obj_stage_main.placement[3 , 1],
	-1,
	1,
	0,
	c_black,
	1 
)

draw_sprite_ext( //Right Team 2 
	obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 6] , 2],
	(obj_stage_main.charData[obj_stage_main.charData[obj_stage_main.team2, 6] , 3] * get_gameplay_time()),
	obj_stage_main.placement[3 , 0],
	obj_stage_main.placement[3 , 1],
	-1,
	1,
	0,
	c_white,
	obj_stage_main.opacity
)
