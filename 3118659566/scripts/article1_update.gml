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

//Are there too many articles? If so, I should die

if (replacedcount > maxarticles){
    shoulddie = true;
}

ignores_walls = false;

//print(letters)
//print(mbhp)
//print(state)
//print(mbopacity)


//#region getting hit
//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)
if (place_meeting(x, y, player_id.id)) {
	if player_id.attack == AT_EXTRA_1 && player_id.state == PS_ATTACK_AIR && player_id.window == 2 {
		if player_id.mb_vault_hit = false && state == 0 && state != 12 {
			player_id.mb_vault_hit = true;
			state = 12;
			state_timer = 0;
		}
	}

}

if (place_meeting(x, y, asset_get("pHitBox")) && can_be_hurt) { //makes the summon hittable
        with (asset_get("pHitBox")){
            if (player != other.player_id.player && other.letters > 0) || ((player == other.player_id.player && (id = player_id.letterID || id = player_id.airletterID))){
                if (place_meeting(x, y, other) && hit_priority != 0 && hitpause != 0 && kb_value != 0){
                    other.hitbox_hit = self;
                    if(type != 2){
                    player_id.hitpause = true;
                    player_id.hitstop = hitpause;
                    }
                    other.hitstop = hitpause;
                }
            }
        }
     
    if state == 0 && state != 9 && state != 2 && state != 3 && state != 4 && state != 10 {   
        with (pHitBox){
    		if (place_meeting(x,y,other.id) and player_id == other.player_id and 
    			(attack == AT_FSPECIAL_AIR and ((hbox_num == 2 || hbox_num == 4 || hbox_num == 6)) || 
    			(attack == AT_FSPECIAL and (hbox_num == 1 || hbox_num == 2))) ||
    			(attack == AT_FSPECIAL_2 and (hbox_num == 1))
    			&& player_id.mb_spin_hit = false) {
       		    	player_id.mb_spin_hit = true;
       		    	other.state = 9;
       		    	other.state_timer = 0;
    		} else if (place_meeting(x,y,other.id) and player_id == other.player_id and 
    			((attack == AT_USPECIAL || attack == AT_USPECIAL_2) and (hbox_num == 1 || hbox_num == 2 || hbox_num == 3 || hbox_num == 4))) {
       		    	player_id.mb_hammer_hit = true;
       		    	other.state = 11;
       		    	other.state_timer = 0;
    		} 
        }
    } 
        
        if (hitbox_hit != noone){
            if(hitbox_hit.hitpause > 0 && hitbox_hit.hit_priority > 0){

                with (hitbox_hit){
                    
                    sound_play(sound_effect);
                    var hitfx = spawn_hit_fx(floor(x), floor(y), hit_effect);
                    hitfx.pause = 10;
                }
                if(hitbox_hit.type == 1){
                hitbox_hit.player_id.hitpause = true;
                hitbox_hit.player_id.hitstop_full = hitbox_hit.hitpause;
                hitbox_hit.player_id.old_hsp = hitbox_hit.player_id.hsp
                hitbox_hit.player_id.old_vsp = hitbox_hit.player_id.vsp
                hitbox_hit.player_id.has_hit = true;
                hitstop = hitbox_hit.hitpause;
                hitby = hitbox_hit.player_id;
                }

            	//spr_dir = hitbox_hit.player_id.spr_dir;
        		
        		 if (hitbox_hit.id = player_id.letterID || hitbox_hit.id = player_id.airletterID) {
        		 	hitbox_hit.destroyed = true;
        		 	player_id.letterID = 0;
        		 	player_id.airletterID = 0;
        		 	if letters = 0 {
                    	state = 2;
                    	state_timer = 0;
                    	letters += 1;
                    	mbhp += 1;
                    	var k = spawn_hit_fx(x + (spr_dir * 1), y - 0, player_id.letter_add_vfx);
        				var k = spawn_hit_fx(x, y + 70, player_id.mb_hud_lvup1_vfx);
        				k.depth = depth + 1;
        				k.spr_dir = 1;
        				mbopacity = 1;
                    	sound_play(sound_get("mblvlup1"), 0, noone, 2, 1);
                    }	else if letters = 1 {
                    	state = 3;
                    	state_timer = 0;
                    	letters += 1;
                    	mbhp += 1;
                    	var k = spawn_hit_fx(x + (spr_dir * 1), y - 0, player_id.letter_add_vfx);
        				var k = spawn_hit_fx(x, y + 70, player_id.mb_hud_lvup2_vfx);
        				k.depth = depth + 1;
        				k.spr_dir = 1;
	       				mbopacity = 1;
                    	sound_play(sound_get("mblvlup2"), 0, noone, 2, 1);
                    }   else if letters = 2 {
                    	state = 4;
                    	state_timer = 0;
                    	letters += 1;
                    	mbhp += 1;
                    	var k = spawn_hit_fx(x + (spr_dir * 1), y - 0, player_id.letter_add_vfx);
        				var k = spawn_hit_fx(x, y + 70, player_id.mb_hud_lvup3_vfx);
        				k.depth = depth + 1;
        				k.spr_dir = 1;
	       				mbopacity = 1;
                    	sound_play(sound_get("mblvlup3"), 0, noone, 2, 1);
                    }   else if letters = 3 {
                    	state = 7;
                    	state_timer = 0;
                    	var k = spawn_hit_fx(x - (24), y - 65, player_id.letter_small_vfx);
						k.depth = depth + 1;
                    	sound_play(sound_get("bigwhistle"), 0, noone, 2, 1);
                    }
        		 } else {
        		 	if letters > 0 {
        		 		if mbhp > 1 && letters > 1{
        		 			//print("test");
        		 			state = 8;
        		 			state_timer = 0;
        		 			mbhp -= 1;
        		 			letters -= 1;
        		 		} else if letters = 1 {
        		 			sound_play(asset_get("sfx_shovel_hit_med2"));
    		                state = 1;
	        	            state_timer = 0;
        		 		}
        		 	}	
                }
        		
                    can_be_hurt = false;
                    idle_anim_rate = 4; 
                    depth = 0;
            }
        }
    }
    else{
        hitbox_hit = noone;
    }

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}

	if free {
		if airmovetimer % 8 = 0 {
			propframes += 1;
		}
	
		if propframes > 4 { 
			propframes = 1;
		}
	
		if state != 12 {
			vsp = airmovevsp;
			airmovetimer++;
			if airmovetimer % 20 = 0 {
				airmovevsp = airmovevsp * -1;
			}
		}
	} else {
		hsp = 0;
		vsp = 0;
	}
	

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2

