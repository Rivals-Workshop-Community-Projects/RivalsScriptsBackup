if (startup == false){
damage = false;
attack = false;
time1 =0
time2 =0
time3 =0
attacke =0
Delete = false;
startup = true
hitplayer = 0 
}

if (damage == true){


	if(time1 == 10){


	sprite_index = sprite_get("tekii_1");
	damage = false;
	attack = false;
	time1 =0
	time3 +=20
	attacke =0
	hitplayer = 0 
		}else{

	hitplayer = 0;
	if(attacke == 0){
	sprite_index = sprite_get("tekii_damage");
	}
	time1 +=1




			if(time3 >= 100){
		
		
			if (attack == false){
			attacke =0
			}
			attack = true;
	
	
			}



	}






}else{
	if hitplayer == 0 with (pHitBox) {
		if place_meeting(x,y,other) {
			
			
			
				other.hitplayer = player;

		}
	}

	if hitplayer > 0 && hitplayer < 5{

			if (damage == false){
			sound_play( asset_get( "sfx_leafy_hit1" ));
			damage = true;
			Physicalstrength -= 5;
			attack = false;
			time1 =0;
			
				if(Physicalstrength <= 0){
				Delete = true;
				hitplayer = 0 
				}
			}
		print_debug("target hit by ")
	

	}
	



if(time3 >= 100){


		if (attack == false){
		attacke =0
		}
attack = true;


}else{
time3 +=1
}


}


	if (attack == true){
	
	if(time2 >= 5){
	sprite_index = sprite_get("tekii_attack");
	var anim_speed = 0.13;
	attacke +=1
	time2 =0
	}

		if(attacke == 1){
		var anim_speed = 0.40;
		image_index = anim_speed;
		}
		if(attacke == 2){
		var anim_speed = 1.00;
		image_index = anim_speed;
		}
		if(attacke == 3){
		var anim_speed = 2.00;
		image_index = anim_speed;
		create_hitbox(AT_DATTACK,  1, x, y);
		sound_play( asset_get( "sfx_swipe_heavy1" ));

		}
			if(attacke == 4){
			var anim_speed = 3.00;
			image_index = anim_speed;
			time3 =0
			time2 =0
			time1 =0
			damage = true;
			attack = false;
			hitplayer = 0 
			sprite_index = sprite_get("tekii_1");
			}
	
	time2 +=1
	}



if (Delete == true){
damage = false;
attack = false;
anim_speed = 0
instance_destroy()
}else{
	if (attack == true){
		if (damage == true){
		var anim_speed = 0.00;
		}else{
		}
	}else{
	var anim_speed = 0.12;
	image_index += anim_speed;
	}
}


