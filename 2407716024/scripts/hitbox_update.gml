if attack == AT_NSPECIAL {
	player_id.attack_cooldown[AT_NSPECIAL] = 90
}

switch (attack)
{
	case AT_NSPECIAL:
	// Gets any hitbox that is colliding with the bomb.
	var _hitbox = bomb_to_hitbox(id);
	if (_hitbox != noone)
	{
		with (_hitbox)
		{
			// Deletes the Bomb if it would come into contact with a melee hitbox.
			if (type == 1 && player_id != other.player_id)
			{
				other.y = 1000;
				other.destroyed = true;
			}
			
			// Bounces the bomb on contact with bullets.
			if (type == 2 && player_id == other.player_id && (attack == AT_FSPECIAL || attack == AT_FTILT))
			{
				other.vsp = -10;
				if (other.spr_dir != other.player_id.spr_dir) other.hsp *= -1;
				other.spr_dir = other.player_id.spr_dir;
			}
		}
	}
	
	with (oPlayer)
	{
		if (point_distance(x, y - floor(char_height / 2), other.x, other.y) < char_half_width * 2 && id != other.player_id)
		{
			other.hit_priority = 1;
		}
	}
	break;

	case AT_FTILT:
	if (type == 1) break;
	with (pHitBox)
	{
		if (player_id != other.player_id && point_distance(x, y, other.x, other.y) < 30 && type == 1)
		{
			other.y = 1000;
		}
	}
	break;
}

#define bomb_to_hitbox(_bomb_id)
// Because the bomb is a circle for its hitbox, it can accurately run collisions
// outside rivals system (which has the issue of either destroying the bomb
// if it isn't transcendent, or if it is then the opponent gets hit during
// trades if they try to use jointed melee hitboxes to destroy it).
var _left = _bomb_id.x - (_bomb_id.image_xscale * 100);
var _right = _bomb_id.x + (_bomb_id.image_xscale * 100);
var _top = _bomb_id.y - (_bomb_id.image_xscale * 100);
var _bottom = _bomb_id.y + (_bomb_id.image_xscale * 100);
return collision_circle(
		_bomb_id.x, _bomb_id.y, 
		_bomb_id.image_xscale * 200,
		pHitBox, false, true);

/*collision_rectangle(
		_left,
		_top,
		_right,
		_bottom,
		pHitBox, false, true);

	/*collision_circle(
		_bomb_id.x, _bomb_id.y, 
		_bomb_id.image_xscale * 200,
		_hitbox_id, true, true);

/*#define point_to_hitbox(_point_x, _point_y, _hitbox)
var _left = _hitbox.x - (_hitbox.image_xscale * 100);
var _right = _hitbox.x + (_hitbox.image_xscale * 100);
var _top = _hitbox.y - (_hitbox.image_xscale * 100);
var _bottom = _hitbox.y + (_hitbox.image_xscale * 100);
var _collider_type = noone;
ds_list_add(_hitbox.player_id.list_of_dots, [_left, _top]);
ds_list_add(_hitbox.player_id.list_of_dots, [_right, _bottom]);
with (_hitbox.player_id) _collider_type = get_hitbox_value(_hitbox.attack, _hitbox.hbox_num, HG_SHAPE);
if (_hitbox.uses_sprite_collision)
{
	// Sprite Collider.
	print("Cannot detect projectile mask collider!");
	return false;
	collision_circle
}
else if (_collider_type == 0)
{
	// Circle Collider.
	return 
			(power(_point_x - 0.5 * (_left + _right), 2)
			/ power(0.5 * abs(_right - _left), 2)
			+ power(_point_y - 0.5 * (_top + _bottom), 2)
			/ power(0.5 * abs(_bottom - _top), 2))
			< 1;
}
else
{
	// Box & Rounded Colliders.
	return 
			(_point_x >= _left && _point_x <= _right && 
			_point_y >= _top && _point_y <= _bottom);
}