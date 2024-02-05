//
if(my_hitboxID.attack != AT_NSPECIAL){
	nspec_charge = 0;
	played_fanfare = false;	
}

if(my_hitboxID.attack == AT_NSPECIAL) with my_hitboxID{
	hitbox_timer = 0;
	image_index = 0;
	if(hbox_num != 8){
	hsp = hsp * 1.5;
	}else{
		hsp = 6*1.5*spr_dir;
	}
}

if(my_hitboxID.attack == AT_NSPECIAL && my_hitboxID.hbox_num == 4){
	death_owner = hit_player;
}
if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 4) with my_hitboxID{
	hitbox_timer = 0;
}

if(my_hitboxID.attack == AT_DSPECIAL && my_hitboxID.hbox_num == 5){
	if (instance_exists(materia_field) && materia_field != 0){
		materia_field.tempest_got_parried = true;
		materia_field.tempest_owner = hit_player;
		materia_field.tempest_cur_hitbox.destroyed = true;
		materia_field.tempest_dir *= -1;
		materia_field.state_timer = 0;
	}
}

if(my_hitboxID.attack == AT_DSPECIAL){
	if(my_hitboxID.hbox_num == 9 || my_hitboxID.hbox_num == 10){
		print("uh oh");
		
		switch (my_hitboxID.player){
    	case 1:
    	frog1_id.artificial_hitstop = 8; 
		frog1_id.frog_got_parried = true;
    	break;
    	case 2:
    	frog2_id.artificial_hitstop = 8; 
		frog2_id.frog_got_parried = true;
    	break;
    	case 3:
    	frog3_id.artificial_hitstop = 8; 
    	frog3_id.frog_got_parried = true;
    	break;
    	case 4:
    	frog4_id.artificial_hitstop = 8; 
    	frog4_id.frog_got_parried = true;
    	break;
    }
    
	}
}