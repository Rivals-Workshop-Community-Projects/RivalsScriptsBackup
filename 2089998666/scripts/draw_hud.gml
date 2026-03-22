//HUD stuff to show how many Yoshi Cookies you have

if (variable_instance_exists(id, "cookie_inventory") && array_length_1d(cookie_inventory) == 3) {
    
    for (var i = 0; i < 3; i++) {
        var is_empty = (cookie_inventory[i] == -1);
        
        // Slot 0 (Flower): Full = 0, Empty = 1
        // Slot 1 (Checker): Full = 2, Empty = 3
        // Slot 2 (Yoshi): Full = 4, Empty = 5
        var draw_frame = (i * 2) + (is_empty ? 1 : 0);
        
        draw_sprite(sprite_get("cookiemeter"), draw_frame, temp_x + 20 + (i * 22), temp_y - 6 - (i * 2));
    }
}