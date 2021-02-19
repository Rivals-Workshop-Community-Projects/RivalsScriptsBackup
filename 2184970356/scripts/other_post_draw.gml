//other_post_draw

var	buff_sprite = noone;
var	debuff_sprite = noone;
 
with (other_player_id){
	buff_sprite = sprite_get("buff");
	debuff_sprite = sprite_get("debuff");
}

if (player_buff){
	draw_debug_text(x - 25, y - char_height - 25, "SPD");
	draw_sprite(buff_sprite, get_gameplay_time() / 4, x + 10, y - char_height);
}

if (player_debuff){
	draw_debug_text(x - 25, y - char_height - 25, "SPD");
	draw_sprite(debuff_sprite, get_gameplay_time() / 4, x + 10, y - char_height);
}
