//if (!custom_clone) draw_debug_text(x, y, string(buffer_up_down));

//draw_hud.gml – used to draw on top of the player’s HUD. To get the position of the HUD, use temp_x and temp_y.

if (is_master_player || custom_clone) exit;
shader_start();
var inner_hud_x = temp_x + 28;
var inner_hud_y = temp_y + 8;

draw_sprite(spr_hud_plusminus, species_id, temp_x + 166, temp_y - 16);
draw_sprite(spr_hud_baton, !nspecial_can_use_baton, temp_x + 186, temp_y - 14);

if (is_solo_player) {
    if (!visual_low_quality) {
        draw_sprite(spr_active_hud_back, 0, inner_hud_x, inner_hud_y);
        draw_sprite_part(spr_active_hud, species_id + 2 * visual_hud_icon_hurt, -visual_hud_icon_offset_x, 4, 48, 32, inner_hud_x, inner_hud_y);
    }
    shader_end();
    exit;
}

var teammate_exists = instance_exists(teammate_player_id);

if (instance_exists(teammate_player_id)) {
    with (teammate_player_id) {
        if (!visual_low_quality) {
            draw_sprite(spr_active_hud_back, 0, inner_hud_x, inner_hud_y);
            draw_sprite_part(spr_active_hud, species_id + 2 * visual_hud_icon_hurt, -visual_hud_icon_offset_x, 4, 48, 32, inner_hud_x, inner_hud_y);
        }
        if (other.state != PS_RESPAWN && other.state != PS_DEAD) {
            draw_set_halign(fa_right);
            draw_set_font(font_fname);
            draw_text_color(inner_hud_x + 158, inner_hud_y + 2, string(damage_percent_as_teammate) + "%", c_silver, c_silver, c_silver, c_silver, 1);
        }
    }
    draw_sprite_part(spr_active_hud, species_id + 2 * visual_hud_icon_hurt, -visual_hud_icon_offset_x, 4, 48, 32, inner_hud_x, inner_hud_y);
    
}
else if (!visual_low_quality) {
    draw_sprite(spr_active_hud_back, 0, inner_hud_x, inner_hud_y);
    draw_sprite_part(spr_active_hud, species_id + 2 * visual_hud_icon_hurt, -visual_hud_icon_offset_x, 4, 48, 32, inner_hud_x, inner_hud_y);
}
shader_end();
//draw_sprite_part(spr_active_hud, (!species_id) + 2 * (teammate_hurt >= 1), -teammate_offset_x, 2 * (teammate_hurt != 2), 48, 32, inner_hud_x, inner_hud_y);


