//print("Orb start "+string(id)+" "+string(current_time));

if init < 2{
	init++;
	if init == 2 {
	for (var i = spawn_variables[2]; i >= 0; i--) { 
		hfx_ins[i] = spawn_dust_fx(coords[(i)*2],coords[((i)*2)+1],obj_stage_main.hud_sprs[8],61);
		hfx_ins[i].player_id = noone;
		hfx_ins[i].dust_color = 0;
		hfx_ins[i].step_timer = ((spawn_variables[2]-i)*10) mod 60;
		hfx_ins[i].init = true;
	}
	}
} else {

	for (var i = spawn_variables[2]; i >= 0; i--) { 
	offset[i] += 6;

	if refresh[i] {
		refresh[i]--;
	}
	hfx_ins[i].visible = !refresh[i];
	hfx_ins[i].step_timer = (hfx_ins[i].step_timer) mod 60;
	hfx_ins[i].x = coords[(i)*2];
	hfx_ins[i].y = coords[((i)*2)+1]+dsin(offset[i])*4;
	hfx_ins[i].depth = depth;
	}
}

//print("Orb end"+string(id)+" "+string(current_time));