//hitbox_init

if (attack == AT_NSPECIAL){
	 counter = player_id.pill;
	 floor_pos = 0;
	 pill_state = 0;
	 stun_timer = 0;
	 prev_hsp = 4*spr_dir;
	 prev_vsp = -6;
	 prev_grav = 0.56;
	 charge = 0;
	 roll = 0;
	 limit = 1;

	 //KNOCKBACK
	 if (kb_value) == 4{ //Starts at 0
		 C_knock = 0;
	 } else if (kb_value) == 5{ //Starts at 1
		 C_knock = 1;
	 }
	 //DAMAGE
	 if (damage) == 4{ //Starts at 0
		 C_dam = 0;
	 } else if (damage) == 5{ //Starts at 1
		 C_dam = 1;
	 }
		
	 reset = 0;
}

if (attack == AT_NSPECIAL){

 proj_reflectable = 1 ;
MattCanGrab = true;
MorshuCanGrab = true;

}

if (attack == 49){
MattCanGrab = true;
player_id.fs_hit = 0;
}


if (attack == AT_FSPECIAL){
MattStar = true;
MorshuBomb = true;
}

forced = 0;