if (player_id.killarticles && state != 1){
    state = 1;
    state_timer = 0;
}



//State buffering
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Idle

if (state == 0){
   can_be_hurt = true;
   animation_type = 0;

	if (free && y >= room_height - 40){
		vsp = -2;
	} else if y <= room_height {
		vsp = vsp * 0.8;
	}
	if (free && y <= (room_height - room_height + 180)){
		vsp = 2;
	} else if y >= (room_height - room_height + 180) {
		vsp = vsp * 0.8;
	}
	if (free && x >= (room_width  - 60)){
		hsp = -2;
	} else if x <= (room_width - room_width - 60) {
		hsp = hsp * 0.8;
	}
	if (free && x <= (room_width - room_width + 60)){
		hsp = 2;
	} else if x >= (room_width - room_width + 60) {
		hsp = hsp * 0.8;
	}

		
	if mbopacity > 0 {
		mbopacity -= 0.025;
	}
   
   if player_id.mb_shoot = true {
		player_id.mb_shoot = false;
   		    if letters = 0 {
   		    	//?
            } else if letters = 1 {
               	state = 5;
               	state_timer = 0;
            } else if letters = 2 {
               	state = 6;
               	state_timer = 0;
            } else if letters = 3 {
				state = 7;
				state_timer = 0;
            }
   }
   
    //Die if should die
    if shoulddie{
        state = 1;
        state_timer = 0;
       	if free {
		var k = spawn_hit_fx(x + (0 * spr_dir), y + 10, player_id.prop_destroy_vfx);
        k.depth = depth - 1;
	}
    }
    
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
}



//State 1: Dying

if (state == 1){
	
	can_be_hurt = false;
	
	if letters > 0 && state_timer == 1{
    	var k = spawn_hit_fx(x + (10 * spr_dir), y - 40, player_id.letter_vfx);
        k.depth = depth + 1;
        letters = 0;
	}
	
	
    if (state_timer == die_time){
        player_id.killarticles = false;
        player_id.mailboxID = 0;
        instance_destroy();
        exit;
    }
}



//State 2 lvl 1 upgrade

if (state == 2){

	if state_timer == 24 {
		state = 0;
		state_timer = 0;
	}
	
}



//State 3 lvl 2 upgrade

if (state == 3){
	if state_timer == 27 {
		state = 0;
		state_timer = 0;
	}
}



//State 4 Lvl 3 upgrade

if (state == 4){
	if state_timer == 30 {
		state = 0;
		state_timer = 0;
	}
}



//State 5 Lvl 1 Mailbox Projectile

