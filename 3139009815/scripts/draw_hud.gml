// prevents draw_hud from running a frame too early and spitting an error
if "phone" not in self exit;

/*/menue
    draw_debug_text( temp_x+60, temp_y-45, "state : " + get_state_name(state));
    draw_debug_text( temp_x+60, temp_y-60, "state timer : " + string(state_timer));
    draw_debug_text( temp_x+60, temp_y-75, "attack : " + string(attack));
    draw_debug_text( temp_x+60, temp_y-90, "window : " + string(window));
    draw_debug_text( temp_x+60, temp_y-105, "window timer : " + string(window_timer));
    draw_debug_text( temp_x- 15, temp_y-45, "hsp: " + string(hsp));
    draw_debug_text( temp_x- 15, temp_y-60, "vsp: " + string(vsp));
    draw_debug_text( temp_x- 15, temp_y-75, "grav: " + string(grav));
    draw_debug_text( 10, 10, "FPS : " + string(fps_real));
    
    draw_debug_text(10, 30, "Lantern Level: " + string(lantern_level));
    draw_debug_text(10, 60, "Lantern charge: " + string(lantern_charge));
    draw_debug_text(10, 90, "Install Animation Timer: " + string(install_background_anim_timer));
*/

// Lantern meter

var meter_x = temp_x + 22;
var meter_y = temp_y - 22;

shader_start();

if install_timer <= 0 {
    lantern_charge_visual = lerp(lantern_charge_visual, lantern_charge, 0.2)

    var meter_charge_sprite = sprite_get("meter_charge");
    var meter_charge_value = lantern_charge_visual / lantern_charge_max;

    draw_sprite(sprite_get("meter_back"), 0, meter_x, meter_y);
    draw_sprite_part(meter_charge_sprite, floor(get_gameplay_time() / 6) % 3, 0, 0, sprite_get_width(meter_charge_sprite) * meter_charge_value, sprite_get_height(meter_charge_sprite), meter_x, meter_y);
    draw_sprite(sprite_get("meter_front"), 0, meter_x, meter_y);
} else {
    var install_meter_activate_anim_time = 20

    var install_animation_timer = install_timer_max - install_timer
    if install_animation_timer < install_meter_activate_anim_time {
        draw_sprite(sprite_get("meter_activation"), floor(install_animation_timer * 3 / install_meter_activate_anim_time), meter_x, meter_y);
        install_timer_visual = 0;
    } else {
        install_timer_visual = lerp(install_timer_visual, install_timer, 0.2);

        var meter_charge_sprite = sprite_get("meter_install_flame")
        var meter_charge_value = install_timer_visual / install_timer_max;

        var meter_charge_right = (sprite_get_width(meter_charge_sprite) * meter_charge_value)
        var meter_charge_left = (sprite_get_width(meter_charge_sprite) / 2) - meter_charge_right / 2

        draw_sprite_part(sprite_get("meter_install_flame"), floor(get_gameplay_time() / 6) % 3, meter_charge_left, 0, meter_charge_right, sprite_get_height(meter_charge_sprite), meter_x + meter_charge_left, meter_y);
        draw_sprite(sprite_get("meter_install"), 0, meter_x, meter_y);
    }
}

shader_end();

// MunoPhone Touch code - don't touch
// should be at BOTTOM of file, but above any #define lines
muno_event_type = 5; 
user_event(14);


