//post-draw



//Determine water droplet RNG positions, then draw them, then set outline according to Trummel's costume (this is a mess...)

if (soaked && other_player_id == soaked_id){
    with (soaked_id){
        //sprite_get can only be called directly by the workshop character
        if ((other.char_height > 46 && other.select != 7 && other.select != 13 && !other.usesmallsoak) || other.usedefaultsoak){
            soaked_sprite = spr_soaked;
            soaked_sprite_shine = spr_soaked_shine;
            groundoverride = 10;
        }else{
            soaked_sprite = spr_soakedshort;
            soaked_sprite_shine = spr_soakedshort_shine;
            groundoverride = 9;
        }
        soaked_subtimer = get_gameplay_time() / 6;
        soaked_subtimer2 = (get_gameplay_time() + 4 * 6) / 6;
        soaked_subtimer3 = (get_gameplay_time() + 8 * 6) / 6;
        soaked_timer = soaked_subtimer mod 11;
        soaked_timer2 = soaked_subtimer2 mod 11;
        soaked_timer3 = soaked_subtimer3 mod 11;
        
        
        
        
        
        
        if (glitchtimer > 0){
            if (soaked_sprite == spr_soaked){
                soaked_sprite = sprite_get("01soakedglitched");
                soaked_sprite_shine = sprite_get("01soakedglitched_shine");
            }
            else{
                soaked_sprite = sprite_get("01soakedshortglitched");
                soaked_sprite_shine = sprite_get("01soakedshortglitched_shine");
            }
        }
        
        
        
        if (soaked_timer < 0.5 && !soakedreset){
            soakedx = (random_func(0, 100, true) - 50) / 2;
            soakedy = (random_func(0, -20, true) - 122) / 2;
            soakedreset = true;
            other.shoulddrawsoak1 = true;
        }
        if (soaked_timer2 < 0.5 && !soakedreset2){
            soakedx2 = (random_func(0, 100, true) - 50) / 2;
            soakedy2 = (random_func(0, -20, true) - 122) / 2;
            soakedreset2 = true;
            other.shoulddrawsoak2 = true;
        }
        if (soaked_timer3 < 0.5 && !soakedreset3){
            soakedx3 = (random_func(0, 100, true) - 50) / 2;
            soakedy3 = (random_func(0, -20, true) - 122) / 2;
            soakedreset3 = true;
            other.shoulddrawsoak3 = true;
        }
        
        var soakopacity = 1;
        
        if other.halfunsoaked{
            if (floor(get_gameplay_time() mod soak_blink_rate) < floor(soak_blink_rate / 5)){
                soakopacity = ease_cubeInOut(0, 1, floor(get_gameplay_time() mod soak_blink_rate), floor(soak_blink_rate / 5));
            }
            else if (floor(get_gameplay_time() mod soak_blink_rate) > floor(soak_blink_rate * 4 / 5)){
                soakopacity = ease_cubeInOut(1, 0, floor((get_gameplay_time() mod soak_blink_rate) - soak_blink_rate * 4 / 5), floor(soak_blink_rate / 5));
            }
            else{
                soakopacity = 1;
            }
        }
        
        var shineopacity = 1;
        
        
        if (floor(get_gameplay_time() mod soak_blink_rate) < floor(soak_blink_rate / 5)){
            shineopacity = ease_cubeInOut(1, 0, floor(get_gameplay_time() mod soak_blink_rate), floor(soak_blink_rate / 5));
        }
        else if (floor(get_gameplay_time() mod soak_blink_rate) > floor(soak_blink_rate * 4 / 5)){
            shineopacity = ease_cubeInOut(0, 1, floor((get_gameplay_time() mod soak_blink_rate) - soak_blink_rate * 4 / 5), floor(soak_blink_rate / 5));
        }
        else{
            shineopacity = 0;
        }
        
        shineopacity *= 0.6;
        
        if (soaked_timer > 3){
            soakedreset = false;
        }
        if (soaked_timer2 > 3){
            soakedreset2 = false;
        }
        if (soaked_timer3 > 3){
            soakedreset3 = false;
        }
        
        
        
        if (glitchtimer == 0){
            shader_start();
        }
        
        if other.shoulddrawsoak1{
            if (soaked_timer == groundoverride && !other.free){
                soakedy = -62;
            }
            draw_sprite_ext(soaked_sprite, soaked_timer, other.x + soakedx, other.y + soakedy, 1, 1, 0, c_white, soakopacity);
            draw_sprite_ext(soaked_sprite_shine, soaked_timer, other.x + soakedx, other.y + soakedy, 1, 1, 0, c_white, shineopacity * soakopacity);
        }
        if other.shoulddrawsoak2{
            if (soaked_timer2 == groundoverride && !other.free){
                soakedy2 = -62;
            }
            draw_sprite_ext(soaked_sprite, soaked_timer2, other.x + soakedx2, other.y + soakedy2, 1, 1, 0, c_white, soakopacity);
            draw_sprite_ext(soaked_sprite_shine, soaked_timer2, other.x + soakedx2, other.y + soakedy2, 1, 1, 0, c_white, shineopacity * soakopacity);
        }
        if other.shoulddrawsoak3{
            if (soaked_timer3 == groundoverride && !other.free){
                soakedy3 = -62;
            }
            draw_sprite_ext(soaked_sprite, soaked_timer3, other.x + soakedx3, other.y + soakedy3, 1, 1, 0, c_white, soakopacity);
            draw_sprite_ext(soaked_sprite_shine, soaked_timer3, other.x + soakedx3, other.y + soakedy3, 1, 1, 0, c_white, shineopacity * soakopacity);
        }
        
        if (glitchtimer == 0){
            shader_end();
        }
        
        switch (get_player_color(player)){
            case 0:
                other.outline_color = [ 39, 39, 134 ];
                break;
            case 1:
                other.outline_color = [ 36, 38, 78 ];
                break;
            case 2:
                other.outline_color = [ 81, 28, 23 ];
                break;
            case 3:
                other.outline_color = [ 27, 62, 19 ];
                break;
            case 4:
                other.outline_color = [ 0, 150, 204 ];
                break;
            case 5:
                other.outline_color = [ 175, 38, 85 ];
                break;
            case 6:
                other.outline_color = [ 204, 42, 32 ];
                break;
            case 7:
                other.outline_color = [ 39, 39, 134 ];
                break;
            /*case 6:
                other.outline_color = [ 76, 19, 117 ];
                break;
            case 7:
                other.outline_color = [ 50, 44, 23 ];
                break;*/
        }
        
        other.outline_color = [ blue_red[0], blue_gre[0], blue_blu[0] ];
        
        other.outline_color = [other.outline_color[0] * soakopacity, other.outline_color[1] * soakopacity, other.outline_color[2] * soakopacity];
    }
    init_shader();
}else{
    outline_color = [ 0, 0, 0 ];
}