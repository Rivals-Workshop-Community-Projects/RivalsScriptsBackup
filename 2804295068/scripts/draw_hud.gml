//bean packet
var bean_packet_shader = c_gray;
var bean_bomb_recharge_yscale = ((ceil((450-bean_bomb_recharge)/22.5))/20)

if (bean_bomb_recharge >= 450){
    bean_packet_shader = c_white;
}

draw_sprite_ext(sprite_get("bean_bomb_packet"), 0, temp_x+94, temp_y-42, 1, 1, 0, bean_packet_shader, 1);

draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+96, temp_y-40, 1, bean_bomb_recharge_yscale, 0, c_black, 0.5);

//torchwood packet

var torchwood_packet_shader = c_gray;
var torchwood_recharge_yscale = ((ceil((300-torchwood_recharge)/15))/20)
var torchwood_exists = false;

with (obj_article1){
    if (player_id == other.id){
        torchwood_exists = true;
    }
}

if (torchwood_recharge >= 300) && (!torchwood_exists){
    torchwood_packet_shader = c_white;
}

shader_start();
draw_sprite_ext(sprite_get("torchwood_packet"), 0, temp_x+156, temp_y-42, 1, 1, 0, torchwood_packet_shader, 1);
shader_end();

draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+158, temp_y-40, 1, torchwood_recharge_yscale, 0, c_black, 0.5);

draw_set_font(asset_get("fName"));
if (alert_text_timer > 0){
    draw_debug_text(temp_x+112, temp_y - 56, "recharging...");
	if (alert_text_timer mod 8 >= 4){
		draw_text_colour(temp_x+112, temp_y - 56, "recharging...", c_red, c_red, c_red, c_red, 1);
	}
} else if (practice_mode && (bean_bomb_recharge < 450 || torchwood_recharge < 300)){
    draw_debug_text(temp_x+94, temp_y - 56, "Taunt to refresh")
}