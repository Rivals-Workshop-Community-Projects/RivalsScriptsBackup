//update

if(firev){
	if(firetimer == 10){
		create_hitbox(AT_USPECIAL, 1, x-50, y-50);
		firetimer = 0;
	}
	firetimer ++;
	if(firefxtimer == 10){
		
		spawn_dust_fx(x-40*spr_dir, y-60, sprite_get("hotsmoke"), 30);
		
		firefxtimer = 0;
	}
	firefxtimer++;
	if (burned == true){
	
       take_damage(player, -1, 0);
       burned = false;
    }
	
}

if(!sinkv){
	jump_speed = 13;
    short_hop_speed = 8;
    djump_speed = 12;
    knockback_adj = 1.0;
    gravity_speed = .70;
}

if(floatv){
	max_djumps = 4;
}else{
	max_djumps  = 1;
}



//print_debug(string(firetimer));
