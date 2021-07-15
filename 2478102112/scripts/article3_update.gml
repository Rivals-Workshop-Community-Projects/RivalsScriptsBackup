//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/

if instance_exists(owner){
	var cstick_pressed = owner.up_stick_pressed || owner.down_stick_pressed || owner.left_stick_pressed || owner.right_stick_pressed;
}

if nuke_out = 1{
	anim_time += 1;
}



//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}
if (owner != noone && owner.state = PS_RESPAWN){
	instance_destroy();
    exit;
}

if pick_timer >= 10{
	//print_debug("lizard");
	with (pHitBox){
	    if (place_meeting(x,y,other.id) and id != other.hbox and type != 2 && damage > 0 && hit_priority > 0){
	    	other.picked_up = true;
	    	other.owner = player_id;
	    }
	}
	with (oPlayer){
	    if (place_meeting(x,y,other.id) and (state == PS_WAVELAND or state == PS_AIR_DODGE)){
	    	other.picked_up = true;
	    	other.owner = self;
	    	//print_debug("dog");
	    }
	}
}
//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	instance_destroy();
    exit;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
	zdrop = false
	cam_x = get_instance_x(player_id.camera_obj) - view_get_wview()/2;
	cam_y = get_instance_y(player_id.camera_obj) - view_get_hview()/2;
	//var nuke_hit = 0
	if player_id.que_timer <= 0{
		if state_timer == 0 and obj_article1.stability == 0{
			print("mew")
			itemnum = random_func( 0, 10, true );//10
		}
		if state_timer == 0 and obj_article1.stability == 1{
			itemnum = random_func( 0, 17, true );//17
			print("mew")
		}
	}
	if player_id.que_timer > 0{
		if state_timer == 0{
			print("bark")
			itemnum = random_func( 0, 17, true );//17
		}
	}
	
    
    //fly  out when spawned
    if free == true{
    	vsp = (5 + (state_timer/4));
    	if itemnum != 16{
    		hsp = 0;
    	}
    }
    
    if picked_up{
        state = 3;
        state_timer = 0;
    }
    
    //Go to idle after 40 frames
    if free = false and (itemnum < 11 or itemnum == 12 or itemnum == 14 or itemnum == 15){
        state = 1;
        state_timer = 0;
    }
    if free = false and itemnum == 13{
    	state = 6;
    	state_timer = 0;
        //hbox = create_hitbox(AT_EXTRA_1, 9, x+16, y-24);
        //nuke_hit += 1
    }
    if free = false and itemnum == 16{
    	state = 8
    	state_timer = 0
    }
    /*if nuke_hit = 2{
    	state = 2;
    	nuke_hit = 0;
    }*/
    if state_timer >= 100{
    	state = 2;
    	state_timer = 0
    }
    pick_timer = 10;
    nuke_out = 0;
    if (itemnum == 10 or itemnum == 11 or itemnum == 14){
		spr_dir = 1;
	}
	if itemnum == 16{
		if !instance_exists(hbox) {
    	hbox = create_hitbox(AT_EXTRA_1, 17, x, y);
	    }
	    if instance_exists(hbox){
	    	hbox.x = x+(4*spr_dir)
	    	hbox.y = y-40
	    }
	}
}



//State 1: Idle

