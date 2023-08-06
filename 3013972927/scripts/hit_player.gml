//hit_player.gml
//this script runs every time you hit someone with a hitbox
//NOTE: to check for hitbox variables use [my_hitboxID] like the examples below, otherwise don't include it in you statements

if (my_hitboxID.orig_player_id != self) exit; 

switch (my_hitboxID.attack)
{/*
    case AT_FTILT: //command grab
        if (my_hitboxID.hbox_num == 1) set_grab_id(); //special function you can see below that sets the hit player to be grabbed
        else my_grab_id = noone; //the 2nd hitbox in the grab should always hit, releasing opponents from the grabbed state
        break;
        */
        
    case AT_JAB:
	{
		if (has_hit && hitpause && hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
							sound_play(beat_hit_sfx_set[0],0,0,.7);
						//	set_hitbox_value(attack, 1, HG_EFFECT, 11);
						//	set_hitbox_value(attack, 1, HG_BASE_HITPAUSE, 60);
						//	spawn_hit_fx(x + 65*spr_dir,y,253)
						shader_start();
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
						shader_end();	
							break;
					case 5:
							sound_play(beat_hit_sfx_set[1],0,0,.7);
							shader_start();
							spawn_hit_fx(x + 65*spr_dir,y-3, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							shader_end();
						//	set_hitbox_value(attack, 2, HG_EFFECT, 11);
							break;
					case 8:
							sound_play(beat_hit_sfx_set[2],0,0,.7);
							shader_start();
							spawn_hit_fx(x + 65*spr_dir,y-3, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							shader_end();
					//		set_hitbox_value(attack, 3, HG_EFFECT, 11);
							break;
					break;
				}
		}

		break;
	}
	
	case AT_FTILT:
	if (has_hit && hitpause && hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
							sound_play(beat_hit_sfx_set[3],0,0,.5);
							spawn_hit_fx(x + 65*spr_dir,y-6, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					case 5:
							sound_play(beat_hit_sfx_set[4],0,0,.5);
							spawn_hit_fx(x + 65*spr_dir,y-3, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					case 8:
							sound_play(beat_hit_sfx_set[5],0,0,.5);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					break;
				}
		}
		break;
	
	case AT_UTILT:
	
	case AT_FSTRONG:
    	 if (my_hitboxID.hbox_num == 2)
        {
       //     set_grab_id(); //sets the grabbed player, look below for more details
        }
        else my_grab_id = noone; 
	if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
							sound_play(beat_hit_sfx_set[4],0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					break;
				}
	}
	break;
	
	
	case AT_UAIR:
	if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
							sound_play(beat_hit_sfx_set[5],0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					break;
				}
	}
	break;
	
    case AT_USTRONG: //strong charge increasing height
       // sound_play(asset_get("sfx_ori_seinhit_heavy")); //play both these sounds when it hits someone
        sound_play(asset_get("sfx_blow_heavy2"));
        break;
    case AT_NAIR: //fair hit bounce
        switch(window)
		    {
		        case 2:
		            old_vsp = -6;
    		        old_hsp = hsp * 0.15;
    		        break;
		        case 5:
		            old_vsp = -7;
    		        old_hsp = hsp * 0.15;
    		        break;
		        case 8:
		            old_vsp = -3;
    		        old_hsp = hsp * 0.15;
    		        break;
		    }
		    
		    if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
							sound_play(beat_hit_sfx_set[6],0,0,.5);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					case 5:
							sound_play(beat_hit_sfx_set[7],0,0,.5);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					case 8:
							sound_play(beat_hit_sfx_set[8],0,0,.5);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					break;
				}
		}
		break;
	
	case AT_BAIR:
	if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
							sound_play(beat_hit_sfx_set[2],0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x - 180*spr_dir,y-165, 322)
							break;
					break;
				}
	}
	break;
	
	case AT_DAIR:
	if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 2:
							sound_play(beat_hit_sfx_set[8],0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					break;
				}
	}
	break;
	
    case AT_FAIR: //single input multihit
        if (my_hitboxID.hbox_num == 2) 
        {
            old_vsp = -5;
        	old_hsp = hsp * 0.25;
        }
        if (has_hit && hitpause &&  hit_onBeat) {
			clear_button_buffer(PC_ATTACK_PRESSED);
	        switch(window)
		        {
		        	case 3:
		        		shader_start();
		        		spawn_hit_fx(x + 65*spr_dir,y-7, 323)
						spawn_hit_fx(x-65*spr_dir,y-165, 322)
						shader_end();
		        	break;
		        	
		        	case 5:
		        		spawn_hit_fx(x + 65*spr_dir,y-7, 323)
						spawn_hit_fx(x-65*spr_dir,y-165, 322)
		        	break;
		        	
		        	case 7:
		        		sound_play(beat_hit_sfx_set[2],0,0,.7);
		        		spawn_hit_fx(x + 65*spr_dir,y-7, 323)
						spawn_hit_fx(x-65*spr_dir,y-165, 322)
		        	break;
		        }
        }
        break;
    
    case AT_FSTRONG:
    	 if (my_hitboxID.hbox_num == 1)
        {
            set_grab_id(); //sets the grabbed player, look below for more details
        }
        else my_grab_id = noone; 
        
        if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 4:
							sound_play(sound_get("chai_fstrong_hit_1"),0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					case 5:
							sound_play(sound_get("chai_fstrong_hit_2"),0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
							
					break;
				}
        }
        break;
        
    case AT_USTRONG:
    	 if (my_hitboxID.hbox_num == 2)
        {
            set_grab_id(); //sets the grabbed player, look below for more details
        }
        else my_grab_id = noone; 
        
    	if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 4:
							sound_play(sound_get("chai_ustrong_hit_1"),0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					case 5:
							sound_play(sound_get("chai_ustrong_hit_2"),0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
							
					break;
				}
	}
		break;
		
	case AT_USPECIAL:
	if (uspec_beat_hit) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				var chec = random_func( 1, 2, true );
				switch(chec)
				{
					case 0:
							sound_play(sound_get("chai_hit_air_1"),0,0,.8);
							sound_stop(sound_get("chai_hit_air_2"));
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					case 1:
							sound_play(sound_get("chai_hit_air_2"),0,0,.8);
							sound_stop(sound_get("chai_hit_air_1"));
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
							
					break;
				}
	}
	break;
	
	case AT_FSPECIAL:
	if (has_hit && hitpause &&  hit_onBeat) {
				clear_button_buffer(PC_ATTACK_PRESSED);
				// If hit someone
				switch(window)
				{
					case 4:
							sound_play(sound_get("chai_fspec_hit_full"),0,0,.7);
							spawn_hit_fx(x + 65*spr_dir,y-7, 323)
							spawn_hit_fx(x-65*spr_dir,y-165, 322)
							break;
					break;
				}
	}
	break;
        break;
        
    case AT_NSPECIAL: 

         if (my_hitboxID.hbox_num == 2)
        {
            nspec_found_target = true; 
            set_grab_id(); 
            sound_play(sound_get("Chai_MagnetShot_Hit"));
        }
        
        else my_grab_id = noone; 
        break;
}

