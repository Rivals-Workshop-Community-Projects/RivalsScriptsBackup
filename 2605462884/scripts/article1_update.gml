//article1_update - dust

if (init == 0){
	if (particle_type==0){
		if (dust_type <= 1){
			sprite_index = sprite_get("dust1");
		}
		if (dust_type = 2){
			sprite_index = sprite_get("dust2");
		}
	}
	if (particle_type==1){
		if (sparkle_type <= 1){
			sprite_index = sprite_get("star1");
		}
		if (sparkle_type = 2){
			sprite_index = sprite_get("star2");
		}
		if (sparkle_type = 3){
			sprite_index = sprite_get("star3");
		}
		image_xscale = 2;
		image_yscale = 2;
	}
	if (particle_type==2){
		//sprite_index = player_id.body;
		//image_index = 11;
		no_lerp = true;
	}
	i_hsp = hsp;
	i_vsp = vsp;
	i_alpha = image_alpha
	
    init = 1;
}

if (particle_type==1){
	image_index = 0 + state_timer * 4 / state_end;
	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
}
if (particle_type==2){
	//idk
	vsp+=player_id.gravity_speed;
}

/*
hsp = lerp(i_hsp, 0, state_timer/state_end);
vsp = lerp(i_vsp, (i_vsp/3)-0.5, state_timer/state_end);
image_alpha = lerp(i_alpha*100, 0, state_timer/state_end)/100;
*/
if (!no_lerp){
hsp = ease_cubeOut(round(i_hsp*100), 0, state_timer, state_end)/100;
vsp = ease_cubeOut(round(i_vsp*100), 0, state_timer, state_end)/100;
}
if (particle_type==0){
image_alpha = lerp(i_alpha*100, 0, state_timer/state_end)/100;
}
//image_alpha = ease_quartOut(i_alpha*100, 0, state_timer, state_end)/100;

state_timer++;

if (state_timer>=state_end){
    instance_destroy();
    exit;
}