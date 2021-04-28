//hud
if "flower_on_cooldown" in self {
    if (!flower_on_cooldown) {
        draw_sprite(sprite_get("hud_flower"),0,temp_x + 165,temp_y - 32)
    } else {
        draw_sprite(sprite_get("hud_flower"),1,temp_x + 165,temp_y - 32)
    }
}

user_event(11);