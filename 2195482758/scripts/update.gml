//update

// Muno's meme
user_event(14);

// I am me
is_tenru = true;

// if(shield_down)
// {
// 	set_state(PS_IDLE);
// }

// var dir = 0;

// with(pHitBox)
// {
// 	dir = spr_dir;
// 	with(other)print_debug(string(dir));
// }

// Taunt 2
if(do_taunt_2)
{
	set_attack(AT_TAUNT_2);
	do_taunt_2 = false;
}

if(attack == AT_TAUNT && state != PS_ATTACK_GROUND) sound_stop( sound_get( "tenru_laugh" ));

// Phone skin swap
if(phone_cheats[cheat_phone_skin] == 0)
{
	set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open2"));
	currentSkin = "_pho_idle2";
	phone.spr_pho_idle = sprite_get(currentSkin);
	phone.sprite_index = phone.spr_pho_idle;
}
else
{
	set_attack_value(AT_PHONE, AG_SPRITE, sprite_get("phone_open"));
	currentSkin = "_pho_idle";
	phone.spr_pho_idle = sprite_get(currentSkin);
	phone.sprite_index = phone.spr_pho_idle;
}

// Custom firecracker explosion parry code
if(instance_exists(asset_get("obj_article2")))
{
	if(asset_get("obj_article2").player_id == id)
	{
		var i;
		i = 0;
		
		
		repeat(3)
		{
		if(instance_exists(asset_get("obj_article2").fc_hitbox[i]))
			if(asset_get("obj_article2").fc_hitbox[i].was_parried)
				was_parried = true;
		   i += 1;
		}
	}
}



// Intro
if (introTimer2 < 3) {
    introTimer2++;
} else {
    introTimer2 = 0;
    introTimer++;
    if(introTimer < 9)
    {
    	introTimer+=1.5;
    }
}
//this increments introTimer every few frames, depending on the number entered
if(phone_practice) introTimer = 24;



if (introTimer < 23) {
    draw_indicator = false;
    
} else {

    draw_indicator = true;
}

if(draw_indicator == false && introTimer2 == 1 && (introTimer == 16 || introTimer == 17 || introTimer == 18 || introTimer == 19 || window_timer == 20 ))
{
	sound_play(sound_get("tenru_small_firecracker"));
}

// Some jank related to idle tweaks and intro animation.
// Probably breaks something.
if(!draw_indicator)
{
	state_timer = 0;
	image_index = 0;
}

if(introTimer == 34 && introTimer2 == 1 && !introResetBool)
{
	introResetBool = true;
	state = PS_IDLE
}

// Idle fidgets
if(state == PS_IDLE && introTimer > 24)
{
	
	if(image_index == 0 && state_timer > 100)
	{
		state_timer = 0;	
	}
	
	if(state_timer == 53*2)
	{
		image_index = 0;
		state_timer = 0;
	}
	
	if(state_timer == 53*3)
	{
		image_index = 0;
		state_timer = 0;
	}
	
	if(state_timer == 52)
	{
		fidget_rand = random_func( 0, 2, true );
	}
	
	if(state_timer == 53)
	{
		
		
		if(fidget_rand == 0)
		{
			
			var i = random_func( 0, 3, true );
			switch(i)
			{
				case 0:
					state_timer = 53;
					break;
				case 1:
					state_timer = 53*2;
					break;
				case 2:
					state_timer = 53*3;
					break;
				case 3:
					state_timer = 53*4;
					break;
			}
		}
		else
		{
			image_index = 0;
			state_timer = 0;
		}
	}
	

	
}
// Taunt code
if(attack == AT_TAUNT)
{
    if(window == 1)
    {
        taunt_stall = 0;
    }
    else
    if(!joy_pad_idle || jump_pressed || special_pressed || shield_pressed || attack_pressed || taunt_pressed)
    {
        taunt_stall = 1;
    }
}

// // Shorterhop testing
// if(jump_pressed && attack_pressed && !free && state != PS_JUMPSQUAT)
// {
	
