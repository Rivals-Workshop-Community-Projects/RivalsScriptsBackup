//hitbox_update

if (attack==AT_NSPECIAL_AIR){
	//user_event(0);
	//if (ue0_out=true){
	//	destroyed = true;
	//}
	/*for (var i = 0; i < 20; i++){
		if (can_hit_fake[i]==true){
			can_hit[i] = false;
			print("run")
		}
	}*/
	if (instance_exists(owner_article)){
	if (owner_article.slash_immune){ //was parried or slashed with doubletap uspecial
		fixed_pocket = false;
		is_pocketable = false;
		
	}else{ //normal with white dot
		fixed_pocket = true;
		is_pocketable = true;
	}
	}
	
	
	//print("y be of "+string(y))
	if (was_pocketed && y < -1000){
		//this method might break horribly on extended-play-area gamemodes like adventure modes or super metroids... but welp, we'll see
		if (!strange_situation){
			//something is wrong. the hitbox is located somewhere crazy.
			strange_situation = true;
			owner_article.state_timer = owner_article.state_end;
			owner_article.loop_count = owner_article.loop_max+10;
		}
	}else{
		if (strange_situation){
			//i feel myself released.
			print("STRANGE SITUATION");
			panicsv = player;
			//what's below doesnt work here, gotta spawn from n/a with panicsv as distress signal
			//once n/a detects the signal, hitbox will be destroyed, hopefully
			
			
			//print(string(panicsv)+" - "+string(id)+" - "+string(player_id))
			//print(string(player)+" - "+string(player_id.player))
			//this hitbox returned in a very odd condition
			//we'll assume someone else outside n/a tried to spawn it, and...
			//create the article ourselves.			
			
			//here i spawn void
			/*with (owner_truth){
				print("SHOULD HAPPEN");
				var voidID = instance_create(other.x, other.y, "obj_article2");
				voidID.player_id = id;
				voidID.player = player;
				voidID.spr_dir = 1;
				voidID.image_angle = (spr_dir==1)?0:180;
				voidID.tmpdir = spr_dir;
			}*/
		}
	}
	
	/*
	print((instance_exists("owner_article"))?"true":"false");
	if (instance_exists("owner_article")){
		print(string(owner_article))
	}
	if (instance_exists("owner_article")){
		sound_play(sound_get("rk_eye"));
		//something is wrong, this hitbox spawned in a very odd condition
		//we'll assume someone else outside n/a tried to spawn it, and...
		//create the article ourselves.
		
		
		//here i spawn void
		var voidID = instance_create(x, y, "obj_article2");
		voidID.player_id = player_id;
		voidID.player = player;
		voidID.spr_dir = 1;
		voidID.image_angle = (spr_dir==1)?0:180;
		voidID.tmpdir = spr_dir;
		
	}
	*/
}