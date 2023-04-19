//
var bullet_spread_num = bullet_spread;

with pHitBox {
	if (type == 2 && "bullet_hell_buddy" !in self) {
		if (hitbox_timer == 1) {
			bullet_hell_buddy = true;
			var move_angle = point_direction(0, 0, hsp, vsp);
			var move_speed = sqrt(sqr(hsp) + sqr(vsp));
			for (var i = other.bullet_start; i <= abs(other.bullet_start); i++) {
				print(i);
				if (i != 0) {
					with player_id {
						var bullet_hell = create_hitbox( other.attack, other.hbox_num, other.x, other.y);
						bullet_hell.bullet_hell_buddy = true;
						bullet_hell.hsp = lengthdir_x(move_speed, move_angle + i * bullet_spread_num);
						bullet_hell.vsp = lengthdir_y(move_speed, move_angle + i * bullet_spread_num);
						print(bullet_hell);
					}
				}					
			}
		}
	}
}
