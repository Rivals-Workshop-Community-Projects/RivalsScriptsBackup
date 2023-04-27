//hitbox_update
if (in_hitpause == true){ hitpause_timer++; }

if (attack == AT_NSPECIAL){
	//if (hitbox_timer > 15){
	with (pHitBox){ //Bouncing off puddle, exploding
    	if (player_id == other.player_id && attack == AT_DSPECIAL && other.in_hitpause == false
    	&& (place_meeting(x, y + 30, other) || place_meeting(x, y + 10, other)) && hsp == 0 && other.thrown && !other.has_hit && !other.ptPuddleBounced){
    		with (other){
    			if !ptPuddleBounced{
    				if vsp > 0{
						vsp = vsp * -1.2 //abs(vsp) * -5;
						hsp = hsp * 1.75;
						hitbox_timer = 0;
						length = 90;
						ptCheck = false;
						ptBounced = false;
						ptPuddleBounced = 30;
						other.goop_destroy = true;
    				} else if vsp < 0 {
    					vsp -= 5 //abs(vsp) * -5;
						hsp = hsp * 1.75;
						hitbox_timer = 0;
						length = 90;
						ptCheck = false;
						ptBounced = false;
						ptPuddleBounced = 30;
						other.goop_destroy = true;
    				}
    			}
    		}
    		if(get_player_color(player) != 12){
        		spawn_hit_fx(id.x, id.y+0, puddle_bounceoff); 
    		}else{
        		spawn_hit_fx(id.x, id.y+0, puddle_bounceoff);
    		}
    		sound_play(asset_get("sfx_frog_dstrong"), false, noone, 1);
    		//}
		}
	}
}

if attack == AT_NSPECIAL && hbox_num == 1{
	/*if place_meeting(x, y, pHitBox){
		can_hit[player_id] = true;
		hsp *= -1;
		vsp = -6;
	}/*
	/*if ( y-800 > get_instance_y(asset_get("camera_obj"))){
    destroyed = true;
    move_cooldown[AT_NSPECIAL] = 2;
	}*/

	if (player_id.window == 2 && player_id.attack == AT_NSPECIAL && player_id.window_timer < 3){ vsp -= 3; }
	//if (player_id.window_timer > 3){ vsp += 1; }
	
	if ptCheck = true{
		hitbox_timer = 0;
		length = 90;
		ptCheck = false;
	}
	
	if ptPuddleBounced > 0 {
		ptPuddleBounced --;
	}
}

if self == player_id.ptooie && ptooie_hit && has_hit{
	if ptooie_who.hitstop > 0{
		in_hitpause = true;
	} else {
		in_hitpause = false;
		vsp = -6;
		hsp = hsp * -0.5;
		ptooie_hit = false;
	}
}

if self == player_id.ptooie && place_meeting(x - 15 * ptDir, y - 10, (asset_get("par_block"))) && ptBounced == false{
	vsp = -6;
	hsp = hsp * 0.7;
	ptBounced = true;
	sound_play(asset_get("sfx_kragg_rock_land"), false, noone, 1, 1);
}
if self == player_id.ptooie && place_meeting(x - 10 * ptDir , y - 10, (asset_get("par_block"))) && ptBounced == false{
	vsp = -3;
	hsp = hsp * -0.8;
	ptBounced = true;
	sound_play(asset_get("sfx_kragg_rock_land"), false, noone, 1, 1);
}

if attack == AT_NTHROW{
	/*if ( y-800 > get_instance_y(asset_get("camera_obj"))){
    destroyed = true;
    move_cooldown[AT_NSPECIAL] = 2;
	}*/
	if ptCheck = true{
		hitbox_timer = 0;
		length = 90;
		ptCheck = false;
	}
}

if(attack == AT_NSPECIAL && hbox_num == 1){

//Ptooie Directionality

	//Ptooie Directionality
	if hsp > 0{
    	spr_dir = 1
    	ptDir = 1;
	} else if hsp < 0{
    	spr_dir = -1
    	ptDir = -1
	}
	
	//Ptooie Angle
	if player_id.ptooie == self && (hsp > 4 || hsp < -4){
		kb_angle = 45;
	} else if player_id.ptooie == self {
		kb_angle = 70;
	}

//Spikeball Spin
	if(player_id.ptooie == self && !in_hitpause){
    	if player_id.spr_dir{
    	proj_angle -= player_id.ptooie_spin;
    	//image_angle -= 7
    	}else{
    	proj_angle += player_id.ptooie_spin;
    	//image_angle += 7
    	}
	}
}

//END OF PTOOIE CODE


