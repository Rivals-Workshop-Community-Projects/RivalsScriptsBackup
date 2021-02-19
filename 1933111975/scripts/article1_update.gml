//Cloud

/*STATE INDEX

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 Hurt (unused)
- 4 
- 5 
- 6 
- 7 
- 8 NSPECIAL
- 9 DSPECIAL

*/



//Keep stationary

vsp = 0;
hsp *= .5;
if (hsp < 1){
	hsp = 0;
}



//Are there too many clouds?

if (replacedcount > maxclouds && !player_id.godmode){
    shoulddie = true;
}



//Cloud overlap handling

with (asset_get("obj_article1")){
	if (place_meeting(x,y,other.id) && other.player_id == player_id && replacedcount < other.replacedcount && other.state != 2 && other.state != 8 && state != 8){
		if x > other.x{
			hsp = 2;
		}else{
			hsp = -2;
		}
	}
}



//Get hurt (unused)

with (asset_get("pHitBox")){
    if (!other.player_id.godmode && place_meeting(x,y,other.id) && other.player_id != player_id && other.state != 0 && other.state != 3 && !(attack == AT_DSPECIAL && player_id.select == 12)){
        other.state = 3;
        other.state_timer = 0;
        other.stuntime = 150;
        with(other){
        	spawn_hit_fx(floor(x), floor(y-22), 301);
        }
    }
}



//Clairen plasma field (unused)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y-22),256)
	state = 3;
	state_timer = 0;
	stuntime = 150;
}



//Die if you die

if(player_id.killclouds && state != 2){
    state = 2;
    state_timer = 0;
}



//Limit buffer window
    
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}



//State 0: Freshly spawned

if (state == 0){
    
    //Initial spawn animation
    state_timer_mod = 6;
    if (state_timer < 10){
        state_timer_mod = 3;
    }
    if (state_timer mod state_timer_mod == 0){
        image_index++;
    }
    
    //Rising animation
    if (state_timer < 40){
        y = ease_quartInOut(spawny, stopy, state_timer, 40);
    }
    
    //Go to idle
    if (state_timer >= 40){
        state = 1;
        state_timer = 0;
    }
    
    shouldmakeparticle = false;

    if (get_gameplay_time() mod (player_id.particlerate) == 0){
        shouldmakeparticle = true;
    }
    
    if (shouldmakeparticle && state_timer < 25){
        player_id.cloudparticlex = ((random_func(0, 100, true) - 50) / 2) * spr_dir + x;
        player_id.cloudparticley = ((random_func(0, -40, true) - 30) / 2) + y;
        player_id.shouldmakecloudparticle = true;
    }
}else if (state != 2 && state != 3 && state != 8){
    y = stopy;
}



//State 1: Idle

if (state == 1){
	if (state_timer == 0 && player_id.skin == 2 && !("dont_spawn_puff" in self)){
		dont_spawn_puff = true;
		spawn_hit_fx(floor(x), floor(y-22), 301);
	}
	
    //Die
    if shoulddie{
        state = 2;
        state_timer = 0;
    }
    
    //Buffering stuff
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
        timesthrough = 0;
    }
    
    //Fix nspec?
    with (asset_get("obj_article1")){
    	if (player_id == other.player_id && state == 8){
    		state = 8;
    		state_timer = 0;
    	}
    }
    
    if (state_timer == 0){
    	temp_x = x;
    	glitchtimer = 0;
    }
    
    if (player_id.skin == 1 && get_gameplay_time() mod 11 - random_func(replacedcount, 11, true) > 9){
    	glitchtimer = 10;
    	glitchskin = get_gameplay_time() mod 3;
    }
    
    if (glitchtimer > 0){
    	glitchtimer--;
    }
}else{
	uses_shader = true;
}



//State 2: Dying

if (state == 2){
    if (state_timer == die_time){
        player_id.killclouds = false;
        instance_destroy();
        exit;
    }
}



//State 3: Hurt