if (state == 5){
    can_be_hurt = false;

	if state_timer == 1 {
     	sound_play(sound_get("mbfire"), 0, noone, 2, 1);
	}
    
	if state_timer == 15 {
		player_id.lvl1projID = create_hitbox(AT_DSPECIAL_2, 3, x + (spr_dir * 3), y - 60);
		letters = 0;
		//print("test2")
	}
	
	if state_timer == 35 {
		state = 1;
		state_timer = 0;
	}
}



//State 6 Lvl 2 Mailbox Projectile

if (state == 6){
    can_be_hurt = false;

	if state_timer == 1 {
     	sound_play(sound_get("mbfire"), 0, noone, 2, 1);
	}
    
	if state_timer == 15 {
		player_id.lvl2projID = create_hitbox(AT_DSPECIAL_2, 4, x, y - 65);
		sound_play(asset_get("sfx_bird_nspecial"));
		letters = 0;
		//print("test2")
	}
	
	if state_timer == 35 {
		state = 1;
		state_timer = 0;
	}
}



//State 7 Lvl 3 Mailbox Projectile

if (state == 7){
    can_be_hurt = false;

	if state_timer == 1 {
     	sound_play(sound_get("mbfire"), 0, noone, 2, 1);
	}
    
	if state_timer == 15 {
		player_id.packageID = create_hitbox(AT_DSPECIAL_2, 1, x, y - 50);
		letters = 0;
		//print("test2")
	}
	
	if state_timer == 35 {
		state = 1;
		state_timer = 0;
	}
}


//State 8: Mailbox Damaged

if (state == 8){
   can_be_hurt = false;
   
   if state_timer == 1 {
   	sound_play(asset_get("sfx_shovel_hit_med2"));
   }
   
   if state_timer == 45 {
   		state = 0;
   		state_timer = 0;
   }
}

//State 9: Mailbox Spin

if (state == 9){
   //can_be_hurt = false;
  /* 
   if player_id.mb_spinning = false {
		state = 0;
		state_timer = 2;
   }
 */  
   if state_timer == 1 {
   		state = 0;
   		state_timer = 2;
   }
}

//State 10: Upgrade spin at lvl3???

if (state == 10){
	
	if (player_id.spr_dir = 1 && player_id.left_down) || (player_id.spr_dir = -1 && player_id.right_down) {
		state = 0;
		state_timer = 2;
	} else if state_timer == 16 {
			state = 0;
			state_timer = 2;
	}
}

//State 11: Hammer death

if (state == 11){
 
	can_be_hurt = false;
	if spr_dir != player_id.spr_dir {
		spr_dir = spr_dir * -1;
	}
 
	if state_timer == 1 {
    	var k = spawn_hit_fx(x + (0 * spr_dir), y + 15, player_id.stamp_vfx);
        k.depth = depth + 1;		
	}
    if (state_timer == 10){
        player_id.killarticles = false;
        player_id.mailboxID = 0;
        instance_destroy();
        exit;
    }

}


//State 12 Vault

if (state == 12){
    can_be_hurt = true;
	
	if free {
		if state_timer == 1 {
			vsp = 5;
		} else{
			vsp = vsp *.85
		}
	}
	
	if !free {
		vsp = 0;
		hsp = 0;
	}
	
	if state_timer == 24 {
	 	if letters = 0 {
	    	state = 2;
	    	state_timer = 0;
	    	letters += 1;
	    	mbhp += 1;
	    	var k = spawn_hit_fx(x - 0, y - 0, player_id.letter_add_vfx);
			k.depth = depth + 1;
			var k = spawn_hit_fx(x, y + 70, player_id.mb_hud_lvup1_vfx);
			k.depth = depth + 1;
			k.spr_dir = 1;
			mbopacity = 1;
	    	sound_play(sound_get("mblvlup1"), 0, noone, 2, 1);
	    }	else if letters = 1 {
	    	state = 3;
	    	state_timer = 0;
	    	letters += 1;
	    	mbhp += 1;
	    	var k = spawn_hit_fx(x - 0, y - 0, player_id.letter_add_vfx);
			k.depth = depth + 1;
			var k = spawn_hit_fx(x, y + 70, player_id.mb_hud_lvup2_vfx);
			k.depth = depth + 1;
			k.spr_dir = 1;
	   		mbopacity = 1;
	    	sound_play(sound_get("mblvlup2"), 0, noone, 2, 1);
	    }   else if letters = 2 {
	    	state = 4;
	    	state_timer = 0;
	    	letters += 1;
	    	mbhp += 1;
	    	var k = spawn_hit_fx(x - 0, y - 0, player_id.letter_add_vfx);
			k.depth = depth + 1;
			var k = spawn_hit_fx(x, y + 70, player_id.mb_hud_lvup3_vfx);
			k.depth = depth + 1;
			k.spr_dir = 1;
	   		mbopacity = 1;
	    	sound_play(sound_get("mblvlup3"), 0, noone, 2, 1);
	    }   else if letters = 3 {
	    	player_id.instant_explo_x = x;
	    	player_id.instant_explo_y = y;
   	        player_id.instant_explo_start = true;
	    	player_id.killarticles = false;
		    player_id.mailboxID = 0;
        	instance_destroy();
   	        exit;
	    }
	}
}




