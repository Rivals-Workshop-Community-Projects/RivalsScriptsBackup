//update

/*
if ((attack == AT_USPECIAL && (window == 2))|| state == PS_PRATFALL){
	if(hsp != 0){
	spr_angle = radtodeg(arctan(vsp/-hsp)) - 90 * spr_dir;
	}else{
	spr_angle = radtodeg(arctan(vsp/-hsp)) + 90 * spr_dir;
		
	}
	}else{
		spr_angle = 0
	}

*/


//game start stuff
if (get_gameplay_time() == 10) {
	if "__syncvar" not in self __syncvar = split_synced_var(1,1,1);
		var tag_pal_value_1 = __syncvar[1]; 
	if (tag_pal_value_1 == 1) {
    	set_attack(AT_EXTRA_2);
	}else{
    	set_attack(AT_EXTRA_1);
	}

    set_attack_value(AT_EXTRA_1, AG_SPRITE, sprite_get("intro"));
    set_attack_value(AT_EXTRA_2, AG_SPRITE, sprite_get("intro_ALT"));
}

//inktank stuff
if(InkTank < MinInkTank){
    outofink = true
    if(outofink = true){
        sound_play(sound_get("TankGotoEmpty00"));
        if(state == PS_CROUCH){
        outofink = false
        }
    }
    InkTank = 0;
}


if(InkTank > MaxInkTank){
    InkTank = 100;
}else if(state == PS_CROUCH && state_timer > 25){
    if(InkTank >= InkBombMax){
       if(outofink = false){
			spawn_hit_fx(x - 0,y - 60,Charge_Blink);
        	sound_play(sound_get("se_inkling_subweaponready"));
        	outofink = true
        }
    }
}else{
    outofink = false
}

if(state = PS_CROUCH){
	if(state_timer == 1){
    	crouching = true
	}
    if(!down_down){
		if(crouching = true){
        	sound_play(sound_get("ToHumanMix00"));
    		crouching = false
    	}
    }
}

//meter lerps to make them smoother
shown_meter_var = lerp(shown_meter_var, InkTank, 0.15);
shown_old_meter_var = lerp(shown_meter_var, PrevInkTank, 0.5);



//new grounded status effect
with (oPlayer)
{
    //as long as the timer is above 0, the status is active
    //we also need to make sure the player isn't dead so the status effect can be inflicted
    if (pantsed_status_timer > 0 && pantsed_status_cooldown == 0 && state != PS_RESPAWN && state != PS_DEAD)
    {
        pantsed_status_timer --;
        
		set_state(PS_HITSTUN_LAND)
        //% # == 0 makes it so only once every multiples of # it will actually run
            with (pantsed_status_owner)
            {
                //spawns the bigger particles that blink every +1%
                var status_part = spawn_hit_fx(
                    other.x - 20,
                    other.y - other.char_height/2,
                    pantsed
                );
                status_part.depth = other.depth - 2; //sets the depth so they always appear behind of the enemy
                status_part.spr_dir = 1; //forces the spr_dir of the effect to be consistent
            }
            if(pantsed_status_timer == 3){
            	hsp = old_hsp;
            	vsp = old_vsp;
            }else{
            	hsp = 0;
            	vsp = 0;
            }
            if(pantsed_status_timer == 1){
            	pantsed_status_cooldown = 50
            }
    }
    else{ 
    	if(pantsed_status_cooldown > 0){
    		pantsed_status_cooldown--
    	}
    pantsed_status_timer = 0;
    }
}


//rainbow alts user_event redirect
if (alt_cur == 28) user_event(0);


//Kill sound

if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
{
    galaxy_timer = 90;
//	if(attack == AT_USPECIAL && ){
//    	sound_stop(sound_get("PlaneCrash1"))
//		sound_play(sound_get("PlaneCrash2"))
//	}
}
galaxy_timer = max(galaxy_timer-1,0)


//funny skins go brrrrr

if (alt_cur == 1){
	set_victory_theme(sound_get("Victory1_smash"));
}else
if (alt_cur == 4){
	set_victory_theme(sound_get("Victory1_smash"));
}else
if (alt_cur == 5){
	set_victory_theme(sound_get("Victory2"));
}else
if (alt_cur == 12){
	set_victory_theme(sound_get("Victory2"));
}else
if (alt_cur == 13){
	set_victory_theme(sound_get("Victory1_hero"));
}else
if (alt_cur == 14){
	set_victory_theme(sound_get("Victory2_hero"));
}else
/*
if (alt_cur == 15){
	set_victory_theme(sound_get("Victory1_incantation"));
}else
if (alt_cur == 16){
	set_victory_theme(sound_get("Victory1_incantation"));
}else*/
if (alt_cur == 17){
	set_victory_theme(sound_get("Victory2_splatfest"));
}else
if (alt_cur == 18){
	set_victory_theme(sound_get("Victory2_splatfest"));
}else
if (alt_cur == 19){
	set_victory_theme(sound_get("Victory3_splatfest"));
}else
if (alt_cur == 20){
	set_victory_theme(sound_get("Victory3_splatfest"));
}else
if (alt_cur == 21){
	set_victory_theme(sound_get("Victory3_splatfest"));
}else
if (alt_cur == 22){
	set_victory_theme(sound_get("Victory2_octo"));
}else
if (alt_cur == 23){
	set_victory_theme(sound_get("Victory2_octo"));
}else
if (alt_cur == 26){
	set_victory_theme(sound_get("Victory3"));
}else
if (alt_cur == 29){
	set_victory_theme(sound_get("familyguy"));
}else

{
	if(random_func(1, 4, true) = 1){
		set_victory_theme(sound_get("Victory1"));
	}else 
	if(random_func(1, 4, true) = 2){
		set_victory_theme(sound_get("Victory2"));
	}else{
		set_victory_theme(sound_get("Victory3"));
	}
	
}

if(attack == AT_TAUNT){
    if(alt_cur == 39){
    	attack = AT_FSTRONG_2;
    	window = 1;
    	window_timer = 0;
    }
}

// As usual, #defines all go at the bottom of the script.
#define player_tag_palettes
///(user_event, ?arg)
__ssnk_tagpal_scr = script_get_name(1);
__ssnk_tagpal_arg = argument_count > 1 ? argument[1] : 0;
user_event(argument[0]);
return "__ssnk_tagpal_res" in self ? __ssnk_tagpal_res : 0;

// https://github.com/SupersonicNK/roa-workshop-templates/tree/master/generate-synced-var 
#define split_synced_var
///args chunk_lengths...
var num_chunks = argument_count;
var chunk_arr = array_create(argument_count);
var player = (room == 113) ? 0 : self.player;
var synced_var = get_synced_var(player);
var chunk_offset = 0
for (var i = 0; i < num_chunks; i++) {
    var chunk_len = argument[i]; //print(chunk_len);
    var chunk_mask = (1 << chunk_len)-1
    chunk_arr[i] = (synced_var >> chunk_offset) & chunk_mask;
    //print(`matching shift = ${chunk_len}`);
    chunk_offset += chunk_len;
}
print(chunk_arr);
return chunk_arr;