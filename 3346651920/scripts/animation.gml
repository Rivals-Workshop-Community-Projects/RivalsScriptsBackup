switch (state){
    case PS_IDLE:
        //code here can change the sprite_index and image_index while in the idle state
    break;
    case PS_PRATLAND:
        sprite_index = sprite_get("pratland")
        image_index = state_timer*pratfall_anim_speed
    break;
    
    default: break;
}




if (state==PS_ATTACK_GROUND || state==PS_ATTACK_AIR){
	if (attack==AT_JAB||attack==AT_DSPECIAL){
		switch (window){
			//ender
			case 2://walk
				//image_index = (( (image_index-1)+walk_anim_speed )%6)+1;
				//print(string((( (image_index-1)+walk_anim_speed )%6)+1));
				//print("thats runnin")
				//image_index = state_timer*walk_anim_speed;
				image_index = (( ((state_timer*walk_anim_speed)+1)-1 )%6)+1;
			break;
			case 5://jump
				//how tf do i do this one
				//holy heck
				image_index = clamp((vsp+13)/3,0,6)+8
			break;
			
			default: break;
		}
	}
}


if (state==PS_RESPAWN){
	sprite_index = sprite_get("walkturn")
}
if (state==PS_IDLE){
	sprite_index = sprite_get("idle_real")
}
if (state==PS_SPAWN){ if (get_gameplay_time() <= 122){
	//if (day_one_special_intro){//nvm i'll let intro be always available
		sprite_index = sprite_get("parry")
		if (state_timer<100){
			image_index = 1
		}else if (state_timer<110){
			image_index = 2
		}else{
			image_index = 3
		}
	//}
}else{
	sprite_index = sprite_get("idle_real")
}}





