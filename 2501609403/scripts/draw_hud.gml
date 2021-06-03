shader_start()

draw_sprite(sprite_get("hud_inventory"), 2, temp_x + 172, temp_y - 2);




if ("proj_stored" in self){
    if (proj_stored == true){
        if (jackpot == false){
            //draw_sprite(sprite_get("hud_inventory2"), nspecial_number, temp_x + 162, temp_y - 20); 
            draw_sprite_ext(sprite_get("hud_inventory2"), nspecial_number, temp_x + 174, temp_y - 8, (1 + (store_timer / 6)), (1 + (store_timer / 6)), 0, c_white, (store_timer2 / 10));
        } else {
            draw_sprite_ext(sprite_get("hud_inventory2"), 6, temp_x + 174, temp_y - 8, (1 + (store_timer / 6)), (1 + (store_timer / 6)), 0, c_white, (store_timer2 / 10))
        }
    }
}
shader_end()
user_event(11);