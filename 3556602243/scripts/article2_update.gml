//

if (free) {
	vsp += buddy_grav;
}

var _left_most = (room_width / 2 - get_stage_data(SD_WIDTH) / 2) + 16;
var _right_most = (room_width / 2 + get_stage_data(SD_WIDTH) / 2) - 16;

//x = buddy_owner.x - buddy_owner.spr_dir * x_goal;
//y = buddy_owner.y
//spr_dir = buddy_owner.spr_dir

//print(x)
//print(y)

spr_dir = x > buddy_owner.x ? -1 : 1

can_be_grounded = true;
if (y > buddy_owner.y + max_dist_below) {
	if (!free) {
		vsp = -buddy_jump;
	}
} else if (y < buddy_owner.y - max_dist_below ) {
	if place_meeting(x, y + 2, asset_get("par_jumpthrough")) {
		can_be_grounded = false;
		y += 4;
	}
}

//if (x > buddy_owner.x - - spr_dir * x_goal)
var _pos = buddy_owner.x - buddy_owner.spr_dir * x_goal 
//print(buddy_owner.x)
//print(x)
//print(_pos)
//print(x_goal)
if (abs(_pos - x) >= 4) {
	if (spr_dir == 1 ? x < _pos : x > _pos) {
		hsp = x < _pos ? buddy_move_speed : -buddy_move_speed;
	} else {
		hsp *= .95;
	}
} else if (!free) {
	hsp = 0;
}

//print(hsp)

if (point_distance(x, y, buddy_owner.x, buddy_owner.y) >= max_dist_teleport && buddy_owner.x > _left_most && buddy_owner.x < _right_most) {
	x = buddy_owner.x - buddy_owner.spr_dir * x_goal;
	y = buddy_owner.y;
	vsp = 0;
}

if (x + hsp <= _left_most || x + hsp >= _right_most) {
	hsp = 0;
	x = clamp(x, _left_most, _right_most)
}

visible = buddy_owner.visible
