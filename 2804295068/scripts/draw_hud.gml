//bean packet
var bean_packet_shader = c_gray;
var bean_bomb_recharge_yscale = ((round((900-bean_bomb_recharge)/45))/20)
if (bean_bomb_recharge >= 900){
    bean_packet_shader = c_white;
}
draw_sprite_ext(sprite_get("bean_bomb_packet"), 0, temp_x+94, temp_y-46, 1, 1, 0, bean_packet_shader, 1);
draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+96, temp_y-44, 1, bean_bomb_recharge_yscale, 0, c_black, 0.5);

//torchwood packet
var torchwood_packet_shader = c_gray;
var torchwood_recharge_yscale = ((round((900-torchwood_recharge)/45))/20)
if (torchwood_recharge >= 900){
    torchwood_packet_shader = c_white;
	
}
draw_sprite_ext(sprite_get("torchwood_packet"), 0, temp_x+156, temp_y-46, 1, 1, 0, torchwood_packet_shader, 1);
draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+158, temp_y-44, 1, torchwood_recharge_yscale, 0, c_black, 0.5);

if (practice_mode && (bean_bomb_recharge < 900 || torchwood_recharge < 900)){
    draw_debug_text(temp_x+94, temp_y - 60, "Taunt to refresh")
}