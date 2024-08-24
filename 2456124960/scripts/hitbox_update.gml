//hi
if (attack == AT_DSPECIAL && hbox_num == 1) {
    with (pHitBox) {
        if (player == other.player && attack == AT_DSPECIAL && hbox_num == 2) {
            y = -1000;
            destroyed = true;
        }
    }
}

if (attack == AT_JAB && hbox_num == 10) {
	if (hitbox_timer > 2) {
		hsp *= 0.75;
		vsp *= 0.75;
        if (spr_dir == -1) {
            proj_angle = point_direction(x, y, x+hsp, y+vsp) + 180;
        } else {
            proj_angle = point_direction(x, y, x+hsp, y+vsp);
        }
        
        if (hitbox_timer % 3 == 0) {
            spawn_hit_fx(x, y, player_id.beamChargeSparkle1); 
        }
	}
	if (myTarget != noone && hitbox_timer > 20) {
        if (abs(vsp) < 2) {
            spawn_hit_fx(x, y, player_id.beamChargeRing);
        }
        hit_priority = 1;
		var myDir = point_direction(x, y, myTarget.x + myTarget.hsp, (myTarget.y + myTarget.vsp) - 20)
		hsp = (hsp + lengthdir_x(30, myDir)) / 2;
		vsp = (vsp + lengthdir_y(30, myDir)) / 2;
        if (spr_dir == -1) {
            proj_angle = point_direction(x, y, x+hsp, y+vsp) + 180;
        } else {
            proj_angle = point_direction(x, y, x+hsp, y+vsp);
        }
		length = 40;
	} else if (abs(vsp) < 2) {
        hit_priority = 0;
		var myDir = point_direction(x, y, myTarget.x + myTarget.hsp, (myTarget.y + myTarget.vsp) - 20)
        
        hsp = (hsp + lengthdir_x(1, myDir)) / 2;
		vsp = (vsp + lengthdir_y(1, myDir)) / 2;
        if (spr_dir == -1) {
            proj_angle = point_direction(x, y, x+hsp, y+vsp) + 180;
        } else {
            proj_angle = point_direction(x, y, x+hsp, y+vsp);
        }
    }
}