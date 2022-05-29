//update

if (super_mode == true) {
    super_gauge -= 1.5;
    if (super_gauge <= 0) {
        outline_color = [ 0, 0, 0 ];
        super_gauge = 0;
        super_mode = false;
    }
}

if (super_mode == false && super_gauge != gauge_cap) {
    super_gauge += 0.1;
	if (super_gauge > gauge_cap) { super_gauge = gauge_cap; 
	}
}

if (super_mode == false && super_gauge != gauge_cap) {
	if (get_player_damage( player ) >= 100) {
	super_gauge += 1.1;
	}
}

if(spr_dir == 1) {
   if (attack == AT_TAUNT && window == 3 && window_timer == 10) {
      spawn_hit_fx( x+18, y-62, 311 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_TAUNT && window == 3 && window_timer == 10) {
      spawn_hit_fx( x-18, y-62, 311 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_NSPECIAL && window == 2 && (bustercharge == 110)) {
      spawn_hit_fx( x-22, y-42, 108 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_NSPECIAL && (bustercharge == 250)) {
      spawn_hit_fx( x-22, y-42, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_NSPECIAL && window == 2 && (bustercharge == 110)) {
      spawn_hit_fx( x+22, y-42, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_NSPECIAL && (bustercharge == 250)) {
      spawn_hit_fx( x+22, y-42, 108 );
	}
}

if(spr_dir == -1) {
   if (attack == AT_NSPECIAL_2 && window == 2 && (bustercharge == 110)) {
      spawn_hit_fx( x+22, y-52, 108 );
	}
}

if(spr_dir == 1) {
   if (attack == AT_NSPECIAL_2 && window == 2 && (bustercharge == 110)) {
      spawn_hit_fx( x-22, y-42, 108 );
	}
}
