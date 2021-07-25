//article3_update
statetimer++;

if(statetimer == 500 && state < 4){
	state = 400;
}
if(x > room_width){
	with(player_id){
		tnthit = false;
		tntrecharge = 1;
		tntreal = 0;
	}
	instance_destroy();
	return;
}
if(y > room_height){
	with(player_id){
		tnthit = false;
		tntrecharge = 1;
		tntreal = 0;
	}
	instance_destroy();
	return;
}
//right
if(state == 0){
	if(dj){
		sprite_index = sprite_get("tnt2DJ");
	}
	else{
		sprite_index = sprite_get("tnt2");
	}
	if(creepressed == 2){
		state = 3
	}
	if(statetimer < 6){
		hsp = 3.4;
		vsp = -4;
	}
	if(statetimer > 6){
		hsp -= 0.01;
		vsp += 0.7;
	}
	if(free == false){
		state = 2;
	}
}
//left
if(state == 1){
	if(dj){
		sprite_index = sprite_get("tntDJ");
	}
	else{
		sprite_index = sprite_get("tnt");
	}
	if(creepressed == 2){
		state = 3
	}
	if(statetimer < 6){
		hsp = -3.4;
		vsp = -4;
	}
	if(statetimer > 6){
		hsp -= -0.01;
		vsp += 0.7;
	}
	if(free == false){
		state = 2;
	}
}

if(state == 2){
	if(state != 7 || state != 8 || state != 3 || state != 4){
	if(!tntsendervar){
		if hitstop <= 0 {
		    if hit_lockout <= 0 
		    
		    with pHitBox {
		        if place_meeting(x,y,other) && "hitbox_has_hit_article" not in self {
		        	ds_list_add(other.colliding_hitboxes,id);
		        }
		    } else if hit_lockout > 0 hit_lockout--;
		        
		    var currentHighestPriority = noone;
		    if ds_list_size(colliding_hitboxes) > 1 {
		        for (var i = 0; i < ds_list_size(colliding_hitboxes); i++) {
		            if currentHighestPriority != noone {
		                if colliding_hitboxes[| i].hit_priority > currentHighestPriority.hit_priority 
		                    currentHighestPriority = colliding_hitboxes[| i];
		            } else {
		                currentHighestPriority = colliding_hitboxes[| i];
		            }
		        } 
		    }
		    else if ds_list_size(colliding_hitboxes) == 1 {
		       currentHighestPriority = colliding_hitboxes[| 0];
		    }
		    
		    ds_list_clear(colliding_hitboxes);
		            
		    if currentHighestPriority != noone with currentHighestPriority {
		            var angle = get_hitbox_angle(self);
		            if(player_id.spr_dir == 1){
		            	if(player_id.attack == AT_BAIR){
		            		other.state = 8;
		            	}
		            	else{
				            if(angle>=90 && angle<=0){
							    other.state = 7;
				            }
				            if(angle>=180 && angle<=90){
							    other.state = 8;
				            }
				            if(angle>=0 && angle<=270){
							    other.state = 7;
				            }
				            if(angle>=180 && angle<=270){
							    other.state = 8;
				            }
				            if(angle>=80 && angle<=100){
				            	other.state = 50;
				            }
		            	}
		            }
		            else{
		            	if(player_id.attack == AT_BAIR){
		            		other.state = 7;
		            	}
		            	else{
				            if(angle>=90 && angle<=0){
							    other.state = 8;
				            }
				            if(angle>=180 && angle<=90){
							    other.state = 7;
				            }
				            if(angle>=0 && angle<=270){
							    other.state = 8;
				            }
				            if(angle>=180 && angle<=270){
							    other.state = 7;
				            }	
				            if(angle>=80 && angle<=100){
				            	other.state = 50;
				            }
		            	}
		            }
		            other.hit_lockout = 20;
		            
		            hitbox_has_hit_article = true;
		            
		            sound_play(sound_effect);
		            spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
		            with player_id {
		                old_hsp = hsp;
		                old_vsp = vsp;                      
		                
		                hitpause = true;
		                has_hit = true;
		            }
		            player_id.hitstop = ceil(hitpause+hitpause_growth*.4-2);
		            other.hitstop = ceil(hitpause+hitpause_growth*.4-2);
		    }
		}
	}
	}
	if(!free){
	hsp = 0;
	}
	else{
		vsp += 0.5;
	}
	with(player_id){
		tntreal = 0;
	}
	life_timer++
	if(creepressed == 1){
		state = 3
	}
}
if(state == 6){
	if(free == false){
	hsp = 0;	
	}
	with(player_id){
		tntreal = 0;
	}
	life_timer++
	if(creepressed == 1){
		state = 3
	}
}