if (state == 1){
    
    //Stop the movement from state 0
   	vsp = 0;
    hsp = 0;
  
    //Die if should die
    if shoulddie{
        state = 2;
        state_timer = 0;
    }
    
    if picked_up{
        state = 3;
        state_timer = 0;
    }
    
    if state_timer = 1000{
    	shoulddie = true;
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    
    if free{
    	state = 0;
    	state_timer = 0;
    }
    if itemnum == 16{
    	state = 8;
    	state_timer = 0;
    }
    pick_timer = 10;
    
    if state_timer = 0{
    	if !instance_exists(hbox) {
	    	if itemnum == 14 {
	    		hbox = create_hitbox(AT_EXTRA_1, 15, x, y);
	    		//print("monke")
	    	}
	    }
    }
}



//State 2: Dying

if (state == 2){
	if (instance_exists(hbox)) {
		instance_destroy(hbox);
	}
    if (state_timer == die_time){
        player_id.killarticles = false;
        instance_destroy();
        exit;
    }
    vsp = 0;
    hsp = 0;
    pick_timer = 0;
}



//State 3: Held

if (state == 3){
	fired_gun = 0;
	if (instance_exists(hbox)){
		instance_destroy(hbox);
	}
	pick_timer = 0;
	can_be_grounded = false;
	vsp = floor(-(y - owner.y - -20)/2);
	hsp = floor(-(x - owner.x - owner.spr_dir * 40)/2);
	if ((owner.attack_pressed or (cstick_pressed and owner.free)) and state_timer >= 10 and owner.state_cat != SC_HITSTUN) or (owner.joy_pad_idle and owner.shield_pressed and owner.state == PS_AIR_DODGE){
		if (owner.joy_pad_idle and owner.shield_pressed){
			with(owner){
				clear_button_buffer(PC_SHIELD_PRESSED);
				set_state(PS_IDLE_AIR);
				//print_debug("cat");
				zdrop = true
			}
		}
		state = 4;
		state_timer = 0;
	}
	if (itemnum != 10 and itemnum != 11 and itemnum != 14){
		spr_dir = owner.spr_dir;
	}
}



//State 4: thrown forward

if (state == 4){
	if (state_timer == 0){
		can_be_grounded = false;
		fall_through = true;
		free = true;
		if (cstick_pressed and !owner.down_stick_pressed and !owner.up_stick_pressed) {
			var throw_dir = owner.right_stick_pressed - owner.left_stick_pressed;
		} else {
			var throw_dir = owner.right_down - owner.left_down;
		}
		if throw_dir == -owner.spr_dir{
			if itemnum != 8{
				hsp = 15*throw_dir;
			}
			if itemnum == 8{
				hsp = 4*throw_dir;
			}
			owner.spr_dir = throw_dir;
			owner.attack = AT_FAIR;
		}
		else{
			if itemnum != 8{
				hsp = 15*owner.spr_dir;	
			}
			if itemnum == 8{
				hsp = 4*owner.spr_dir;	
			}
		}
		
		if itemnum == 8{//egg
			vsp = -12;
			hsp = 4*owner.spr_dir;
		}
		if itemnum != 8{
			vsp = -3;
			hsp = 15*owner.spr_dir;
		}
		
		pick_timer = 0;
		picked_up = false;
		if ((owner.down_down) or (owner.down_stick_pressed)) and !owner.left_stick_pressed and !owner.right_stick_pressed{
			hsp = 0;
			vsp = 15;
		}
		if ((owner.up_down) or (owner.up_stick_pressed)) and !owner.left_stick_pressed and !owner.right_stick_pressed{
			hsp = 0;
			vsp = -15;
		}
		if (owner.state_cat == SC_AIR_NEUTRAL and owner.joy_pad_idle){
			hsp = 0;
			vsp = 0;
			//print_debug("cat");
			zdrop = true;
		}
		fake_vsp = vsp;
	}
	
	fake_vsp += .5;
	vsp = fake_vsp;
	pick_timer++;
	if pick_timer < 10{
		can_be_grounded = false;
		fall_through = true;
		free = true;
		//ignores_walls = true;
		//mask_index = asset_get("empty_sprite")
		if (place_meeting(x, y + vsp, asset_get("par_block"))) {
		  free = false;
		  //ignores_walls = false;
		  //mask_index = sprite_index
		}
		//print_debug("duck")
	} else{
		can_be_grounded = true;
		fall_through = false;
		//print_debug("goose")
	}
	
    if !instance_exists(hbox) {
    	if itemnum == 0{
    		hbox = create_hitbox(AT_EXTRA_1, 2, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 1 {
    		hbox = create_hitbox(AT_EXTRA_1, 3, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 2 {
    		hbox = create_hitbox(AT_EXTRA_1, 4, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 3 {
    		hbox = create_hitbox(AT_EXTRA_1, 5, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 4 {
    		hbox = create_hitbox(AT_EXTRA_1, 6, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 5 {
    		hbox = create_hitbox(AT_EXTRA_1, 7, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 6 {
    		hbox = create_hitbox(AT_EXTRA_1, 8, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 7 {
    		hbox = create_hitbox(AT_EXTRA_1, 9, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 8 {
    		hbox = create_hitbox(AT_EXTRA_1, 13, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 9 {
    		hbox = create_hitbox(AT_EXTRA_1, 14, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 10 {
    		hbox = create_hitbox(AT_EXTRA_1, 10, x+(16 * spr_dir), y-24);
    	}
    	if itemnum == 14 {
    		hbox = create_hitbox(AT_EXTRA_1, 15, x, y);
    	}
    	if itemnum == 16 {
    		hbox = create_hitbox(AT_EXTRA_1, 17, x, y);
    	}
    	if itemnum == 12 or itemnum == 15{
    		if zdrop = false{
    			state = 6;
    			state_timer = 0;
    		}
    		if zdrop = true{
    			state = 0;
    			state_timer = 0
    		}
    	}
    	if itemnum == 13{
    		state = 6;
    		state_timer = 0;
    	}
    	//hbox = create_hitbox(AT_EXTRA_1, 2, x+16, y-24);
    	if (owner != player_id){
			hbox.player = owner.player;
		}
    }
    if instance_exists(hbox) {
        hbox.y = y-24
        hbox.x = x+16*spr_dir
        hbox.length++;
        hbox.item_ins = id;
    }
    
	if free == false and (itemnum != 11 and itemnum != 14 and itemnum != 15 and itemnum != 16){
		if itemnum == 7{
			owner.x = x
			owner.y = y
		}
		state = 2;
		state_timer = 0;
	}
	if free == false and (itemnum == 11 or itemnum == 14){
		state = 1;
		state_timer = 0;
	}
	if free == false and itemnum == 16{
		state = 8;
		state_timer = 0;
	}
	
	if picked_up{
		state = 3;
		state_timer = 0;
		//print_debug("crocodile");
	}
	
	if state_timer >= 100{
    	state = 2;
    	state_timer = 0
	}
}



//State 5 //bounce

if (state == 5){
	if (state_timer > 0){
		if (free == false){
			state = 2;
			state_timer = 0;
		}
	}
	if (state_timer == 0){
		vsp = -10;
		picked_up = false;
		pick_timer = 0;
	}
	vsp += .5;
	pick_timer++
	if picked_up{
		state = 3;
		state_timer = 0;
	}
	if state_timer >= 100{
    	state = 2;
    	state_timer = 0
	}
}



//State 6 (gun or nuke/instant trigger)

if (state == 6){
	if itemnum == 12{//gun
		shake_camera( 8, 6 );
		if state_timer = 0{
			if !instance_exists(hbox) {
				hbox = create_hitbox(AT_EXTRA_1, 11, x+(556 * spr_dir), y-24);
				if (owner != player_id){
					hbox.player = owner.player;
				}
			}
			if ammo > 0{
				state = 3;
				state_timer = 0;
				ammo -= 1;
				sound_play(asset_get("sfx_ell_uspecial_explode"));
				fired_gun = 1;
			}
			if ammo = 0{
				state = 2
				state_timer = 0;
			}
		}	
	}
	if itemnum == 15{//backwards gun
		shake_camera( 8, 6 );
		if state_timer = 0{
			if !instance_exists(hbox) {
				hbox = create_hitbox(AT_EXTRA_1, 16, x+(556 * spr_dir), y-24);
				hbox.can_hit_self = true
				if (owner != player_id){
					hbox.player = owner.player;
				}
			}
			if ammo > 0{
				state = 3;
				state_timer = 0;
				ammo -= 1;
				sound_play(asset_get("sfx_ell_uspecial_explode"));
				fired_gun = 1;
			}
			if ammo = 0{
				state = 2
				state_timer = 0;
			}
		}	
	}
	if itemnum == 13{//nuke
		shake_camera( 80, 60 );
		nuke_out = 1;
		if state_timer = 0{
			if !instance_exists(hbox) {
				hbox = create_hitbox(AT_EXTRA_1, 12, x+(16 * spr_dir), y-24);
				if (owner != player_id){
					hbox.player = owner.player;
				}
			}
			state = 7;
			state_timer = 0;
		}	
	}
	
}



//State 7

if (state == 7){
	if state_timer = 78{
		if (instance_exists(hbox)) {
			instance_destroy(hbox);
		}
		player_id.killarticles = false;
        instance_destroy();
        exit;
	}
}



//State 8

if (state == 8){
	if state_timer == 0{
		instance_destroy(hbox)
	}
	hsp = 4*spr_dir
	if free == false{
		vsp -= 4
	}
	if free == true{
		vsp += .5
	}
	if (place_meeting(x+hsp, y, asset_get("par_block"))){
		spr_dir = spr_dir*-1
	}
	if state_timer == 360{
		state = 2
		state_timer = 0
	}
	if !instance_exists(hbox) and free = false{
    	hbox = create_hitbox(AT_EXTRA_1, 17, x, y);
    }
    if instance_exists(hbox){
    	hbox.x = x+(4*spr_dir)
    	hbox.y = y-40
    }
    if picked_up{
        state = 3;
        state_timer = 0;
    }
    if state_timer == 0{
    	pick_timer = 10;
	}
}



//State 9: Throw Projectile

if (state == 9){
    
    //play the funi sound
    
   /* with(candy_pos){
    	if (state_timer == 1){
		    state = 2;
		    state_timer = 0;
		    create_hitbox(AT_EXTRA_1, 1, x, y);
    	}
    }
    
    //Die after 28 frames (article is used up)
    if (state_timer == 28){
	    player_id.killarticles = false;
        instance_destroy();
        exit;
    }
}*/
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
    	if itemnum == 0{
    		new_sprite = sprite_get("onion_free");
        	animation_type = 0;
    	}
    	if itemnum == 1{
    		new_sprite = sprite_get("torch_free");
        	animation_type = 0;
    	}
    	if itemnum == 2{
    		new_sprite = sprite_get("kobomb_free");
        	animation_type = 0;
    	}
    	if itemnum == 3{
    		new_sprite = sprite_get("8ball_free");
        	animation_type = 0;
    	}
    	if itemnum == 4{
    		new_sprite = sprite_get("glue_free");
        	animation_type = 0;
    	}
    	if itemnum == 5{
    		new_sprite = sprite_get("dart_free");
        	animation_type = 0;
    	}
    	if itemnum == 6{
    		new_sprite = sprite_get("turron_free");
        	animation_type = 0;
    	}
    	if itemnum == 7{
    		new_sprite = sprite_get("balloon_free");
        	animation_type = 0;
    	}
    	if itemnum == 8{
    		new_sprite = sprite_get("egg_free");
        	animation_type = 0;
    	}
    	if itemnum == 9{
    		new_sprite = sprite_get("dumbell_free");
        	animation_type = 0;
    	}
    	if itemnum == 10{
    		new_sprite = sprite_get("heart_free");
        	animation_type = 0;
    	}
    	if itemnum == 11{
    		new_sprite = sprite_get("ñ_idle");
        	animation_type = 0;
    	}
    	if itemnum == 12{
    		new_sprite = sprite_get("gun_free");
        	animation_type = 0;
    	}
    	if itemnum == 13{
    		new_sprite = sprite_get("nuke_idle");
        	animation_type = 0;
    	}
    	if itemnum == 14{
    		new_sprite = sprite_get("nofun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 15{
    		new_sprite = sprite_get("bgun_free");
        	animation_type = 0;
    	}
    	if itemnum == 16{
    		new_sprite = sprite_get("masti_drop");
        	animation_type = 0;
    	}
        break;
    case 1:
    	if itemnum == 0{
    		new_sprite = sprite_get("onion_idle");
        	animation_type = 1;
    	}
    	if itemnum == 1{
    		new_sprite = sprite_get("torch_idle");
        	animation_type = 1;
    	}
    	if itemnum == 2{
    		new_sprite = sprite_get("kobomb_idle");
        	animation_type = 1;
    	}
    	if itemnum == 3{
    		new_sprite = sprite_get("8ball_idle");
        	animation_type = 1;
    	}
    	if itemnum == 4{
    		new_sprite = sprite_get("glue_idle");
        	animation_type = 1;
    	}
    	if itemnum == 5{
    		new_sprite = sprite_get("dart_idle");
        	animation_type = 1;
    	}
    	if itemnum == 6{
    		new_sprite = sprite_get("turron_idle");
        	animation_type = 1;
    	}
    	if itemnum == 7{
    		new_sprite = sprite_get("balloon_idle");
        	animation_type = 0;
    	}
    	if itemnum == 8{
    		new_sprite = sprite_get("egg_idle");
        	animation_type = 0;
    	}
    	if itemnum == 9{
    		new_sprite = sprite_get("dumbell_idle");
        	animation_type = 0;
    	}
    	if itemnum == 10{
    		new_sprite = sprite_get("heart_idle");
        	animation_type = 0;
    	}
    	if itemnum == 11{
    		new_sprite = sprite_get("ñ_idle");
        	animation_type = 0;
    	}
    	if itemnum == 12{
    		new_sprite = sprite_get("gun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 13{
    		new_sprite = sprite_get("nuke_idle");
        	animation_type = 0;
    	}
    	if itemnum == 14{
    		new_sprite = sprite_get("nofun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 15{
    		new_sprite = sprite_get("bgun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 16{
    		new_sprite = sprite_get("masti_free");
        	animation_type = 0;
    	}
        break;
    case 2:
        new_sprite = sprite_get("candy_die");
        animation_type = 2;
        break;
    case 3:
    	if itemnum == 0{
    		new_sprite = sprite_get("onion_idle");
        	animation_type = 1;
    	}
    	if itemnum == 1{
    		new_sprite = sprite_get("torch_idle");
        	animation_type = 1;
    	}
    	if itemnum == 2{
    		new_sprite = sprite_get("kobomb_idle");
        	animation_type = 1;
    	}
    	if itemnum == 3{
    		new_sprite = sprite_get("8ball_idle");
        	animation_type = 1;
    	}
    	if itemnum == 4{
    		new_sprite = sprite_get("glue_idle");
        	animation_type = 1;
    	}
    	if itemnum == 5{
    		new_sprite = sprite_get("dart_idle");
        	animation_type = 1;
    	}
    	if itemnum == 6{
    		new_sprite = sprite_get("turron_idle");
        	animation_type = 1;
    	}
    	if itemnum == 7{
    		new_sprite = sprite_get("balloon_idle");
        	animation_type = 0;
    	}
    	if itemnum == 8{
    		new_sprite = sprite_get("egg_idle");
        	animation_type = 0;
    	}
    	if itemnum == 9{
    		new_sprite = sprite_get("dumbell_idle");
        	animation_type = 0;
    	}
    	if itemnum == 10{
    		new_sprite = sprite_get("heart_idle");
        	animation_tye = 0;
    	}
    	if itemnum == 11{
    		new_sprite = sprite_get("ñ_idle");
        	animation_tye = 0;
    	}
    	if itemnum == 12{
    		new_sprite = sprite_get("gun_idle");
        	animation_tye = 0;
    	}
    	if itemnum == 13{
    		new_sprite = sprite_get("nuke_idle");
        	animation_type = 0;
    	}
    	if itemnum == 14{
    		new_sprite = sprite_get("nofun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 15{
    		new_sprite = sprite_get("bgun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 16{
    		new_sprite = sprite_get("masti_free");
        	animation_type = 0;
    	}
        break;
    case 4:
    	if itemnum == 0{
    		new_sprite = sprite_get("onion_free");
        	animation_type = 0;
    	}
    	if itemnum == 1{
    		new_sprite = sprite_get("torch_free");
        	animation_type = 0;
    	}
    	if itemnum == 2{
    		new_sprite = sprite_get("kobomb_free");
        	animation_type = 0;
    	}
    	if itemnum == 3{
    		new_sprite = sprite_get("8ball_free");
        	animation_type = 0;
    	}
    	if itemnum == 4{
    		new_sprite = sprite_get("glue_free");
        	animation_type = 0;
    	}
    	if itemnum == 5{
    		new_sprite = sprite_get("dart_free");
        	animation_type = 0;
    	}
    	if itemnum == 6{
    		new_sprite = sprite_get("turron_free");
        	animation_type = 0;
    	}
    	if itemnum == 7{
    		new_sprite = sprite_get("balloon_free");
        	animation_type = 0;
    	}
    	if itemnum == 8{
    		new_sprite = sprite_get("egg_free");
        	animation_type = 0;
    	}
    	if itemnum == 9{
    		new_sprite = sprite_get("dumbell_free");
        	animation_type = 0;
    	}
    	if itemnum == 10{
    		new_sprite = sprite_get("heart_free");
        	animation_type = 0;
    	}
    	if itemnum == 11{
    		new_sprite = sprite_get("ñ_idle");
        	animation_type = 0;
    	}
    	if itemnum == 12{
    		new_sprite = sprite_get("gun_free");
        	animation_type = 0;
    	}
    	if itemnum == 13{
    		new_sprite = sprite_get("nuke_idle");
        	animation_type = 0;
    	}
    	if itemnum == 14{
    		new_sprite = sprite_get("nofun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 15{
    		new_sprite = sprite_get("bgun_free");
        	animation_type = 0;
    	}
    	if itemnum == 16{
    		new_sprite = sprite_get("masti_free");
        	animation_type = 0;
    	}
        break;
    case 5:
    	if itemnum == 0{
    		new_sprite = sprite_get("onion_free");
        	animation_type = 0;
    	}
    	if itemnum == 1{
    		new_sprite = sprite_get("torch_free");
        	animation_type = 0;
    	}
    	if itemnum == 2{
    		new_sprite = sprite_get("kobomb_free");
        	animation_type = 0;
    	}
    	if itemnum == 3{
    		new_sprite = sprite_get("8ball_free");
        	animation_type = 0;
    	}
    	if itemnum == 4{
    		new_sprite = sprite_get("glue_free");
        	animation_type = 0;
    	}
    	if itemnum == 5{
    		new_sprite = sprite_get("dart_free");
        	animation_type = 0;
    	}
    	if itemnum == 6{
    		new_sprite = sprite_get("turron_free");
        	animation_type = 0;
    	}
    	if itemnum == 7{
    		new_sprite = sprite_get("balloon_free");
        	animation_type = 0;
    	}
    	if itemnum == 8{
    		new_sprite = sprite_get("egg_free");
        	animation_type = 0;
    	}
    	if itemnum == 9{
    		new_sprite = sprite_get("dumbell_free");
        	animation_type = 0;
    	}
    	if itemnum == 10{
    		new_sprite = sprite_get("heart_free");
        	animation_type = 0;
    	}
    	if itemnum == 11{
    		new_sprite = sprite_get("ñ_idle");
        	animation_type = 0;
    	}
    	if itemnum == 12{
    		new_sprite = sprite_get("gun_free");
        	animation_type = 0;
    	}
    	if itemnum == 13{
    		new_sprite = sprite_get("nuke_idle");
        	animation_type = 0;
    	}
    	if itemnum == 14{
    		new_sprite = sprite_get("nofun_idle");
        	animation_type = 0;
    	}
    	if itemnum == 15{
    		new_sprite = sprite_get("bgun_free");
        	animation_type = 0;
    	}
    	if itemnum == 16{
    		new_sprite = sprite_get("masti_free");
        	animation_type = 0;
    	}
    	break;
    case 6: //stop their execution, they'll all default
    case 7: //to state 9's behavior. Read up on those
    case 8:
    	if itemnum == 16{
    		new_sprite = sprite_get("masti_free");
        	animation_type = 2;
    	}
    case 9:
        break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



//Make time progress
state_timer++;