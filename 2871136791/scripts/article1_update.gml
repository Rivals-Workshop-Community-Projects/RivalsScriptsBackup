//article1_update
ignores_walls = false;

if (prevState != state)
{
	prevState = state;
	var new_sprite = sprite_get("puul_idle");
	if (sprite_index != new_sprite)
	{
		sprite_index = new_sprite;
		image_index = 0;
	}
}

visible = true;
switch (state)
{
	case 0: // not out
		var xLoc = -40;
		var yLoc = -50;
		if (player_id.attack == AT_FSPECIAL && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.window <= 2)
		{
			xLoc = 0;
			yLoc = -30;
			if (player_id.state_timer > 4) visible = false;
		}
		hsp = ((player_id.x + xLoc*player_id.spr_dir) - x)/3;
		vsp = ((player_id.y + yLoc) - y)/3;
		var newDir = sign(hsp);
		if (newDir != 0) spr_dir = newDir;
		break;
	case 1: // 1: idle
		PuulMove(temp_x, temp_y);
		break;
	case 2: // aiming
		if (player_id.attack != AT_USPECIAL || player_id.window != 1)
		{
			player_id.birdOut = true;
			state = 4;
			moving_timer = 20*(player_id.runeB?0.5:1);
		}
		if (state_timer == 0)
		{
			hsp = 0;
			vsp = 0;
		}
		var offset = 45;
		hsp = ((player_id.x + lengthdir_x(offset, joy)) - x)/3;
		vsp = ((player_id.y - 25 + lengthdir_y(offset, joy)) - y)/3;
		var newDir = sign(lengthdir_x(offset, joy));
		if (newDir != 0) spr_dir = newDir;
		break;
	case 3: // returning
		PuulMove(player_id.x, player_id.y - 25);
		break;
	case 4: // flying out
		var spd = (player_id.runeB?16:8);
		hsp = lengthdir_x(spd, joy);
		vsp = lengthdir_y(spd, joy);
		var newDir = sign(hsp);
		if (newDir != 0) spr_dir = newDir;
		moving_timer -= 1;
		if (moving_timer == 0)
		{
			state = 1;
			temp_x = x;
			temp_y = y;
			vsp = 0;
			hsp = 0;
			state_timer = 0;
		}
		break;
	case 5: // follow opponent
		if (instance_exists(player_id.hit_player_obj))
			PuulMove(player_id.hit_player_obj.x, player_id.hit_player_obj.y - 25);
		break;
	case 6: // free roam
		if (!player_id.joy_pad_idle)
		{
			var angle = player_id.joy_dir;
			PuulMove(x+lengthdir_x(6, angle), y+lengthdir_y(6, angle));
		}
		
		if (!player_id.special_down)
		{
			state = 1;
			temp_x = x;
			temp_y = y;
			hsp = 0;
			vsp = 0;
			state_timer = 0;
		}
		break;
	case 7: // taunt
		if (state_timer == 0)
		{
			hsp = 0;
			vsp = 0;
			temp_x = x;
			temp_y = y;
		}
		if (state_timer < 60)
		{
			var offset = 10;
			x = temp_x - cos(state_timer/5)*offset+offset;
			y = temp_y + sin(state_timer/5)*offset+offset/2;
		}
		else
		{
			state = player_id.birdOut;
			state_timer = 0;
			x = temp_x;
			y = temp_y;
		}
		break;
}

switch (state) // anim
{
	default:
		if (state_timer % 4 == 0) image_index++;
		if (sprite_index != sprite_get("puul_idle") && image_index == image_number)
		{
			sprite_index = sprite_get("puul_idle");
			image_index = 0;
		}
		break;
}

++state_timer;

#define PuulMove(_x, _y)
{
	if (state_timer > 60 * 4) ignores_walls = true;
	
	angle = point_direction(x, y, _x, _y)
	
	if (point_distance(_x, _y, x, y) > radius)
	{
		hsp = lengthdir_x(8, angle);
		vsp = lengthdir_y(8, angle);
	}
	else
	{
		hsp = lengthdir_x(6.5, angle);
		vsp = lengthdir_y(6.5, angle);
	}
	if (hit_wall || !free)
	{
		if (hsp > 0){ hsp = 8; }
		else if (hsp < 0){ hsp = -8; }
		if (vsp > 0){ vsp = 8; }
		else if (vsp < 0){ vsp = -8; }
	}
	
	var newDir = sign(_x-x);
	if (newDir != 0) spr_dir = newDir;
	
	if (point_distance(x,y,_x,_y)<48) switch (state)
	{
		case 3:
			state = 0;
			state_timer = 0;
			player_id.birdOut = false;
			angle = 0;
			hsp = 0;
			vsp = 0;
			break;
		default:
			hsp = 0;
			vsp = 0;
			x = _x;
			y = _y;
			break;
	}
	hsp *= (player_id.runeB?2:1);
	vsp *= (player_id.runeB?2:1);
}