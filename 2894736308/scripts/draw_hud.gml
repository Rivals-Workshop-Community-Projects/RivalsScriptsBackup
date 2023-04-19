if("add_on" not in self) exit;

//normal hud
for(var i = 0; i < 3; i++){
    if(i != ring_equipped || (hud_close > -1 && i != hud_close_type)){
        draw_sprite_ext(sprite_get("hud_icons"), i, temp_x + 6 + (26 * i), temp_y - 20, 1, 1, 0, c_white, 1);
        
        //cooldown visual
        if(ring_cd[i] > 0){
            var h = 0;
            var h2 = 22;
            if(i == 0){
                h = 4;
                h2 = 18;
            }
            draw_sprite_part(sprite_get("hud_cd"), i, 0, h, 24, (ring_cd[i]/ring_time_cd) * h2, temp_x + 6 + (26 * i), temp_y - 20 + h);
        }
        //darken out ones not selected
        if(i != add_on || (ring_out != noone && ring_out.type == i) || suppress_hud){
            draw_sprite_ext(sprite_get("hud_light"), i, temp_x + 6 + (26 * i), temp_y - 20, 1, 1, 0, c_black, 0.5);
        }
        //light flash when off cd
        if(hud_flash_timer[i] > 0){
            draw_sprite_ext(sprite_get("hud_light"), i, temp_x + 6 + (26 * i), temp_y - 20, 1, 1, 0, c_white, 0.2 + (hud_flash_timer[i]/10));
        }
    }
}
//close hud when dspec got no more juice
if(hud_close > -1){
    draw_sprite_ext(sprite_get("hud_meter"), 2 + (3 * hud_close_type), temp_x + 8, temp_y - 22, 2, 2, 0, c_white, 1);

//dspec meter
}else if(ring_equipped > -1){
    var i = 1;
    if(ring_timer < 4) i = 0;
    draw_sprite_ext(sprite_get("hud_meter"), i + (3 * ring_equipped), temp_x + 8, temp_y - 22, 2, 2, 0, c_white, 1);
    draw_sprite_part(sprite_get("hud_meter_fill"), ring_equipped, 0, 0, ((ring_time_max - ring_timer)/ring_time_max) * 120, 4, temp_x + 6, temp_y - 2);
}
