if(spr_dir == 1) {
   if (attack == AT_TAUNT && window == 2 && window_timer == 1) {
      spawn_hit_fx( x+18, y-62, 123 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_TAUNT && window == 2 && window_timer == 1) {
      spawn_hit_fx( x-18, y-62, 123 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_NSPECIAL && window == 2 && (bustercharge == 50)) {
      spawn_hit_fx( x-22, y-42, 108 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_NSPECIAL && (bustercharge == 250)) {
      spawn_hit_fx( x-22, y-42, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_NSPECIAL && window == 2 && (bustercharge == 50)) {
      spawn_hit_fx( x+22, y-42, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_NSPECIAL && (bustercharge == 250)) {
      spawn_hit_fx( x+22, y-42, 108 );
	}
}