if (attack == AT_DSPECIAL){
	with (pHitBox){ //Touching itself, moving away
	/*
	 if was_parried && id = player_id.goop_1 && place_meeting(x, y, player_id.hit_player_obj){
	 	with player_id{
	 		instance_destroy(goop_1);
	 	}	
	 }
	 if was_parried && id = player_id.goop_2 && place_meeting(x, y, player_id.hit_player_obj){
	 	with player_id{
	 		instance_destroy(goop_2);
	 	}	
	 }*/
		var hitbox_timer2 = noone;
    	if (hbox_num != 3 && hbox_num != 4 && img_spd == 0 && other.hitbox_timer2 > hitbox_timer2 && player_id == other.player_id && attack == AT_DSPECIAL && (other.hbox_num == 1 || other.hbox_num == 2)
    	&& place_meeting(x, y, other) && other.vsp == 0){
        	var moveDir = sign(x-other.x);
        	if (moveDir == 0) moveDir = id>other?-1:1;
        	hsp += 4 * moveDir;
        	touch_timer += 1;
        	if touch_timer > 5 && hsp = 0{
        		instance_destroy(id);
        	}
    		}
		}
}

if (attack == AT_DSPECIAL){
	
	if (hbox_num == 4 && hitbox_timer == 1){  
		sound_play(asset_get("sfx_burnconsume"));
	} //Making that sloosh sound
	
	hitbox_timer2++; //How long the puddles have been out, for nudging purposes
	if was_parried{
		instance_destroy(player_id.goop_1);
		instance_destroy(player_id.goop_2);
	}
	if (player_id.was_parried){ destroyed = true; }
	if (hbox_num == 1){ player_id.goop_1 = id; }
	if (hbox_num == 2){ player_id.goop_2 = id; }
	
	if (hbox_num == 1 || hbox_num == 2){
	if (vsp == 0){
		hit_priority = 0;
		if get_player_color(player) != 12{
			sprite_index = sprite_get("dspecial_proj_splat");
		} else {
			sprite_index = sprite_get("petey_dspecial_proj_splat");
		}

		if (hitbox_timer >= 25){ hitbox_timer = 5; goop_repeat += 1; create_hitbox(AT_DSPECIAL, 3, x, y); }
		if (image_index >= 3){ img_spd = 0; }
    }
    
    if (hbox_num = 1) || (hbox_num = 2){
    	if goop_destroy{
    		goop_destroy_timer ++;
    		if goop_destroy_timer > 1{
    			instance_destroy(id);
    		}
    	}
    }
    
    
    if ( (abs(hsp) > 0 || vsp == 0) && img_spd == 0
	&& !((place_meeting( x, y+3, asset_get("par_block"))) || (place_meeting( x, y+3, asset_get("par_jumpthrough"))) ) ){ instance_destroy(); exit; }
    
    if ((place_meeting( x, y+3, asset_get("par_block"))) || (place_meeting( x, y+3, asset_get("par_jumpthrough"))) ) && !((place_meeting( x + 72, y+3, asset_get("par_block"))) || (place_meeting( x + 72, y+3, asset_get("par_jumpthrough"))) ){
    	hsp = -2;
    } else if ((place_meeting( x, y+3, asset_get("par_block"))) || (place_meeting( x, y+3, asset_get("par_jumpthrough"))) ) && !((place_meeting( x - 72, y+3, asset_get("par_block"))) || (place_meeting( x - 72, y+3, asset_get("par_jumpthrough"))) ){
    	hsp = 2;
    } else if ((place_meeting( x, y+3, asset_get("par_block"))) || (place_meeting( x, y+3, asset_get("par_jumpthrough"))) ){
    	hsp = 0;
    }
    
    with (pHitBox){ //Bair hitting the goop
	if (player_id == other.player_id && (attack == AT_BAIR) && place_meeting(x,y+13,other.id)) {
		with (other){
		create_hitbox(AT_DSPECIAL, 4, x, y-16);
    	//spawn_hit_fx(x, y-10, 202);
    	destroyed = true;
    	with (player_id){
    	spawn_hit_fx(other.x, other.y-16, puddle_combust);
    	hitpause = true;
    	hitstop = 7;
    	old_vsp = vsp;
    	old_hsp = hsp;
    	other.destroyed = true;
    			}
    		}
    	}
    }
	}
}

if (attack == AT_FSPECIAL){
	if (in_hitpause == true && hitpause_timer > 1){ instance_destroy(); exit; }
	if (in_hitpause == true && hitpause_timer == 1){ spawn_hit_fx(hit_goop.x, hit_goop.y-16, player_id.puddle_combust); }
	
	with (pHitBox){ //Touching FSpecial Fireball, exploding
    	if (player_id == other.player_id && attack == AT_DSPECIAL && other.in_hitpause == false && (hbox_num == 1 || hbox_num == 2) && (place_meeting(x, y-1, other) || place_meeting(x, y-32, other)) && hsp == 0){
    		//spawn_hit_fx(x, y-16, puddle_combust);
    		create_hitbox(AT_DSPECIAL, 4, x, y-13);
    		goop_destroy = true;
    		other.in_hitpause = true;
    		other.hit_goop = id;
    	}
	}
	
	//Giving it a bit of depth to flying out of its mouth
	if (hitbox_timer < 5){
	depth = depth+5;
	}
	if (hitbox_timer > 5){
	depth = depth-5;
	}
}