if (state == 3){
	if (state_timer == 0){
	    spawny = y;
	    blinktime = 30;
	    defactoblinkrate = 30;
	    blinkrate = 30;
	}
	
	if (state_timer == 0 + replacedcount * 6){
        sound_play(asset_get("sfx_abyss_despawn"));
	}
	
    if (state_timer <= 40){
        y = ease_quartInOut(floor(spawny), floor(stopy), state_timer, 40);
    }
    
    switch(stuntime - state_timer){
    	case 300:
    		blinkrate = 30;
    		break;
    	case 240:
    		blinkrate = 29;
    		break;
    	case 190:
    		blinkrate = 28;
    		break;
    	case 140:
    		blinkrate = 26;
    		break;
    	case 103:
    		blinkrate = 24;
    		break;
    	case 70:
    		blinkrate = 21;
    		if (place_meeting(x, y, asset_get("plasma_field_obj"))){
    			state_timer-= 32;
    		}
    		break;
    	case 50:
    		blinkrate = 16;
    		break;
    	case 40:
    		blinkrate = 12;
    		break;
    	case 30:
    		blinkrate = 9;
    		break;
    }
    
    if (blinktime == 0){
    	defactoblinkrate = blinkrate;
    	blinktime = defactoblinkrate;
    }
    
    if (blinktime > defactoblinkrate / 2){
    	image_alpha = 0.25;
    }else{
    	image_alpha = 0.75;
    }
    
    image_blend = c_black;
    
    if (state_timer == stuntime - replacedcount * 6){
    	sound_play(asset_get("sfx_absa_cloud_place"))
    }
    
    if (state_timer > stuntime && !place_meeting(x, y, asset_get("plasma_field_obj"))){
        state = 1;
        state_timer = 0;
        image_alpha = 1;
    	image_blend = -1;
    }
    
    //Die
    if (shoulddie || bufferedstate == 9 || bufferedstate == 8){
        state = 2;
        state_timer = 0;
        image_alpha = 1;
    	image_blend = -1;
    	
    	with(asset_get("obj_article1")){
			if (player_id == other.player_id && state == 0 && state_timer < 2 && other.replacedcount > maxclouds){
				state = 3;
				state_timer = 0;
				stuntime = other.stuntime;
			}
		}
    	
    	if (bufferedstate > 7){
    		with(asset_get("obj_article1")){
	    		if (player_id == other.player_id && state != 3){
	    			replacedcount = 1;
	    		}
	    	}
    	}
    }
    
    blinktime--;
}



//State 8: Nspecial

if (state == 8){
    nspecoffset = 0;
    hitbox = 2;
    if (replacedcount > 1){
    	nspecoffset = -24;
    	hitbox = 0;
    }
    with (asset_get("obj_article1")){
    	if (player_id == other.player_id && id != other.id && replacedcount > 1){
    		other.nspecoffset = 24;
    		other.hitbox = 3;
    		if soaksprite && !other.soaksprite{
    			other.soaksprite = true;
    			spawn_hit_fx(other.x, other.y-20, 256);
    		}
    	}
    	if (other.replacedcount == other.maxclouds && player_id == other.player_id && id != other.id && replacedcount > 1 && replacedcount < maxclouds && state == 8){
    		state = 2;
    		state_timer = 0;
    		with(asset_get("obj_article1")){
    			if (player_id == other.player_id){
    				soaksprite = true;
    				spawn_hit_fx(x, y-20, 256);
    				soaksoundplayed = false;
    				hasspawnedhitfx = false;
    			}
    		}
    	}
    }
    if (state_timer == 1 && nspectarget != noone){
    	spr_dir = player_id.spr_dir;
    	if (nspectarget.soaked && nspectarget.soaked_id == player_id){
    		if (!player_id.godmode && replacedcount == 1){
                if !player_id.runeJ{
                    nspectarget.soaked = false;
                    spawn_hit_fx(nspectarget.x, floor(nspectarget.y - nspectarget.char_height / 2), player_id.unsoak_fx);
                }
                else{
                    if nspectarget.halfunsoaked{
                        nspectarget.soaked = false;
                        spawn_hit_fx(nspectarget.x, floor(nspectarget.y - nspectarget.char_height / 2), player_id.unsoak_fx);
                    }
                    else{
                        nspectarget.halfunsoaked = true;
                    }
                }
            }
    		if !soaksprite{
    			soaksprite = true;
    			spawn_hit_fx(x, y-20, 256);
    			with(asset_get("obj_article1")){
    				if (player_id == other.player_id){
    					soaksprite = true;
    					spawn_hit_fx(x, y-20, 256);
    				}
    			}
    		}
    	}
    	else if player_id.runeL{
    		if !soaksprite{
    			soaksprite = true;
    			spawn_hit_fx(x, y-20, 256);
    		}
    	}
    	soaksoundplayed = false;
    	hasspawnedhitfx = false;
    }
    if (nspectarget == noone && state_timer < nspecdelay){
    	state = 2;
    	state_timer = 0;
    }
    else if (!nspectarget.hitpause && !soaksoundplayed && state != 2){
    	soaksoundplayed = true;
    	if soaksprite{
    		sound_play(asset_get("sfx_ori_ustrong_charge"));
    	}
    	else if (nspecoffset >= 0){
    		sound_play(asset_get("sfx_swish_medium"));
    	}
    }
    
    /*
    
    Hitboxes
    - 0: Nothing
    - 1: Melee
    - 2: Single
    - 3: Double
    - 4: Single Soaked
    - 5: Double Soaked
    
    */
   	
   	if (state_timer < nspecdelay && nspectarget != noone){
   		y = ease_quadInOut(stopy, nspectarget.y - nspecoffset, state_timer, nspecdelay);
    	x = ease_quadInOut(floor(x), floor(nspectarget.x - 70 * spr_dir), state_timer, nspecdelay);
   	}
   	
    if (state_timer == nspecdelay && nspectarget != noone){
    	//Hitbox
    	spawn_hit_fx(floor(x + 68 * spr_dir), floor(y - 22), player_id.bulletblast2);
    	nspectarget.vsp = 0;
    	nspectarget.hsp = 0;
    	if (hitbox == 0){
    		sound_play(sound_get("brass_2"));
    	}
    	else{
	    	sound_play(sound_get("brass_1"));
	    	sound_play(sound_get("brass_hit"));
	    	if (soaksprite){
	    		hitbox += 2;
	    		sound_play(sound_get("brass_stun"));
	    	}
	    	create_hitbox(AT_NSPECIAL, hitbox, floor(x + 70 * spr_dir), floor(y - 30 + nspecoffset));
      	}
    }
    
    if (state_timer > nspecdelay && !nspectarget.hitpause && !hasspawnedhitfx){
    	hasspawnedhitfx = true;
    }
    
    if (state_timer >= nspecdelay + nspecduration){
    	state = 2;
    	state_timer = 0;
    }
    
    shouldmakeparticle = false;

    if (get_gameplay_time() mod (player_id.particlerate) == 0){
        shouldmakeparticle = true;
    }
    
    if (shouldmakeparticle && state_timer < 25){
        player_id.cloudparticlex = ((random_func(0, 100, true) - 50) / 2) * spr_dir + x;
        player_id.cloudparticley = ((random_func(0, -40, true) - 30) / 2) + y;
        player_id.shouldmakecloudparticle = true;
    }
}



