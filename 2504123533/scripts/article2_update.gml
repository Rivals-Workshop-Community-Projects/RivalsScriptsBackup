//viselle dummy sprite update

image_index += img_spd;

if image_index >= spawnFrame && !spawned
{
	spawned = true;
	with(player_id)
	{
		var h = create_hitbox(other.storedAttack,2,other.x,other.y);
		h.type = 2;
		h.sprite_index = sprite_get("empty");
		h.mask_index = -1;
		h.transcendent = true;
		h.unbashable = h.does_not_reflect = true;
		h.enemies = h.walls = h.grounds = 1;
		h.x += h.x_pos;
		h.y += h.y_pos;
	}
}

if !framed && image_index >= image_number - 2
{
	framed = true;
	with(player_id)
	{
		var f = spawn_hit_fx(other.x,other.y, jcaul);
		f.depth = depth-1;
	}
}

endOfFrames();

#define endOfFrames()
{
	if image_index >= image_number
	{
		instance_destroy();
	}
}