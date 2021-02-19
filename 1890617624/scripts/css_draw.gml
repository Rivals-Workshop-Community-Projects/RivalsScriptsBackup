//css_draw - the basically non-documented character select draw script

frames = get_color_profile_slot_r(99, 0);
frames2 = get_color_profile_slot_g(99, 0);
goldframes = get_color_profile_slot_b(99, 0);
set_color_profile_slot(99, 0, ++frames, ++frames2, ++goldframes);

if (y > 320 and y < 500) set_color_profile_slot(99, 0, 0, frames2, goldframes);

if frames = 1 or !variable_instance_exists(id, "temp_x"){
    if frames2 = 1{
        sound_play(sound_get("selected"));
        y = 316
    }
    temp_x = x
    temp_y = 316
}

if get_player_color(player) >= 11{
    
    if goldframes < 35{
        if y > 500{
            y = 316
        }
    
    } else {
        y = 999
        draw_sprite_ext(sprite_get("css_darkness"), (round(frames / 3) % 8), temp_x - 12, temp_y - 12, 2, 2, 0, c_white, 1)
    }
    
    var frame = 0
    if goldframes >= 10 and goldframes < 20{
        frame = round(goldframes / 5) - 2
    }
    if goldframes >= 20 and goldframes < 30{
        frame = 3
    }
    if goldframes >= 30 and goldframes < 35{
        frame = 4
    }
    if goldframes >= 35 and goldframes < 50{
        frame = 5
    }
    if goldframes >= 50{
        frame = 6
    }
    
    if goldframes = 15{
        sound_play(sound_get("screech"));   
    }
    if goldframes = 35{
        sound_play(sound_get("explosionshake"));   
    }
    
    draw_sprite_ext(sprite_get("css_overlay"), frame, temp_x - 12, temp_y - 12, 2, 2, 0, c_white, 1)
    
    if goldframes >= 35{
        draw_sprite_ext(sprite_get("css_flash"), 0, temp_x - 12, temp_y - 12, 2, 2, 0, c_white, 1 - ((goldframes - 35) * 0.1))
    }
    

} else{
    set_color_profile_slot(99, 0, frames, frames2, 0);
    if y > 500{
        y = 316
    }
}