//     jump_speed = (short_hop_speed-2);
//     shorterhop_penalty = 3;
// }
// else if(state != PS_ATTACK_AIR)
// {
	
//     jump_speed = max_jump_speed;
//     shorterhop_penalty = 0;
// }
// if(shorterhop_penalty == 3 && vsp <= short_hop_speed*-1)
// {
// 	shorterhop_penalty = 0;
// }

// // Shorterhops
// set_hitbox_value(AT_DAIR, 1, HG_DAMAGE, 9 - shorterhop_penalty);
// set_hitbox_value(AT_NAIR, 1, HG_DAMAGE, 6 - shorterhop_penalty);
// set_hitbox_value(AT_NAIR, 2, HG_DAMAGE, 4 - shorterhop_penalty);
// set_hitbox_value(AT_BAIR, 1, HG_DAMAGE, 3 - (shorterhop_penalty/3));
// set_hitbox_value(AT_BAIR, 2, HG_DAMAGE, 3 - (shorterhop_penalty/3));
// set_hitbox_value(AT_BAIR, 3, HG_DAMAGE, 4 - (shorterhop_penalty/3));
// set_hitbox_value(AT_FAIR, 1, HG_DAMAGE, 7 - shorterhop_penalty);
// set_hitbox_value(AT_FAIR, 2, HG_DAMAGE, 6 - shorterhop_penalty);
// set_hitbox_value(AT_UAIR, 1, HG_DAMAGE, 3 - (shorterhop_penalty/3));
// set_hitbox_value(AT_UAIR, 2, HG_DAMAGE, 5 - shorterhop_penalty);

if(state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)
{
	grabbedid = noone;
	grabbedProj = noone;
	from_dspecial = false;
	from_uspecial = false;
	jump_queue = 0;
	uptilt_loop = false;
}

// Grabs
if(grabbedid != noone && !grabbed_solid){
	with(grabbedid)
	{
		ungrab++;
		if(ungrab == 2){
			//grabbedid.visible = true; //Feel free to remove this line if the grab does not make the opponent invisible.
			//grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
			state = PS_TUMBLE;
			ungrab = 0;
			other.grabbedid = noone;
			other.grabbedProj = noone;
			
			
		}
	}
}


// Grab release backup
if(last_grabbedid != noone && (state != PS_ATTACK_GROUND && state != PS_ATTACK_AIR)){
	with(last_grabbedid)
	{
		//grabbedid.invincible = false; //Feel free to remove this line if the grab does not make the opponent invincible.
		state = PS_TUMBLE;
		ungrab = 0;
		other.grabbedid = noone;
		other.grabbedProj = noone;
		in_hitpause = false;
	}
    last_grabbedid = noone;
}

if(!free || state == PS_WALL_JUMP || state_cat == SC_HITSTUN || uspecial_ground == true)
{
	// 1 Firecracker on screen at a time
	var can_can_throw = true;
	
	with (pHitBox) 
		if (orig_player == other.player && (attack == AT_NSPECIAL) && hbox_num == 1) 
			if("ungrab" in self) move_cooldown[AT_NSPECIAL] = 1;
			//else can_can_throw = false;
				
	can_throw = uspecial_ground == true ? true : can_can_throw;
	uspecial_ground = false;
	
	can_grab_solid_fspec = true;
	can_grab_solid_uspec = true;
	leniancy_recovery = false;
	can_air_dspecial = true;
	varying_uspecial_vsp = base_uspecial_vsp;
}

// Particles
if (land_dust_started == true) {
    land_dust_timer++;
}

if (land_dust_timer >= landing_time+2) {
    land_dust_started = false;
    land_dust_timer = -1;
}

// OOK OOK
var scream_speed = 1;
var taunt_volume = 2.75;

// AAH AAAA
//if(taunt_down && !screaming && ( ( (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_PHONE) && !has_hit_player) || state == PS_HITSTUN || state == PS_TUMBLE))

