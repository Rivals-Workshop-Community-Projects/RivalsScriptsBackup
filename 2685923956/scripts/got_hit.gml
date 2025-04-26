/*
if (eye_hfx_storage != -4){
	if (instance_exists(eye_hfx_storage)){
		eye_hfx_storage.hit_fx = 1;
		//instance_destroy(eye_hfx_storage)
		//print(string(eye_hfx_storage))
	}
}*/ //this didnt work


		//print("hi")
if (prev_state==PS_ATTACK_GROUND||prev_state==PS_ATTACK_AIR){
	if (attack==AT_DSPECIAL){//when hit while dspecial is active
		//if (window<4){ //yes this is commented out for if we want to adjust window timing later
		//print("A")
if (doomdesire_storage != -4){
		//print("B")
	if (instance_exists(doomdesire_storage)){
		//print("C")
		doomdesire_storage.state = 5
		doomdesire_storage.state_timer = 0
		doomdesire_storage.state_end = 1
		move_cooldown[AT_DSPECIAL] = floor(doomdesire_cooldown_amount/4) //shorter
		print(string(move_cooldown[AT_DSPECIAL]))
		sound_play(sound_get("zen_2"),false,noone,0.8,0.8)
	}
}
		//}
	}
}