//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
    switch letters {
    	case 0:
    	new_sprite = sprite_get("mb_idlelv0");
        animation_type = 2;
    	break;
    	case 1:
    	new_sprite = sprite_get("mb_idlelv1");
        animation_type = 2;
    	break;
    	case 2:
    	new_sprite = sprite_get("mb_idlelv2");
        animation_type = 2;
    	break;
    	case 3:
    	new_sprite = sprite_get("mb_idlelv3");
        animation_type = 2;
    	break;
    }
        mask_index = sprite_get("mb_hurt"); 
        break;
    case 1:
        new_sprite = sprite_get("mb_destruct");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("mb_upgradelv1");
        mask_index = sprite_get("mb_hurt"); 
        animation_type = 0;
        break;
    case 3:
        new_sprite = sprite_get("mb_upgradelv2");
        mask_index = sprite_get("mb_hurt"); 
        animation_type = 0;
        break;
    case 4:
        new_sprite = sprite_get("mb_upgradelv3");
        mask_index = sprite_get("mb_hurt"); 
        animation_type = 0;
        break;
    case 5:
        new_sprite = sprite_get("mb_proj_shoot");
        mask_index = sprite_get("mb_hurt"); 
        animation_type = 3;
        break;
    case 6: 
        new_sprite = sprite_get("mb_proj_shoot");
        mask_index = sprite_get("mb_hurt"); 
        animation_type = 3;
        break;
    case 7:
        new_sprite = sprite_get("mb_proj_shoot");
        mask_index = sprite_get("mb_hurt"); 
        animation_type = 3;
        break;
    case 8:
        new_sprite = sprite_get("mb_dmg");
        animation_type = 4;
        break;
    case 9:
    switch letters {
    	case 0:
    	new_sprite = sprite_get("mb_idlelv0");
    	break;
    	case 1:
    	new_sprite = sprite_get("mb_idlelv1");
    	break;
    	case 2:
    	new_sprite = sprite_get("mb_idlelv2");
    	break;
    	case 3:
    	new_sprite = sprite_get("mb_idlelv3");
    	break;
    }
    animation_type = 0;
    mask_index = sprite_get("mb_hurt"); 
    break;
    case 10:
    	new_sprite = sprite_get("mb_idlelv3");
    	animation_type = 1;
   	    mask_index = sprite_get("mb_hurt"); 
    break;
    case 11:
    switch letters {
    	case 0:
    	new_sprite = sprite_get("mb_idlelv0");
    	break;
    	case 1:
    	new_sprite = sprite_get("mb_idlelv1");
    	break;
    	case 2:
    	new_sprite = sprite_get("mb_idlelv2");
    	break;
    	case 3:
    	new_sprite = sprite_get("mb_idlelv3");
    	break;
    }   
    	animation_type = 0;
    	mask_index = sprite_get("mb_hurt"); 
    break;
    case 12:
    switch letters {
    	case 0:
    	new_sprite = sprite_get("mb_idlelv0");
    	break;
    	case 1:
    	new_sprite = sprite_get("mb_idlelv1");
    	break;
    	case 2:
    	new_sprite = sprite_get("mb_idlelv2");
    	break;
    	case 3:
    	new_sprite = sprite_get("mb_idlelv3");
    	break;
    }   
    	animation_type = 0;
    	mask_index = sprite_get("mb_hurt"); 
    break;
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    
    case 1: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
    case 2: //Increment image_index at the rate determined by die_anim_rate
    if (state_timer mod idle2_anim_rate == 0){
        image_index++;
    }
    break;
    case 3: //Increment image_index at the rate determined by die_anim_rate
    if (state_timer mod shoot_anim_rate == 0){
        image_index++;
    }
    break;
    case 4: //Increment image_index at the rate determined by die_anim_rate
    if (state_timer mod spawn_anim_rate == 0){
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

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
	
	gothit = true;
	
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
 
//Default hit stuff
sound_play(hbox.sound_effect);
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.hit_angle = other.kb_dir;
    temp_fx.kb_speed = other.orig_knock;
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir; if (argument_count > 3) dir = argument[3]; else dir = 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;