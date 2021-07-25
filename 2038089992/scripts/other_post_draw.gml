//other-post-draw

//kirby meter

if instance_exists(other_player_id) && ("enemykirby" in self) && other_player_id.enemykirby != undefined && current_ability != 0 {
    with other_player_id {
        other.meter_sprite = sprite_get("meter")
        other.meter_water_sprite = sprite_get("water_bar")
    }
    
    draw_sprite(meter_sprite, 0, x-32, y-78);
    draw_sprite(meter_water_sprite, kirby_water, x-32, y-78);
}