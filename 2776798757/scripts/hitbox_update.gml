//hitbox_update
if (attack == AT_FSPECIAL) {
hsp = hsp - (0.3 * spr_dir);
}

if (attack == AT_FSPECIAL){
	if hitbox_timer < 45 {
	vsp = vsp + (0.2);
	}
}

if (attack == AT_FSPECIAL){
	if hitbox_timer > 45 {
	vsp = vsp - (0.2);
	}
}

if (attack == AT_FSPECIAL_2) {
hsp = hsp + (0.1 * spr_dir);
}

if (attack == AT_FSPECIAL_2){
vsp = vsp - (0.1);
}

if (attack == AT_NSPECIAL_2){
	if hitbox_timer > 45 {
	vsp = (0);
        hsp = (0);
	}
	if spr_dir = 1 {
       		if hitbox_timer = 60 {
		var hbox = create_hitbox(AT_NSPECIAL_2, 2, x-24, y-26);
		hbox.hsp = 3;
		hbox.vsp = 3;
		}
	}
}

if (attack == AT_NSPECIAL_2){
	if hitbox_timer > 45 {
	vsp = (0);
        hsp = (0);
	}
	if spr_dir = -1 {
       		if hitbox_timer = 60 {
		var hbox = create_hitbox(AT_NSPECIAL_2, 2, x+24, y-26);
		hbox.hsp = -3;
		hbox.vsp = 3;
		}
	}
}

if (attack == AT_NSPECIAL_2){
	if spr_dir = -1 {
       		if hitbox_timer = 52 {
		spawn_hit_fx( x+44, y+8, 256 );
		}
	}
}

if (attack == AT_NSPECIAL_2){
	if spr_dir = 1 {
       		if hitbox_timer = 52 {
		spawn_hit_fx( x-44, y+8, 256 );
		}
	}
}

if (attack == AT_NSPECIAL_2){
	if spr_dir = -1 {
		if hitbox_timer = 1 {
		spawn_hit_fx( x+44, y+8, 109 );
		}
	}
}

if (attack == AT_NSPECIAL_2){
	if spr_dir = 1 {
		if hitbox_timer = 1 {
		spawn_hit_fx( x-44, y+8, 109 );
		}
	}
}

if (attack == AT_DSPECIAL_2) {
hsp = hsp - (0.3 * spr_dir);
}

if (attack == AT_DSPECIAL_2){
	if hitbox_timer < 20 {
	vsp = vsp - (0.1);
	}
}

if (attack == AT_DSTRONG_2){
	if hitbox_timer > 15 {
	hsp = (0);
	}
}