var should_scream = false;
with(hit_player_obj) if(activated_kill_effect) should_scream = true;

if((should_scream ||activated_kill_effect) && !screaming && taunt_pressed)
{
	screaming = true;
	scream_timer = 60;
	
	var scream = random_func( 0, 3, true );
	
	sound_play( 
		should_scream ? sound_get( "tenru_scream_ha" ) :
		scream == 0 ? sound_get( "tenru_scream" ) : 
		scream == 2 ? sound_get( "tenru_scream2" ) : 
		sound_get( "tenru_scream3" ),
		false,false,taunt_volume 
	);
}

if(scream_timer == 0) screaming = false;
else scream_timer--;

// OOO OOOO OOOOOO
// if(screaming && has_hit_player && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR)) 
// {
// 	screaming = false;
// 	sound_stop(sound_get( "tenru_scream" ));
// 	sound_stop(sound_get( "tenru_scream2" ));
// 	sound_stop(sound_get( "tenru_scream3" ));
// 	sound_play( sound_get( "tenru_scream_ha" ),false,false,taunt_volume );
// }

// OOOH OOH AH
// if(!(( ( (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack != AT_TAUNT && attack != AT_TAUNT_2 && attack != AT_PHONE) && !has_hit_player) || state == PS_HITSTUN || state == PS_TUMBLE))) {
// 	screaming = false;
// }




//print_debug(string(grabbedProj) + " " + string(grabbedid));
//print_debug(string(joy_dir) + " " + string(hsp));

//print_debug("Slot1: " + string(joy_dir));

// for (var i = 0; i < 10; i++;)
// {
//     print_debug("Slot: " + string(i) + string(fc_array[i]));
// }
// print_debug("Slot1: " + string(fc_slot1));
// print_debug("Slot2: " + string(fc_slot2));