if(state == 3){
	hsp = 0;
	vsp += 0.9;
	image_index = 1;
	if(free == false){
		hsp = 0;
	}
	else{
		if(creepressed == 1){
			vsp += 0.6
		}
	}
	tnttimer++;
	if(tnttimer == 1){
		sound_play(sound_get("fuse2"));
	}
	if(tnttimer == 13){
		with(player_id){
			tntboom = 1;
		}
	}
	if(tnttimer == 14){
		sound_play(sound_get("explode3"));
		state = 4;
	}
}
//normal
if(state == 4){
	with(player_id){
		tnthit = false;
		tntrecharge = 1;
		tntreal = 0;
	}
	create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
	instance_destroy();
	return;
}
//attacked
if(state == 10){
	with(player_id){
		tnthit = false;
		tntrecharge = 1;
		tntreal = 0;
	}
	create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
	instance_destroy();
	return;
}
//right
if(state == 7){
	vsp += 0.6;
	tnttimer4++;
	if(tnttimer4 == 1){
		sound_play(sound_get("fuse2"));
		if(tnthit == 0){
			vsp = -5;
			hsp = 4.6;
		}
		if(tnthit == 1){
			vsp = -5;
			hsp = 6;	
		}
		sound_play(sound_get("hit1"));
	}
	if(tnttimer4 == 18){
		if(tnthit < 3){
			image_index = 0;
			tnttimer4 = 0;
			state = 2;	
		}
		if(tnthit == 2){
			sound_play(sound_get("explode3"));
			state = 10;
			tnttimer4 = 0;
		}
	}
}
//left
if(state == 8){
	vsp += 0.6;
	tnttimer4++;
	if(tnttimer4 == 1){
		sound_play(sound_get("fuse2"));
		if(tnthit == 0){
			vsp = -5;
			hsp = -4.6;
		}
		if(tnthit == 1){
			vsp = -5;
			hsp = -6;	
		}
		sound_play(sound_get("hit1"));
	}
	if(tnttimer4 == 18){
		if(tnthit < 3){
			image_index = 0;
			tnttimer4 = 0;
			state = 2;	
		}
		if(tnthit == 2){
			sound_play(sound_get("explode3"));
			state = 10;
			tnttimer4 = 0;
		}
	}
}

if(state == 20){
	image_index += 0.2
	vsp += 0.6;
	if(tntdir == 1 && rune_tnt == 1){
		vsp = -3.5;
		hsp = -5;
	}
	if(tntdir == 2 && rune_tnt == 1){
		vsp = -3.5;
		hsp = 5;
	}
	rune_tnt++;
	if(rune_tnt == 15){
		with(player_id){
			tntboom = 2;
		}
	}
	if(rune_tnt == 16){
		create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
		instance_destroy();
		return;
	}
}

if(state == 21){
	image_index += 0.2
	vsp += 0.6;
	if(tntdir == 1 && rune_tnt == 1){
		vsp = -3.5;
		hsp = -5;
	}
	if(tntdir == 2 && rune_tnt == 1){
		vsp = -3.5;
		hsp = 5;
	}
	rune_tnt++;
	if(rune_tnt == 16){
		with(player_id){
			tntboom = 0;
		}
		create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
		instance_destroy();
		return;
	}
}

if(state == 22){
	image_index += 0.2
	vsp += 0.6;
	if(tntdir == 1 && rune_tnt == 1){
		vsp = -3.5;
		hsp = -5;
	}
	if(tntdir == 2 && rune_tnt == 1){
		vsp = -3.5;
		hsp = 5;
	}
	rune_tnt++;
	if(rune_tnt == 15){
		with(player_id){
			tntboom = 2;
		}
	}
	if(rune_tnt == 16){
		sound_play(sound_get("explode3"));
		create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
		instance_destroy();
		return;
	}
}

if(state == 24){
	image_index += 0.2
	vsp += 0.6;
	if(tntdir == 1 && rune_tnt == 1){
		vsp = -3.5;
		hsp = -5;
	}
	if(tntdir == 2 && rune_tnt == 1){
		vsp = -3.5;
		hsp = 5;
	}
	rune_tnt++;
	if(rune_tnt == 16){
		with(player_id){
			tntboom = 0;
		}
		sound_play(sound_get("explode3"));
		create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
		instance_destroy();
		return;
	}
}

//upb
if(state == 50){
	image_index += 0.2
	vsp += 0.6;
	if(upb_tnt == 1){
		firesteal = create_hitbox(AT_USPECIAL, 14, x, y-24);
		sound_play(sound_get("fuse2"));
		vsp = -11;
	}
	if(upb_tnt < 31 && upb_tnt > 0){
	firesteal.x = x;
	firesteal.y = y-12;
	}
	upb_tnt++;
	if(upb_tnt == 31){
		sound_play(sound_get("explode3"));
	}
	if(upb_tnt == 32){
		with(player_id){
			tnthit = false;
			tntrecharge = 1;
			tntreal = 0;
		}
		create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
		instance_destroy();
		return;
	}
}

//upb
if(state == 51){
	image_index = 1;
	vsp += 0.6;
	if(boomtntweeee == 1){
		sound_play(sound_get("fuse2"));
	}
	boomtntweeee++;
	if(boomtntweeee == 13){
		sound_play(sound_get("explode3"));
	}
	if(boomtntweeee == 14){
		with(player_id){
			tnthit = false;
			tntrecharge = 1;
			tntreal = 0;
		}
		create_hitbox(AT_NSPECIAL, 1, x, y-24);
	if(dj){
		create_hitbox(AT_DTILT, 6, x, y);
	}
	else{
		create_hitbox(AT_DTILT, 2, x, y);	
	}
		instance_destroy();
		return;
	}
}

if(state == 100){
	vsp += 0.9;
	if(free == false){
		hsp = 0;
	}
	image_index = 1;
	tnttimer++;
	if(tnttimer == 9){
		with(player_id){
			tntboom = 1;
		}
	}
	if(tnttimer == 10){
		sound_play(sound_get("explode3"));
		state = 4;
	}
}

if(state == 400){
	with(player_id){
		tnthit = false;
		tntrecharge = 1;
		tntreal = 0;
	}
	spawn_hit_fx( x, y-12, 14);
	sound_play(sound_get("fuse2"));
	instance_destroy();
	return;
}