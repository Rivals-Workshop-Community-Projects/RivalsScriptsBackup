shader_start();


if get_gameplay_time() < 92 {
    draw_sprite_ext(sprite_get("dash"), get_gameplay_time()/6, x - (92 - get_gameplay_time())*4*spr_dir, y - floor((92 - get_gameplay_time())),
    spr_dir, 1, 0, -1, 1)
    
}

///blue berry
if get_player_color(player) == 13 {
if attacking && attack == AT_NSPECIAL {
    if window == 1 {
        if ncharge < 25 {
            draw_sprite_ext(sprite_get("berryball1"), state_timer/6, x + 22*spr_dir, y - 36, spr_dir, 1, 0, -1, 1)
        }
        
        if ncharge >= 25 && ncharge < 50 {
            draw_sprite_ext(sprite_get("berryball2"), state_timer/4, x + 22*spr_dir, y - 36, spr_dir, 1, 0, -1, 1)
        }
        
        if ncharge >= 50 {
            draw_sprite_ext(sprite_get("berryball3"), state_timer/3, x + 22*spr_dir, y - 36, spr_dir, 1, 0, -1, 1)
        }
        
    }
}


if sagemode <= -1 && (!attacking or (attacking && attack != AT_USPECIAL) or (attacking && attack == AT_USPECIAL && window != 2 && window != 3))  {
    draw_sprite_ext(sprite_get("berryball3"),  get_gameplay_time() / 4 + 1, sagefx1 + 15 - random_func(1,2,true), sagefy1 - 1 + random_func(6,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -2 {
    draw_sprite_ext(sprite_get("berryball3"),  get_gameplay_time() / 4 + 2, sagefx2 - 15 + random_func(2,2,true), sagefy2 - 1 + random_func(7,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -3 {
    draw_sprite_ext(sprite_get("berryball3"),  get_gameplay_time() / 4 + 3, sagefx3 + 21 - random_func(3,2,true), sagefy3 - 30 - 1 + random_func(8,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -4 {
        draw_sprite_ext(sprite_get("berryball3"),  get_gameplay_time() / 4 + 4, sagefx4 - 21 + random_func(4,2,true), sagefy4 - 30 - 1 + random_func(9,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -5 {
        draw_sprite_ext(sprite_get("berryball3"),  get_gameplay_time() / 4 + 5, sagefx5 - 1 + random_func(5,2,true) , sagefy5 - 54 - 1 + random_func(10,2,true), 1, 1, 0, -1, 1)
}
    
}
        
}

}

}
}


if get_player_color(player) != 13 {
if attacking && attack == AT_NSPECIAL {
    if window == 1 {
        if ncharge < 25 {
            draw_sprite_ext(sprite_get("ball1"), state_timer/6, x + 22*spr_dir, y - 36, spr_dir, 1, 0, -1, 1)
        }
        
        if ncharge >= 25 && ncharge < 50 {
            draw_sprite_ext(sprite_get("ball2"), state_timer/4, x + 22*spr_dir, y - 36, spr_dir, 1, 0, -1, 1)
        }
        
        if ncharge >= 50 {
            draw_sprite_ext(sprite_get("ball3"), state_timer/3, x + 22*spr_dir, y - 36, spr_dir, 1, 0, -1, 1)
        }
        
    }
}


if sagemode <= -1 && (!attacking or (attacking && attack != AT_USPECIAL) or (attacking && attack == AT_USPECIAL && window != 2 && window != 3))  {
    draw_sprite_ext(sprite_get("ball3"),  get_gameplay_time() / 4 + 1, sagefx1 + 15 - random_func(1,2,true), sagefy1 - 1 + random_func(6,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -2 {
    draw_sprite_ext(sprite_get("ball3"),  get_gameplay_time() / 4 + 2, sagefx2 - 15 + random_func(2,2,true), sagefy2 - 1 + random_func(7,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -3 {
    draw_sprite_ext(sprite_get("ball3"),  get_gameplay_time() / 4 + 3, sagefx3 + 21 - random_func(3,2,true), sagefy3 - 30 - 1 + random_func(8,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -4 {
        draw_sprite_ext(sprite_get("ball3"),  get_gameplay_time() / 4 + 4, sagefx4 - 21 + random_func(4,2,true), sagefy4 - 30 - 1 + random_func(9,2,true), 1, 1, 0, -1, 1)
    if sagemode <= -5 {
        draw_sprite_ext(sprite_get("ball3"),  get_gameplay_time() / 4 + 5, sagefx5 - 1 + random_func(5,2,true) , sagefy5 - 54 - 1 + random_func(10,2,true), 1, 1, 0, -1, 1)
}
    
}
        
}

}

}
}

if attacking && attack == AT_USPECIAL && window == 2 {
    draw_sprite_ext(sprite_index, image_index - 1, x - shsp*2, y - svsp*2, spr_dir, 1, 0, -1, 0.6)
    draw_sprite_ext(sprite_index, image_index - 2, x - shsp*3, y - svsp*3, spr_dir, 1, 0, -1, 0.4)
}

if attacking && attack == 49 && window == 1 {
    	draw_set_alpha(0.3);
        draw_rectangle_color(0,0,room_width,room_height,0,0,0,0,false);
    	draw_set_alpha(1);
}

shader_end() 