// Reset explosion availability
if(!(instance_exists(obj_article2) && obj_article2.player_id == id))
{
	expl_can_hit = true;
}
// Firecracker
with(pHitBox){
    if((attack == AT_EXTRA_3 && player_id == other.enemykirby) || (orig_player == other.player && (attack == AT_NSPECIAL) && hbox_num == 1))
    {


        // Variables
        id_assigned = 0;
        my_slot = 0;
        neg_vsp = 0;
        
        // Timer reset on reflect
        if(was_parried && !reset)
        {
        	hitbox_timer = 0;
        	
        	
        	// Set up variables
        	
        	// Positions
        	var fx = x;
			var fy = y;
			var tx = lastPlayer.x;
			var ty = lastPlayer.y;
			
			lastPlayer = currentPlayer;
			
			// Speeds
			var v = clamp(abs(point_distance(x,y,tx,ty))/20,10,17);
			var v2 = clamp(abs(point_distance(x,y,tx,ty))/16,4,17);
			
			// Gravity
			var g = 0.6;

			

			// Calculate x and y difference
			var xdiff = (tx-fx);
			var ydiff = fy-ty;
			
			// Calculate high angle
			var Ohigh = arctan((v * v + sqrt(abs(v * v * v * v - g * ((g * xdiff * xdiff) + (2 * ydiff * v * v))))) / (g * xdiff));
			Ohigh *= 180/3.14;
			
			// Swap based on direction
			if(xdiff < 0) Ohigh = Ohigh + 180;
			
			//Calculate low angle
			ydiff = fy - (ty-50);
			var Olow = arctan((v2 * v2 - sqrt(abs(v2 * v2 * v2 * v2 - g * ((g * xdiff * xdiff) + (2 * ydiff * v2 * v2))))) / (g * xdiff));
			Olow *= 180/3.14;
			
			// Swap based on direction
			if(xdiff < 0) Olow = Olow + 180;

			var canlowhit = v2 * v2 * v2 * v2 - g * ((g * xdiff * xdiff) + (2 * ydiff * v2 * v2));
			// Set vector components
			if(abs(vsp) > abs(hsp) || canlowhit < 0){
				vsp = v * -dsin(Ohigh);
				hsp = v * dcos(Ohigh);
				
				// Compensate for friction
				hsp += sign(hsp) * point_distance(x,y,tx,ty)/150;
			} else {
				vsp = v2 * -dsin(Olow);
				hsp = v2 * dcos(Olow);
			}
	
	
			
        	reset = true;
        }
        
        if(!init)
        {
        	var is_kirby = 0;
        }
        
        // Check if a slot has already been assigned
        for (var i = 0; i < 10; i++;)
        {
            if(id == other.fc_array[i])
            {
                id_assigned = 1;
                my_slot = i;
            }
        }
        
        // If not, assign the first empty slot
        if(id_assigned == 0 && !destroyed)
        {
            for (var k = 0; k < 10; k++;)
            {
                if(other.fc_array[k] == 0)
                {
                    other.fc_array[k] = id;
                    my_slot = k;
                    break;
                }
            }
        }
        
    	// If barely moving and not spin, explode
	    // if( (abs(other.last_fc_vsp[my_slot]) < 0.5 && abs(vsp) < 0.5) && (abs(other.last_fc_hsp[my_slot]) < 0.5 && abs(hsp) < 0.5) && !is_spin)
	    // {
	    // 	hitbox_timer = other.fc_lifetime-1;
	    // }
        
        // Vertical bounce
        if(!destroyed)
        {
            neg_vsp = -1 * other.last_fc_vsp[my_slot];
            other.last_fc_vsp[my_slot] = vsp;
            
            // Horizontal bounce
            neg_hsp = -1 * other.last_fc_hsp[my_slot];
            other.last_fc_hsp[my_slot] = hsp;
        }
        
        
        //print_debug(string(smoketimer));
        
    //     //print_debug(string(id));
        
        
        
     // Wall bounce (unused)  ( (hsp < 0 && neg_hsp < 0)  || (hsp > 0 && neg_hsp > 0)
     // If bounced
     if((vsp < 0 && neg_vsp < 0) && !(reset && hitbox_timer == 0))  
     {
         // Set despawn timer to almost expire
         //hitbox_timer = bounced ? other.fc_lifetime-1 : other.fc_lifetime - other.fc_bounce_timer;
         
         //hitbox_timer = bounced == 2 ? other.fc_lifetime-1 : hitbox_timer;
         
         // Increment bounce counter
         bounced++;
         if(!is_spin) hitbox_timer = min(other.fc_lifetime-1,hitbox_timer+10); // Subtract from lifetime
         
		// Destroy on second regrab bounce
         if(transcendent && bounced >= 2) hitbox_timer = other.fc_lifetime-10;
         
         if(is_spin)
         {
         	hsp = -4 * sign(hsp);
         }
         
         // Explode if bunt
         if(is_bunt) hitbox_timer = other.fc_lifetime-1;
     }
     
	if(attack == AT_EXTRA_3)
	{
		 smoketimer = 0;   
		 num_fc = 3;
		 smoketimer_max = 30;
		 is_kirby = 1;
		 can_hit[other.enemykirby.player] = false;
		 
		 if(hitbox_timer < 2) bounced = false;
    }
     
     // Smoke trail
     if(init && is_kirby == 0)
     {
     if(smoketimer == 0)
     {
         spawn_hit_fx(x+random_func( -20, 20, false ),y+random_func( -20, 20, false ),other.fc_trail);
         smoketimer = smoketimer_max;
     }
     else
     {
         smoketimer--;
     }
     }
     

        
    // If about to despawn
    if(hitbox_timer == other.fc_lifetime-1 && !destroyed ||
    (	collision_circle(x,y, 30, obj_article2, true,true) == noone && 
    	collision_circle(x,y, 30, oPlayer, true,true) != noone &&
    	collision_circle(x,y, 30, oPlayer, true,true) != other.enemykirby &&
    	is_kirby == 1))
    {
        
        //Print storage
        //print_debug("Image: " + string(sprite_index));
      // print_debug("Image: " + string(sprite_get("firecracker_single")));
        
        
        
        // Figure out what sprite I am
        // I would use a switch but it breaks for some reason

        // Explode
         var expl = instance_create(floor(x), floor(y), "obj_article2");
         expl.fc_timer = 0;
         expl.explosions_to_do = num_fc;
         expl.sprite_index = sprite_index;
         expl.img_ind = image_index;
         expl.image_index = image_index;
         
         
         if(reflected || is_kirby == 1)
         {
         	expl.parried = 0;
         }	
		if(is_kirby == 1) expl.kirby = other.enemykirby;
         
        // Reset slot
        other.fc_array[my_slot] = 0;
        other.last_fc_vsp[my_slot] = 0;
        other.last_fc_hsp[my_slot] = 0;

        //instance_destroy();
    }
    
    if(destroyed)
    {
         // Reset slot
        other.fc_array[my_slot] = 0;
        other.last_fc_vsp[my_slot] = 0;
        other.last_fc_hsp[my_slot] = 0;
    }
    
        
    }

}




