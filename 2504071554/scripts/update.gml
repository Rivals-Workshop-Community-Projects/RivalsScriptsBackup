//update lol

//if(blades == true){
//    create_hitbox( AT_NSPECIAL, 2, x, y);
//}

//hyu area

//strong cancel!
if (state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR){
	if (smash_charging){
		if (strong_charge == charge_timing){//indicates the timing with visual effects and sound effects!
			spawn_hit_fx( x, y-46, 27 )
			sound_play(asset_get( "sfx_abyss_explosion_start" ));
			sound_play(asset_get( "sfx_abyss_explosion_start" ), false, noone, 0.7, 1.2);
			white_flash_timer = 15; //undocumented useful variable. makes u flash white for this amount of frame.
		}
		if (strong_charge >= charge_timing){ //if time is right
			if (shield_pressed){ //successfully store the charge.
				if (charge_store<charge_store_max){
					sound_play(asset_get( "sfx_frog_fspecial_charge_gained_1" ), false, noone, 0.8, 1.2);
					charge_store += 1;
					white_flash_timer = 15; //undocumented useful variable. makes u flash white for this amount of frame.
				}else{
					sound_stop(asset_get( "sfx_abyss_explosion_start" ));
					sound_play(asset_get("sfx_frog_fspecial_cancel"));
					sound_play(asset_get("sfx_boss_shine"));
					white_flash_timer = 5;
				}
				
				//this is just for visual niftyness indicating it, it doesn't actually parry (i made sure of that!)
				hurtboxID.sprite_index = hurtbox_spr;
				state = PS_PARRY;
				state_timer = 10;
				window = 2;
				window_timer = 0;
			}
		}else{
			if (shield_pressed){ //timing fail. manually end the strong charge, go to attack.
				clear_button_buffer( PC_STRONG_PRESSED )
				smash_charging = false;
				window++;
				window_timer = 0;
			}
		}
	}
}

//ends the spin blade
if ((state==PS_AIR_DODGE&&state_timer>1)||state==PS_PARRY||state==PS_ROLL_BACKWARD||state==PS_ROLL_FORWARD||((state==PS_ATTACK_AIR||state==PS_ATTACK_GROUND)&&attack==AT_USPECIAL) ){
	with (asset_get("obj_article1")){//detect the wheel, do somethin with the wheel
		if (player_id == other.id){
			if (state != 3){
                other.blades = false;
				if (state == 0){
					follow_hb.destroyed = true;
				}
				state = 3;
				state_timer = 0;
				sound_play(asset_get("sfx_spin"),false,noone,0.7,0.6);
			}
		}
	}
}

if (grabbed_player_obj!=-4){
	if !((state==PS_ATTACK_GROUND||state==PS_ATTACK_AIR)&&attack==AT_FTILT){
		grabbed_player_obj.visible = true;
		grabbed_player_obj = noone;
	}
}

if (cling_check && !clinging){
	not_cling_timer++;
}
if (clinging){
	cling_check = true;
}else if(cling_check == true && state!=PS_WALL_JUMP){
	cling_check = false;
	not_cling_timer = 0;
}



if(charge_store < 0){
	charge_store = 0;
}

transcounter = clamp(((get_player_color(player) == 9 && (state==PS_SPAWN||(attack == AT_TAUNT && state == PS_ATTACK_GROUND)))?transcounter+2:transcounter-6),0,70);