//Attack Indexes
AT_NSPECIAL_ETA = AT_USPECIAL_GROUND
AT_NSPECIAL_ORI = AT_USPECIAL_2
AT_NSPECIAL_ZET = AT_FSTRONG_2
AT_NSPECIAL_ORCA = AT_DSTRONG_2
AT_NSPECIAL_FROG = AT_DSPECIAL_AIR
AT_NSPECIAL_SYLV = AT_TAUNT_2
AT_NSPECIAL_ELLI = AT_EXTRA_1
AT_NSPECIAL_ABSA = AT_FSPECIAL_2
AT_NSPECIAL_SHOV = AT_EXTRA_2
AT_NSPECIAL_KRAG = AT_USTRONG_2
AT_NSPECIAL_MAY = AT_FSPECIAL_AIR;
absa_ring = hit_fx_create( sprite_get( "AT_NSPECIAL_ABSA_RING" ), 106 );


if (attack == AT_FSPECIAL) {
	if (player_id.up_down) {
		vsp = -4
	}
	if (player_id.down_down) {
		vsp = 4
	}
}

if (attack == AT_NSPECIAL_SYLV) and (hbox_num == 1){
	if (player_id.left_down) {
		hsp = -4
	}
	if (player_id.right_down) {
		hsp = 4
	}
}
	

if (attack == AT_NSPECIAL_FROG) { //Needles
	depth = player_id.depth + 1
	if !player_id.free {
		if (hbox_num == 2) {
			proj_angle = 10*spr_dir
			vsp = -2
		}
		if (hbox_num == 3) {
			proj_angle = 20*spr_dir
			vsp = -4
		}
		if (hbox_num == 4) {
			proj_angle = 30*spr_dir
			vsp = -6
		}
	}
	else  {
		if (hbox_num == 1) {
			proj_angle = -45*spr_dir
			vsp = 10.6
			hsp = spr_dir*10.6
		}
		if (hbox_num == 2) {
			proj_angle = -35*spr_dir
			vsp = 8.6
			hsp = spr_dir*12.3
		}
		if (hbox_num == 3) {
			proj_angle = -25*spr_dir
			vsp = 6.3
			hsp = spr_dir*13.6
		}
		if (hbox_num == 4) {
			proj_angle = -15*spr_dir
			vsp = 3.9
			hsp = spr_dir*14.5
		}
	}
}

if attack == AT_NSPECIAL_ELLI {
	if spr_dir {
		proj_angle = player_id.bash_angle+spr_dir
	}
	else {
		proj_angle = player_id.bash_angle+180
	}

}

if attack == AT_NSPECIAL_ABSA and hbox_num == 1 {
	spawn_hit_fx( x, y-32, absa_ring );
}

if attack == AT_NSPECIAL_ORCA and hbox_num == 2 {
	vsp = random_func(2,4,false)-5
}