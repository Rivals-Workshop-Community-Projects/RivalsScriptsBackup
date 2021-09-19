if malsick == true
{
with (other_player_id)
    {
        draw_sprite(sprite_get("sick"), 0, other.x-20, other.y-20)
    }
}

if (strongStunnedTimer > 0)
{
	var a = 1;
	var centerX = x;
	var distX = 20;//the positions from each side to move from
	var angle = point_direction(x,y,x+distX,y-char_height)+360;
	with(other_player_id)
	{
	
		draw_sprite_ext(sprite_get("chain_link"), get_gameplay_time()/10, centerX-distX, other.y, 1, 1, angle, c_white, a);
		draw_sprite_ext(sprite_get("chain_link"), get_gameplay_time()/10, centerX+distX, other.y, 1, 1, 180-angle, c_white, a);
	}
}