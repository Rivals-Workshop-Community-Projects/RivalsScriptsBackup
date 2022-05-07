//bean packet
var bean_packet_shader = c_gray;
var bean_bomb_recharge_yscale = ((round((1800-bean_bomb_recharge)/90))/20)
if (bean_bomb_recharge >= 1800){
    bean_packet_shader = c_white;
}
draw_sprite_ext(sprite_get("bean_bomb_packet"), 0, temp_x+94, temp_y-46, 1, 1, 0, bean_packet_shader, 1);
draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+96, temp_y-44, 1, bean_bomb_recharge_yscale, 0, c_black, 0.5);

//torchwood packet
var torchwood_packet_shader = c_gray;
var torchwood_recharge_yscale = ((round((1800-torchwood_recharge)/90))/20)
if (torchwood_recharge >= 1800){
    torchwood_packet_shader = c_white;
	
}
draw_sprite_ext(sprite_get("torchwood_packet"), 0, temp_x+156, temp_y-46, 1, 1, 0, torchwood_packet_shader, 1);
draw_sprite_ext(sprite_get("packet_recharge"), 0, temp_x+158, temp_y-44, 1, torchwood_recharge_yscale, 0, c_black, 0.5);