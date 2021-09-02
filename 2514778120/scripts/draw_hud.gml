//Healthbar
draw_sprite_ext(sprite_get("hud_healthbar_back"), i > 0, temp_x, temp_y, 2, 2, 0, get_player_hud_color(player), 1);

for (var i = 0; i <= 1; i++) 
{
    var HP_BAR_X = temp_x + 18;
    var HP_BAR_Y = temp_y - 14 - (14 * i);
    
    var HP_ICON_X = HP_BAR_X - 32;
    var HP_ICON_Y = temp_y - 18 - (16 * i);
    
    
    var sword = sword_id[i];
    
    //draw_sprite_ext(sprite_get("hud_healthbar_bar"), 0, HP_BAR_X, HP_BAR_Y, 2, 2, 0, c_black, 1);
    shader_start();
    //Bar
    var bar_length = sprite_get_width(sprite_get("hud_healthbar_bar")) * max(0, ((sword.hitpoints_max - sword.percent) / sword.hitpoints_max));
    sword_bar_target[i] = lerp(sword_bar_target[i], bar_length, 0.3)
    draw_rectangle_color(HP_BAR_X, HP_BAR_Y, HP_BAR_X + sword_bar_target[i] * 2 + 1, HP_BAR_Y + sprite_get_height(sprite_get("hud_healthbar_bar")) * 2 + 1, c_white, c_white, c_white, c_white, false)
    draw_sprite_part_ext(sprite_get("hud_healthbar_bar"), i, 0, 0, sword_bar_target[i], sprite_get_height(sprite_get("hud_healthbar_bar")), HP_BAR_X, HP_BAR_Y, 2, 2, c_white, 1);

    
    var sword_state = nspecial_sword != i || sword.follow_type == 1;
    if (sword.state == PS_DEAD || sword.state == PS_RESPAWN) {
        sword_state = 2;
    }
    
    //Icons
    draw_sprite_ext(sprite_get("hud_swords"), i * 3 + sword_state, HP_ICON_X, HP_ICON_Y, 2, 2, 0, c_white, 1)
    shader_end();

}

//Final Smash shenanigains
if (attack == 49 && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND)) {
    var view_x = 0
    var view_y = 0
    if (window == 2) {
        var x_off = window_timer * 24;
        draw_sprite_tiled_ext(sprite_get("final_smash_bg2"), 0, x_off, 0, 2, 2, c_white, 1)
        draw_sprite_tiled_ext(sprite_get("final_smash_bg1"), 0, x_off * 3, 256, 2, 2, c_white, 1)
        
        var img = ease_linear(0, 29, window_timer, get_window_value(attack, window, AG_WINDOW_LENGTH))
        shader_start()
        draw_sprite_ext(sprite_get("final_smash_cinematic"), img, view_x + 480, view_y, 2 * spr_dir, 2, 0, c_white, 1)
        shader_end(); 
    }
}