//appying custom status code

if (get_hitbox_value(my_hitboxID.attack, my_hitboxID.hbox_num, HG_EFFECT) == 30)
{
    hit_player_obj.test_status_timer = test_status_time_set; //sets the status timer to the set time
    hit_player_obj.test_status_owner = self; //sets status owner to us (so we can show different colors on them)
}

//multihit logic
with (my_hitboxID)
{
    //if the multihit amount is more than 0 it should activate the multihit code
    if (type == 2 && multihit_amount > 0)
    {
        //proj_hit_count is the current amount of hits done already
        //every time our projectile hits, it counts up by one
        if (multihit_amount > proj_hit_count)
        {
            multihit_hit_player = other.hit_player_obj; //sets the target player that should be dragged along the projectile

            //start the multihit timer that decides when it should hit again
            proj_gap_timer = multihit_gap;

            //puts projectile in hitpause and brings the hitbox timer back a bit
            in_hitpause = true;
            if (hitbox_timer = length - multihit_gap*3) hitbox_timer = length - clamp(multihit_gap*3, 0, length);

            //displays hit fx
            spawn_hit_fx(x, y, hit_effect);
        }
        else proj_multihit_final = true;

        if (proj_multihit_final)
        {
            hitbox_timer = length; //makes it so it stops existing on the final hit
            multihit_hit_player = noone;
        }
    }
}

#define set_grab_id
{
    //things to check when you grab someone:
    //  - make sure your grabbed ID is noone so it will grab the first player it collides with
    //  - if the ID is a clone (clones usually disappear which will pop up an error)
    //  - if the hit player is in a hitstun state (so it won't grab armored player)
    //  - if the player isn't in ranno's bubble
    
    if (my_grab_id == noone && !hit_player_obj.clone && (hit_player_obj.state == PS_HITSTUN || hit_player_obj.state == PS_HITSTUN_LAND) && !hit_player_obj.bubbled)
    {
        my_grab_id = hit_player_obj;
    }
}