// TnA
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 14;
    trummelcodecsprite1 = sprite_get("TnA1");
    trummelcodecsprite2 = sprite_get("TnA2");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 5;

    trummelcodecline[page,1] = "Oh no.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 

    //Page 1
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Oh YES!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    
    //Page 2
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "huh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
        
    //Page 3
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "That's Tenru.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "If he's here, then...";
    trummelcodecline[page,4] = "well...";
    page++; 
    
    //Page 4
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "It would be best for";
    trummelcodecline[page,2] = "us to stop being here";
    trummelcodecline[page,3] = "with him.";
    trummelcodecline[page,4] = "Preferably quickly.";
    page++; 
    
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;

    trummelcodecline[page,1] = "He used to be a monk";
    trummelcodecline[page,2] = "from Blazing Hideout,";
    trummelcodecline[page,3] = "but now he";
    trummelcodecline[page,4] = "is most known for-";
    page++; 

	//Page 6
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "HEEEEEEEEEEEEEEEEEEE";
    trummelcodecline[page,2] = "EEEEEEEEEEEEEEEEEEEE";
    trummelcodecline[page,3] = "EEEEEEEEEEEEEEEEEEEE";
    trummelcodecline[page,4] = "EEEEEEEEEEEEEEEY!!!!";
    page++; 
    
    //Page 7
    trummelcodecspeaker[page] = 3;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "ARE WE GONNA FIGHT,";
    trummelcodecline[page,2] = "OR ARE YOU GONNA SIT";
    trummelcodecline[page,3] = "THERE TALKING ABOUT";
    trummelcodecline[page,4] = "ME ALL DAY!?";
    page++; 
    
    //Page 8
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "rude";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 9
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Very. Well, this";
    trummelcodecline[page,2] = "loudmouthed prankster";
    trummelcodecline[page,3] = "relies on rushing";
    trummelcodecline[page,4] = "his opponents down.";
    page++; 
    
    //Page 10
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "He also struggles to gain";
    trummelcodecline[page,2] = "height away from a wall.";
    trummelcodecline[page,3] = "Keep him at a distance,";
    trummelcodecline[page,4] = "and far offstage.";
    page++; 
    
    //Page 11
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Big talk coming";
    trummelcodecline[page,2] = "from a washed-up";
    trummelcodecline[page,3] = "Lakitu and a slug with";
    trummelcodecline[page,4] = "no fashion sense.";
    page++; 
    
    //Page 12
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "hey im the most dapper";
    trummelcodecline[page,2] = "snail around";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 13
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;

    trummelcodecline[page,1] = "Oh THAT was uncalled for.";
    trummelcodecline[page,2] = "Prepare for a pummelling!";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 
    
    //Page 14
    trummelcodecspeaker[page] = 4;
    trummelcodecexpression[page] = 0;

    trummelcodecline[page,1] = "Now that's more like it!";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++; 


}

