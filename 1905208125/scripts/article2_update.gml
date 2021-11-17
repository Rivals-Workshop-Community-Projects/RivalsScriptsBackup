//article2_update
state_timer++;
if (!player_id.attacking || player_id.attack != AT_USPECIAL) {
	state = 2;
	if (point_distance(x,y,player_id.x,player_id.y) < dist) {
		state = 3;
	}
}

if (instance_exists(hbox)) {
	hbox.hsp = hsp;
	hbox.vsp = vsp;
}

switch (state) {
	case 0:
		
		image_angle = player_id.direc;
	    image_index = state_timer*anim_time;
	    //spr_dir = -1*(image_angle > 90 && image_angle < 270) + 1*(image_angle < 90 || image_angle > 270);
	    x_ch = x;
	    y_ch = y;
	    if instance_exists(hbox) {
	    	var line_col = collision_line_point(x,y,x+hsp,y+vsp,asset_get("par_block"),true,true);
			var plat_col = collision_line_point(x,y,x+hsp,y+vsp,asset_get("par_jumpthrough"),true,true);
			if line_col[0] != noone {
				//solid
				//print(`line collided`);
				x = line_col[1];
				y = line_col[2];
				hsp = 0;
				vsp = 0;
				state = 1;
				//print(`line collided [${x}, ${y}]`);
			} else if state_timer > hook_time && plat_col[0] != noone {
				//platform
				x = plat_col[1];
				y = plat_col[2];
				state = 1;
				//print(`line collided [${x}, ${y}]`);
			} else {
				//fallback
				if (((position_meeting(x,y,asset_get("par_block")) || (state_timer > hook_time && position_meeting(x,y,asset_get("par_jumpthrough")) )))) state = 1;
			    with (hbox) {
			        if (((position_meeting(x,y,asset_get("par_block")) || (other.state_timer > other.hook_time && position_meeting(x,y,asset_get("par_jumpthrough")))))) other.state = 1;
			    }
			}
	    }

	    else {
	        hbox.x = x;
			hbox.y = y+32*dsin(image_angle+180);
	        //else if image_angle > 0 && image_angle < 90 hbox.y = y-32;
	        //else  hbox.y = y+32;
	    }
	    if (point_distance(x,y,player_id.x,player_id.y) > max_distance) {
	    	state = 2;
	    	state_timer = 0;
	    }
	    if state_timer == 1 && state == 0 {
			var test_col = collision_line_point(player_id.x,player_id.y-40,xstart,ystart,asset_get("par_block"),true,true);
			if test_col[0] != noone {
				state = 1;
				x = test_col[1];
				y = test_col[2];
			}
			test_col = collision_line_point(x,y,xstart,ystart,asset_get("par_block"),true,true);
			if test_col[0] != noone {
				state = 1;
				x = test_col[1];
				y = test_col[2];
			}
		}
		break;
	case 1:
	    //image_xscale = sprdir;
	    //image_index = state_timer*anim_time;
	    if instance_exists(hbox) instance_destroy(hbox);
	    with player_id {
	        if attack == AT_USPECIAL && window == 2 {
	            window_timer = 0;
	            window = 4;
	        }
	        if window == 4 {
	            hsp = hook_speed*dcos(point_direction(x,y,other.x,other.y));
	            vsp = -hook_speed*dsin(point_direction(x,y,other.x,other.y));
	        }
	    }
	    hsp = 0;
	    vsp = 0;
	    if (point_distance(x,y,player_id.x,player_id.y) < dist) {
			state = 3;
		}
		break;
	case 2:
		if (player_id.window == 3 || !player_id.attacking || player_id.attack != AT_USPECIAL) {
			hsp = return_speed*dcos(point_direction(x,y,player_id.x,player_id.y - 40))
			vsp = -return_speed*dsin(point_direction(x,y,player_id.x,player_id.y - 40));
		} else {
			if instance_exists(hbox) {
				var line_col = collision_line_point(x,y,x+hsp,y+vsp,asset_get("par_block"),true,true);
				var plat_col = collision_line_point(x,y,x+hsp,y+vsp,asset_get("par_jumpthrough"),true,true);
				if line_col[0] != noone {
					//print(`line collided`);
					//solid
					x = line_col[1];
					y = line_col[2];
					hsp = 0;
					vsp = 0;
					state = 1;
					//print(`line collided [${x}, ${y}]`);
				} else if state_timer > hook_time && plat_col[0] != noone {
					//platform
					x = plat_col[1];
					y = plat_col[2];
					state = 1;
					//print(`line collided [${x}, ${y}]`);
				} else {
					//fallback
					if (((position_meeting(x,y,asset_get("par_block")) || (state_timer > hook_time && position_meeting(x,y,asset_get("par_jumpthrough")) )))) state = 1;
			        with (hbox) {
			            if (((position_meeting(x,y,asset_get("par_block")) || (other.state_timer > other.hook_time && position_meeting(x,y,asset_get("par_jumpthrough")))))) other.state = 1;
			        }
				}
		    }
			hsp *= 0.7;
			vsp *= 0.7;
		}
		if (point_distance(x,y,player_id.x + 20 * player_id.spr_dir,player_id.y - 40) < dist) {
			state = 3;
		}
		break;
	case 3:
		if (instance_exists(hbox)) {
			instance_destroy(hbox);
		}
		instance_destroy();
		break;
}

#define collision_line_point
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0;
var y1 = argument1;
var x2 = argument2;
var y2 = argument3;
var qi = argument4;
var qp = argument5;
var qn = argument6;
var rr, rx, ry;
rr = collision_line(x1, y1, x2, y2, qi, qp, qn);
rx = x2;
ry = y2;
if (rr != noone) {
    var p0 = 0;
    var p1 = 1;
    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
        var np = p0 + (p1 - p0) * 0.5;
        var nx = x1 + (x2 - x1) * np;
        var ny = y1 + (y2 - y1) * np;
        var px = x1 + (x2 - x1) * p0;
        var py = y1 + (y2 - y1) * p0;
        var nr = collision_line(px, py, nx, ny, qi, qp, qn);
        if (nr != noone) {
            rr = nr;
            rx = nx;
            ry = ny;
            p1 = np;
        } else p0 = np;
    }
}
var r;
r[0] = rr;
r[1] = rx;
r[2] = ry;
return r;