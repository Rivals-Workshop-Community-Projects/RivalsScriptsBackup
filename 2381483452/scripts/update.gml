
if sequence > 0 {
	var trigger_time = 120;
	sequence++;
	var shake = dsin(min((sequence/trigger_time)*90, 270))
	if shake > 0 shake_camera(floor(shake*5), 2)
	
	if instance_exists(pet) {
		pet.hsp = 0;
		pet.vsp = 0;
		pet.x = lerp(pet.x, 640, 0.05);
		pet.y = lerp(pet.y, 448, 0.05);
		pet.run_speed = 0;
		pet.max_run_dist = 9999999;
		pet.depth = -20;
	}
	
	if sequence == trigger_time {

		x = 640;
		y = 448;
		instance = instance_create(65,640, "oPlayer", 5) 
		sound_play(asset_get("sfx_absa_uair"));
		sound_play(asset_get("mfx_title_start"));
		with (instance) {other.hithithit = create_hitbox(AT_JAB, 2, x, y)}
		print("created hitbox at "+string(hithithit.x)+" "+string(hithithit.y))
	}
	
	if sequence >= trigger_time {
		if !seq_value[5] suppress_stage_music(0, 1)
		if instance_exists(pet) {
			pet.y = 9999;
			pet.vsp = 0;
		}
	}
	
	if instance.sequence < 6 {
		sequence = min(sequence, 240);
		seq_value[0] = 0;
	} else {
		var minseq = sequence - 240;
		var endseq = 12*60;
		if minseq >= 0 && minseq < endseq {
			seq_value[0] = min(seq_value[0]+0.25, 20);
			set_view_position(view_get_xview()+view_get_wview()/2,view_get_yview()+view_get_hview()/2+seq_value[0]*0.1)
		//	print(seq_value[0]);
		} else {
			seq_value[0] = max(seq_value[0]-1, 0);
		}
		
		if minseq == 100 {
			seq_value[1] = true;
			seq_value[2] = 1;
			seq_value[3] = 10;
		} else {
			seq_value[3] = lerp(seq_value[3], 0, 0.01);
			seq_value[2] -= 0.01;
			seq_value[4] = ease_linear(-20,1,minseq, endseq)
		}
		if minseq >= endseq {
			seq_value[5] = 1;
		}
		
		
	}
} else if instance_exists(pet) with (pet) {
		almost_there = true;
		if !scramble 
		other.sequence = 1;

} else {
with (pet_obj) {
	if "scramble" in self {
		other.pet = id;
		break;
	}
}
}