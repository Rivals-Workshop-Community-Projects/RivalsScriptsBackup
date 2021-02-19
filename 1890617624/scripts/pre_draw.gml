
if url != 1890617624{
	return;
}

shader_start();

if awakening and not(attack == AT_EXTRA_3 and window > 6) and not(attack == AT_TAUNT_2){
    gpu_set_blendmode(bm_subtract)
    gpu_set_colorwriteenable(false,true,true,true);
    
    var afterimagesize = 1 + ((get_gameplay_time()) % 20) * 0.05
    var alpha = 1 - ((get_gameplay_time() % 20) * 0.05)
    draw_sprite_ext(sprite_index,image_index,x,y - ((afterimagesize - 1) * char_height / -2),spr_dir * afterimagesize,afterimagesize,0,c_white,alpha);
    
    gpu_set_blendmode(bm_add)
    gpu_set_colorwriteenable(true,false,false,true);
    
    var afterimagesize = 1 + ((get_gameplay_time() + 10) % 20) * 0.05
    var alpha = 1 - (((get_gameplay_time() + 10) % 20) * 0.05)
    draw_sprite_ext(sprite_index,image_index,x,y - ((afterimagesize - 1) * char_height / -2),spr_dir * afterimagesize,afterimagesize,0,c_white,alpha);
    
    gpu_set_colorwriteenable(true,true,true,true);
    gpu_set_blendmode(bm_normal)
}

// Super Darken
if attack = AT_EXTRA_1 and window <= 3 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_black, 0.5);
}

if attack = AT_UTHROW and window <= 3 and (state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
    draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_black, 0.5);
}

if attack = AT_EXTRA_2 and window >= 2{
    
    explodetimer += 1
    
    if explodetimer < 120{
        var bgalpha = explodetimer * 0.05
        if bgalpha > 0.5{
            bgalpha = 0.5;
        }
        
        draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, bgalpha);
        
        var rand3 = random_func( 3, 360, true )
        
        var scale = explodetimer * 0.06
        
        draw_sprite_ext(sprite_get("blackhole"), 0, x, y - 50, scale, scale, rand3, c_white, explodetimer * 0.1);
        
        shaketimer = explodetimer % 30
        var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
        draw_sprite_ext(sprite_get("shockwave"), 0, x, y - 50, scale, scale, rand3, c_white, explodetimer * 0.1);
        
        shaketimer = (explodetimer + 10) % 30
        var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
        draw_sprite_ext(sprite_get("shockwave"), 0, x, y - 50, scale, scale, rand3, c_white, explodetimer * 0.1);
        
        shaketimer = (explodetimer + 20) % 30
        var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
        draw_sprite_ext(sprite_get("shockwave"), 0, x, y - 50, scale, scale, rand3, c_white, explodetimer * 0.1);
    }
}

if attack = AT_EXTRA_3 and window >= 3 and window <= 6{
    
    screechtimer += 1
    
    if screechtimer < 80 or (awakening and screechtimer < 130){
        if screechtimer < 40 or (awakening and screechtimer < 90){
            var alpha = screechtimer * 0.1
        } else{
            if awakening{
                var alpha = 1 - (screechtimer - 90) * 0.05
            } else{
                var alpha = 1 - (screechtimer - 40) * 0.05
            }
        }
        
        if screechtimer < 40 or (awakening and screechtimer < 90){
            var bgalpha = screechtimer * 0.05
        } else{
            if awakening{
                var bgalpha = 0.5 - (screechtimer - 90) * 0.05
            } else{
                var bgalpha = 0.5 - (screechtimer - 40) * 0.05
            }
        }
        if bgalpha > 0.5{
            bgalpha = 0.5;
        }
        
        if awakening{
            draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_black, bgalpha*1.5);
        } else{
            draw_sprite_ext(sprite_get("white"), 0, view_get_xview(), view_get_yview(), view_get_hview() * 2, view_get_wview(), 0, c_white, bgalpha);
        }
        
        shader_end()
        shader_start()
        
        var rand3 = random_func( 3, 360, true )
        var scale = screechtimer * 0.08
        
        if awakening{
            gpu_set_blendmode(bm_add)
            gpu_set_colorwriteenable(true,true,true,true);
            
            shaketimer = screechtimer % 30
            var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
            draw_sprite_ext(sprite_get("shockwave_r"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
            
            shaketimer = (screechtimer + 10) % 30
            var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
            draw_sprite_ext(sprite_get("shockwave_r"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
            
            shaketimer = (screechtimer + 20) % 30
            var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
            draw_sprite_ext(sprite_get("shockwave_r"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
            
            
            gpu_set_blendmode(bm_add)
            gpu_set_colorwriteenable(true,false,false,true);
            
            draw_sprite_ext(sprite_get("blackhole_r"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
            
            gpu_set_blendmode(bm_normal)
            gpu_set_colorwriteenable(true,true,true,true);
        }
        else{
            draw_sprite_ext(sprite_get("blackhole"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
            
            shaketimer = screechtimer % 30
            var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
            draw_sprite_ext(sprite_get("shockwave"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
            
            shaketimer = (screechtimer + 10) % 30
            var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
            draw_sprite_ext(sprite_get("shockwave"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
            
            shaketimer = (screechtimer + 20) % 30
            var scale = shaketimer * 0.4 * (1 - (shaketimer * 1/30 * 0.3))
            draw_sprite_ext(sprite_get("shockwave"), 0, x, y - 50, scale, scale, rand3, c_white, alpha);
        }
    }
}

shader_end();