//state1 == fspecial
//state2 == fair self
//state3 == fair opponent
//state4 == dair
//state5 == fstrong
//state6 == uspec
if(state == 1){
	player_id.move_cooldown[AT_FSPECIAL] = 10;
//spawn animation
if(animation <= 5){
	animation += 1;
	image_index += (7/5);
}
if(fspec_count == 1){
	timer = 140;
	fspec_count = 0;
}

if(fspec_count == 2){
	timer = 100;
	fspec_count = 0;
}

if(fspec_count == 3){
	timer = 60;
	fspec_count = 0;
}

if(fspec_count == 0){
	timer--;
	if(timer == 0){
		spawn_hit_fx(x, y-48, HFX_GEN_SWEET);
		sound_play( sound_get( "short" ) );
		player_id.x = x;
		player_id.y = y;
		instance_destroy();
	}
}
}

if(state == 2){
	
	//sprite_index = sprite_get("empty_sprite");
	player_id.move_cooldown[AT_FAIR] = 10;
//spawn animation

if(fair_self_count == 1){
	timer = 15;
	fair_self_count = 0;
}

if(fair_self_count == 2){
	timer = 10;
	fair_self_count = 0;
}

if(fair_self_count == 3){
	timer = 5;
	fair_self_count = 0;
}

if(fair_self_count == 0){
	timer--;
	if(timer == 0){
		player_id.x = x;
		player_id.y = y;
		
		instance_destroy();
	}
}
}

if(state == 4){
	player_id.move_cooldown[AT_DAIR] = 9999;
if(animation <= 5){
	animation += 1;
	image_index += (7/5);
}
	if(dair_count == 1){
		timer = 25;
		dair_count = 0;
	}



if(dair_count == 0){
	timer--;
	if(timer == 0){
		sound_play( sound_get( "short" ) );
		spawn_hit_fx(x, y-48, HFX_GEN_SWEET);
		player_id.x = x;
		player_id.y = y;
		
		//player_id.state = PS_IDLE_AIR;
		//player_id.vsp = 0;
		instance_destroy();
	}
}
}

if(state == 5){
if(animation <= 5){
	animation += 1;
	image_index += (7/5);
}
if(fstrong_count == 1){
		timer = 100;
		fstrong_count = 0;
	}
	if(fstrong_count == 0){
		timer--;
		if((player_id.attack == AT_FSTRONG && player_id.window == 3) || timer == 0){
		spawn_hit_fx(x, y-48, HFX_GEN_SWEET);
		sound_play( sound_get( "short" ) );
		player_id.x = x;
		player_id.y = y;
		create_hitbox(AT_FSTRONG, 1, x, y);
		//player_id.state = PS_IDLE_AIR;
		//player_id.vsp = 0;
		instance_destroy();
	}
	}
	

}

if(state == 6){
//spawn animation

if(uspec_count == 1){
	timer = 30;
	uspec_count = 0;
	
}

if(uspec_count == 2){
	timer = 18;
	uspec_count = 0;
}

if(uspec_count == 3){
	timer = 6;
	uspec_count = 0;
}
if(uspec_count == 0){
	timer--;
	if(timer == 0){
		sound_play( sound_get( "short" ) );
		player_id.x = x;
		player_id.y = y;
		
		instance_destroy();
	}
}
}

