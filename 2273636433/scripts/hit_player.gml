// called when  you hit the oponent

if my_hitboxID.attack == AT_FSPECIAL{
	hit_player_obj.spr_dir = hit_player_obj.spr_dir*-1;
	hit_player_obj.hsp = hit_player_obj.hsp*-1;
	hit_player_obj.left_down = !hit_player_obj.left_down;
	hit_player_obj.left_pressed = !hit_player_obj.left_pressed;
	hit_player_obj.right_down = !hit_player_obj.right_down;
	hit_player_obj.right_pressed = !hit_player_obj.right_pressed;

}

if my_hitboxID.attack == AT_DAIR{
	if my_hitboxID.hbox_num < 10 {
		hit_player_obj.should_make_shockwave=false;
	}
}

if (my_hitboxID.attack == AT_USPECIAL){
	
	if (my_hitboxID.hbox_num ==1 ){
		set_num_hitboxes(AT_USPECIAL, 3);
		hit_player_obj.should_make_shockwave = false;									//first hitbox does not galaxy
	}
	if (my_hitboxID.type!=2){
		//TRAVIS GRAB CODE LUL
		//Trying to Grab GODKARMA or any other character inmune to Hitstun

		if(window==2)&&(grabbedid == noone)&&(hit_player_obj.state ==PS_HITSTUN ||hit_player_obj.state==PS_HITSTUN_LAND){									//Aqui va la condici�n de que detecto golpe	
				hit_player_obj.grabbed = 1;					//Actual grab code?
				grabbedid = hit_player_obj;
				grabbedid.ungrab = 0;
				destroy_hitboxes();
		}

		if(window>1)&&(window<3){
			hit_player.has_walljump=false;				//Cannot Wall jump out of the grab
			hit_player.can_wall_jump=false;				//Cannot Wall jump out of the grab
			hit_player.can_wall_cling=false;			//Maypul cant wall cling
		}
	}
}


if (my_hitboxID.attack == AT_DSPECIAL){
	
	if (my_hitboxID.hbox_num < 5){
		hit_player_obj.should_make_shockwave = false;									//first hitbox does not galaxy
		attack_end();
	}
}

//If Final Smash Connects, Doc Score gets added 1
if (my_hitboxID.attack == 49){
	doc_score++;
	fs_display = 180;
} 

if (has_rune ("A")) && (has_rune ("B")) && (has_rune ("C")) && (has_rune ("D")) && (has_rune ("E")) && (has_rune ("F")) && (has_rune ("G")) && (has_rune ("H")) && (has_rune ("I")) && (has_rune ("J")) && (has_rune ("K")) && (has_rune ("L")) && (has_rune ("M")) && (has_rune ("N")) && (has_rune ("O")){
	if (my_hitboxID.attack == AT_NSPECIAL) {
		   take_damage(player, -1, -1);
	}
}