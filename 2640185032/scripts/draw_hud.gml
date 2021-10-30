if("knives" not in self) exit;

shader_start();


if(knives > 0){
    for(var i = 0; i < knives; i++){
        draw_sprite_ext(spr_stack, 0, temp_x + 20 + (i * 6), temp_y - 6, 2, 2, 0, c_white, 1);
    }
    if(knives == 6){
        var k = sin(degtorad(3 * (get_gameplay_time() % 60)));
        if (k > 0.8) k = 0.8;
        draw_sprite_ext(sprite_get("hud_stackfull"), 0, temp_x + 20, temp_y - 6, 2, 2, 0, c_white, k);
    }
}


shader_end();