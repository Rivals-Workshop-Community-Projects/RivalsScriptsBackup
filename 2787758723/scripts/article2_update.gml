//article2_update, Firebars (exclusive to Mario)


if (!_init) {
	fire_num = spawn_variables[0] <= 0 ? 3 : spawn_variables[0];
	rotation_speed = spawn_variables[1];
	start_angle = spawn_variables[2];
	x += 16;
	y += 24;
	fire = array_create(20, {
			sprite_index : sprite_get("fireball"),
			img_index : 0,
			x : 0,
			y : 0
		});
    visible = true;
    _init = 1;
}

start_angle += 1.7925 * rotation_speed
if start_angle > 360
   start_angle -= 360
if start_angle <= 360
   start_angle += 360
   


for (var i = 0; i < fire_num; i++)
{
	fire[i].x = floor(lengthdir_x((i + 1) * 20, start_angle));
	fire[i].y = floor(lengthdir_y((i + 1) * 20, start_angle));
	fire[i].img_index += 0.05;
	var player_near = collision_circle(x + fire[i].x, y + fire[i].y, 8, oPlayer, 1, 1);
	
	if (instance_exists(player_near)) {
	    with (player_near) {
	        if (state != PS_DEAD || state != PS_SPAWN) {
	        	if (!super_armor && soft_armor == 0 && (!invincible || am_mario_invincible > 0) && !hurtboxID.dodging && (("am_mario_health" in self) && am_mario_state == 0))
            	{
					if (am_mario_invincible == 0) {
						standard_player_hit(id);
					}
					
            	}
	        }
	    }
	}
}
		
		
#define array_cut(_array, _index)
var _array_cut = array_create(array_length_1d(_array)-1);
var j = 0;
for (var i = 0; i < array_length_1d(_array); i++) {
	if i != _index {
		_array_cut[@j] = _array[i];
		j++;
	}
}
return _array_cut;

#define standard_player_hit(_player)
if (!("am_mario_health" in _player)) return false;

_player.am_mario_health --;
if (_player.am_mario_health == 1) {
	_player.am_mario_state = 3;
	_player.am_mario_state_timer = 0;
}
if (_player.am_mario_health <= 0) {
	_player.am_mario_state = 1;
	_player.am_mario_state_timer = 0;
}
return true;