//State 9: Dspecial

if (state == 9){
	var dspecdelay = 10;
    if (state_timer == 18 + dspecdelay && timesthrough < 4){
    	state_timer = 11 + dspecdelay;
    	timesthrough++;
    }
    if (state_timer == 11 + dspecdelay){
    	var hitbox = create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y-18));
    	hitbox.fromcloud = true;
    }
    if (state_timer == 15 + dspecdelay && !player_id.tournament_safe){
    	var hitbox = create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y-18));
    	hitbox.fromcloud = true;
    }
    if (state_timer == 13 + dspecdelay + replacedcount * 3){
    	sound_play(sound_get("rain"));
    }
    if (state_timer == 19 + dspecdelay){
    	var hitbox = create_hitbox(AT_DSPECIAL, 3, floor(x), floor(y-18));
    	hitbox.fromcloud = true;
    }
    if (state_timer == 28 + dspecdelay){
	    if (player_id.runeK){
	    	state = 1;
	    }
	    else{
	    	state = 2;
	    }
	    state_timer = 0;
    }
}



//Sprite and animation handling

switch(state){
    case 0:
        new_sprite = player_id.spr_cloudrise;
        animation_type = 0;
        break;
    case 1:
        new_sprite = player_id.spr_cloud;
        animation_type = 0;
        if (player_id.skin == 1){
	        if (glitchtimer > 0){
	        	if (glitchskin == 1){
		        	sprite_index = player_id.spr_cloudglitch;
		        	uses_shader = false;
		        }
		        else{
		        	sprite_index = player_id.spr_cloudglitch2;
		        	uses_shader = true;
		        }
	    		new_sprite = sprite_index;
	    		
	    	}
	    	else{
	    		sprite_index = player_id.spr_cloud;
	    		new_sprite = sprite_index;
	        	uses_shader = true;
	    	}
        }
        break;
    case 2:
        new_sprite = player_id.spr_clouddie;
        animation_type = 1;
        break;
    case 3:
        new_sprite = player_id.spr_cloud;
        animation_type = 0;
        break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    	new_sprite = player_id.spr_cloudhorn;
    	if soaksprite{
    		new_sprite = player_id.spr_cloudhorn2;
    	}
    	animation_type = 2;
    	break;
    case 9:
    	if (state_timer < 8 + dspecdelay || state_timer > 21 + dspecdelay){
    		new_sprite = player_id.spr_cloudflash;
    	}
    	else {
    		new_sprite = player_id.spr_cloudrain;
    	}
    	if (state_timer < (8 + dspecdelay) * 0.75){
        	new_sprite = player_id.spr_cloud;
    	}
    	animation_type = 1;
        break;
}

switch(animation_type){
    case 0:
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    case 1:
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
    case 2:
    	var horn_timer = state_timer - nspecdelay;
        image_index = 4; //Normal
        if (horn_timer mod 8 > 4){
        	image_index = 5; //Big
        }
        if (horn_timer < 15){
        	image_index = 3; //Overshoot 2
        }
        if (horn_timer < 9){
        	image_index = 2; //Overshoot
        }
        if (horn_timer < 0){
        	image_index = 1; //Small 2
        }
        if (horn_timer < -10){
        	image_index = 0; //Small
        }
        break;
}

if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}



/*

var circle_radius = 50;
var circle_speed = 0.1;
var circle_x = circle_radius * cos(state_timer * circle_speed);
var circle_y = circle_radius * sin(state_timer * circle_speed);

x = player_id.x + circle_x;
y = player_id.y + circle_y;

hsp = 0;
vsp = 0;

*/



//Make time progress

state_timer++;