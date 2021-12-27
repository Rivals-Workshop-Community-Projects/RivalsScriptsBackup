//a
if holding_present {
    shader_start();
    draw_sprite_ext(present_id.sprite_index,present_id.image_index, x - 30 * spr_dir, y - 25,1,1,0,c_white,0.75);
    shader_end();
}

if should_debug {
    draw_debug_text(x - 15, y + 30,"Attack: "+string(attack));
    draw_debug_text(x - 15, y + 45,"Window: "+string(window));
    draw_debug_text(x - 15, y + 60,"Window Timer: "+string(window_timer));
    draw_debug_text(x - 15, y + 75,"Holding Present: "+string(holding_present));
    draw_debug_text(x - 15, y + 90,"Present Exists: "+string(instance_exists(present_id)));
    
    
    if instance_exists(present_id) {
        draw_debug_text(present_id.x - 15, present_id.y + 30,"Is Present");
    }
}

