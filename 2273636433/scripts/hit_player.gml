// called when  you hit the oponent

if my_hitboxID.attack == AT_FSPECIAL{
	if my_hitboxID.hit_priority != -1 {
		sound_play(sound_get("mantle"))
		hit_player_obj.spr_dir *= -1;
		hit_player_obj.hsp *= -1;
		hit_player_obj.hsp = (9-hit_player_obj.free*3)*spr_dir;
		hit_player_obj.vsp = -7*hit_player_obj.free;

		if hit_player_obj.state  == PS_ATTACK_GROUND || hit_player_obj.state  == PS_ATTACK_AIR{
			hit_player_obj.old_hsp*=1.05;
		}else{
			hit_player_obj.old_hsp*=1.15;

		}
		if  hit_player_obj.state ==22 || hit_player_obj.state ==29 ||hit_player_obj.state ==27{
			hit_player_obj.state = 23;
		}
		hit_player_obj.has_walljump = true;
		destroy_hitboxes();
	}	
}

if my_hitboxID.attack == AT_DAIR{
	if my_hitboxID.hbox_num < 7 {
		hit_player_obj.should_make_shockwave=false;
		hit_player_obj.x = (hit_player_obj.x*2  + (x + 16*spr_dir) )/3
	}
}

if (my_hitboxID.attack == AT_USPECIAL){
    if my_hitboxID.hbox_num == 3 {
        sound_play(asset_get("sfx_blow_heavy2"))
		set_num_hitboxes(AT_USPECIAL,2);
    }
	if (my_hitboxID.hbox_num == 1 ){
		set_num_hitboxes(AT_USPECIAL, 3);
		sound_play(asset_get("sfx_blow_medium2"))
		show_flames=true;
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
		hit_player_obj.fall_through = true;
		hit_player_obj.free = true;
		//Displacement
		if !hit_player_obj.super_armor {
			if my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 3 {
				hit_player_obj.y = (hit_player_obj.y*2  + y )/3
			}
		}
		attack_end();
	}
}

if my_hitboxID.attack == AT_FSTRONG {
    if my_hitboxID.hbox_num == 1 {
        shock_hit=1;
		//spawn_hit_fx( x +70*spr_dir, y-38, 304 );
    }
}

//Called of every time the oponent is hit
golpeado =  get_player_team( hit_player_obj.player);
checker = get_player_stocks( hit_player_obj.player);

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

