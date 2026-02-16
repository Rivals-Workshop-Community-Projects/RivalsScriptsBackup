//article1_init
//Variables defined when the article spawns

var attackable = (!in_use && !on_cooldown && state == 1);
var fennek_fspec_hit = (hit_player_obj.url == player_id.url && enemy_hitboxID.attack == AT_FSPECIAL && enemy_hitboxID.hbox_num == 1);
var fennek_uspec_hit = (hit_player_obj.url == player_id.url && enemy_hitboxID.attack == AT_USPECIAL && enemy_hitboxID.hbox_num <= 4);
if(attackable && hit_player_obj != player_id && enemy_hitboxID.type == 1 && !on_cooldown && !fennek_fspec_hit && !fennek_uspec_hit){
	on_cooldown = 120;
	var hfx = spawn_hit_fx(x, y, 302);
	hfx.depth = depth - 1;
	sound_play(asset_get("sfx_burnend"));
	sound_play(asset_get("sfx_shovel_hit_med2"));
}

//print(get_char_info( hit_player_obj.player, INFO_STR_NAME));

// //print(hit_player_obj.myName);





// 	if (hit_player_obj != player_id) && (state == 0){
// 		print("not hit by Fennek");
// 		if (!lamp_boom){
// 			lamp_hitbox = create_hitbox(AT_EXTRA_2,1,x,y-0);
// 			print(lamp_hitbox);
// 			lamp_hitbox.player = hit_player_obj.player;
// 			player_id.lamp_number--;
// 			spawn_hit_fx( x, y+20, explode);
// 			lamp_boom=true;
// 		}
	
	
		
// 		if (hit_player_obj.myName == "Fenneklantern") or (hit_player_obj.myName == "Fennek PRIVATE ALPHA"){
// 			print("hit by enemy fennek");
// 			hit_player_obj.lamp_bounce=true;
// 		}
		
// 		instance_destroy(self);
// 		if(instance_exists(self)){
// 			//spawn_hit_fx( x, y+20, explode);
// 	    	//lamp_hitbox = create_hitbox(AT_EXTRA_2,1,x,y-20);
// 	    	//lamp_hitbox.player = hit_player_obj;
// 			//instance_destroy(self);
// 		}
// 		/*
// 		if (hit_player_obj.myName == "Kragg"){
// 			print("FUCK YOU KRAGG")
// 			hit_player_obj.state = PS_DEAD;
// 		}*/
// 		//instance_destroy(self);
// 	}
// 	/*if (hit_player_obj.myName == "Olympia"){
// 		print("Olympa");
// 	}*/
	
	
	
// 	if (hit_player_obj == player_id) && (state == 0){
// 		if (player_id.attack == AT_FSPECIAL) {
// 		print("woo woo yeye fucking works");
// 		player_id.lamp_bounce=true;
// 		player_id.lamp_number--;
// 		if(instance_exists(self)){
// 		spawn_hit_fx( x, y+20, explode);
// 	    create_hitbox(AT_EXTRA_2,1,x,y-0);
// 		instance_destroy(self);
// 			}
// 		}
// 	}
	
	
// 	if (hit_player_obj == player_id) && (state == 0){
// 		if (player_id.attack == AT_EXTRA_2) {
// 		print("woo woo yeye DOESNT fucking works");
// 		player_id.lamp_number--;
	
// 		}
// 	}
	
	
	
// 	if (hit_player_obj == player_id) && (state == 0){
// 		if (player_id.attack == AT_USPECIAL ) {
// 		player_id.lamp_bounce=true;
// 		player_id.lamp_number--;
// 		if(instance_exists(self)){
// 		spawn_hit_fx( x, y+20, explode);
// 	    create_hitbox(AT_EXTRA_2,1,x,y-0);
// 		instance_destroy(self);
// 			}
// 		}
// 	}
	
// 	if (hit_player_obj == player_id) && (state == 0){
// 		if (player_id.attack == AT_FAIR and player_id.window<7) {
// 		print("woo woo yeye");
// 		player_id.lamp_bounce=true;
// 		player_id.lamp_number--;
// 		if(instance_exists(self)){
// 		spawn_hit_fx( x, y+20, explode);
// 	    create_hitbox(AT_EXTRA_2,1,x,y-0);
// 		instance_destroy(self);
// 			}
// 		}
// 	}
	
// 	/*if (hit_player_obj == player_id) && ((state == 1) or (state == 4) ){
	
// 		print("hit by fennek");
// 		if (!lamp_boom){
// 			lamp_hitbox = create_hitbox(AT_EXTRA_2,1,x,y-20);
// 			print(lamp_hitbox);
// 			lamp_hitbox.player = hit_player_obj.player;
// 			player_id.lamp_number--;
// 			spawn_hit_fx( x, y+20, explode);
// 			lamp_boom=true;
// 		}
	
// 		instance_destroy(self);
		
		
// 	} */
	
// 	if (hit_player_obj == player_id) && (state == 0){
// 		if (player_id.attack == AT_NSPECIAL ) {
// 		print("woo woo yeyevvsdvsdvsdvsd");
// 		player_id.lamp_number--;
// 		if(instance_exists(self)){
// 		spawn_hit_fx( x, y+20, explode);
// 	    create_hitbox(AT_EXTRA_2,1,x,y-0);
// 		instance_destroy(self);
// 			}
// 		}
// 	}
	
// 	if (hit_player_obj == player_id) && (state == 0){
// 		if (player_id.attack == AT_NAIR or player_id.attack == AT_UAIR
// 		or player_id.attack == AT_BAIR  or player_id.attack == AT_NSPECIAL_2
// 		or player_id.attack == AT_DAIR or player_id.attack == AT_DATTACK
// 		or player_id.attack == AT_JAB or player_id.attack == AT_FTILT
// 		or player_id.attack == AT_UTILT or player_id.attack == AT_DTILT
// 		or player_id.attack == 42 or player_id.attack == 46 or
// 		player_id.attack == AT_FSTRONG 
// 		or player_id.attack == AT_USPECIAL_GROUND or player_id.attack == AT_EXTRA_1
// 		or player_id.attack == AT_USTRONG or player_id.attack == AT_DSTRONG) {
// 		print("woo woo yeye4444444444");
// 		player_id.lamp_bounce=false;
// 		player_id.lamp_number--;
// 		if(instance_exists(self)){
// 		spawn_hit_fx( x, y+20, explode);
// 	    create_hitbox(AT_EXTRA_2,1,x,y-0);
// 		instance_destroy(self);
// 			}
// 		}
// 	}




