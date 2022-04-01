//Strong Percent determiner
strongPercent = (2 - ai_target.knockback_adj) * 90;
//------------------ Wait time
if(state == PS_ATTACK_GROUND or state == PS_ATTACK_AIR){
  	attacking = true;
   	if wait_time == 0{
   		
   		wait_time = -1;
   	}
}else{
	attacking = false;
}

//AI difficulty affects wait time, higher difficulties will see a more aggressive Carol   
if(wait_time == -1 and !attacking){
	wait_time = 72 - (temp_level * 8);
}
if wait_time > 0{
	wait_time--;
}

if (ai_target.state == PS_DEAD or ai_target.state == PS_RESPAWN){
   targetbusy = true;
   rangedtimer = 100;
}

if (free && !ai_recovering && motorbike == false)
{
	if (x < stagex + 20 || x > (room_width - stagex) -20)
	{
		jump_down = false;
		jump_pressed = false;
	}
}

//Carol's recovery is more unique that other characters, this code helps her recover
if (ai_recovering && motorbike == false)
{
	up_down=false;
	right_down=false;
	left_down=false;
	
	if (x<get_stage_data( SD_X_POS)) {
		right_down=true;
		left_down=false;
	} else{
		left_down=true;
		right_down=false;
	}
	if (djumps == max_djumps && special_down == false)
	{
		special_down = true;
		if (can_wall_jump && has_walljump)
		{
			jump_down = true;
		}
	}
}

targetbusy = false;

//Make Carol get on the bike if fuel hits 40.
if (fuel == 40 && !ai_recovering && motorbike == false && !free)
{
	var get_on_bike = random_func(10, 4, 1);
	if (get_on_bike < 2)
	{
		joy_pad_idle = false;
		down_down = true;
		special_pressed = true;
	}
}

//Attempt to either wall jump or ride up the walls when near a wall (I don't know if this works or not!)
if (can_wall_jump && (position_meeting(x + 20, y-50,asset_get("par_block"))) || position_meeting(x - 20, 
y-50,asset_get("par_block")) && !ai_recovering && y > get_stage_data( SD_Y_POS))
{
	if (motorbike == true)
	{
		joy_pad_idle = false;
		jump_down = true;		
	}
	else
	{
		joy_pad_idle = false;
		jump_pressed = true;
	}
}

//Only attack with Strongs if the opponent can be KO'd
if (get_player_damage(ai_target.player) >= strongPercent)
{
	joy_pad_idle = false;
	attack_down = false;
	if (!ai_recovering)
	{
		special_down = false;
	}
	strong_pressed = true;
}


//combo logic to ensure jabs go through
if (state == PS_ATTACK_GROUND && (attack == AT_JAB || attack == AT_FTILT || attack == AT_DTILT || attack == AT_UTILT 
|| attack == 45 || attack == 46 || attack == 47 || attack == 48))
{
	if (window = 1 && window_timer == 1)
	{
		var random_direction = random_func(9, 4, 1);
	}
	if (random_direction > 0)
	{
		if ((window == 3 || window == 5) && window_timer == 1 && has_hit_player)
		{
			if (random_direction == 1)
			{
				joy_pad_idle = false;
				if (spr_dir == 1)
				{
					right_down = true;
				}
				else
				{
					left_down = true;
				}
				attack_pressed = true;
			}
			else if (random_direction == 2)
			{
				joy_pad_idle = false;
				up_down = true;
				attack_pressed = true;
			}
			else if (random_direction == 3)
			{
				joy_pad_idle = false;
				up_down = true;
				attack_pressed = true;
			}		
		}
	}
	else if (random_direction == 0)
	{
		if ((window == 3 || window == 5) && window_timer == 6 && has_hit_player)
		{
			joy_pad_idle = false;
			attack_pressed = true;
		}
	}
}

//Taunt
if (can_attack and attack != (AT_TAUNT) and targetbusy)
{
	if (motorbike = true)
	{
	    taunt_pressed = true;
	}
	else if (fuel < 40)
	{
		taunt_down = true;
	}
}
	
if !targetbusy or state_cat = SC_HITSTUN {
	if (motorbike = false)
	{
		taunt_down = false;
	}
	move_cooldown[AT_TAUNT] = 80 ;
}


//Make Carol chas opponent
if (get_training_cpu_action() == CPU_EVADE){
	chasing = true;
	
}

if (get_training_cpu_action() == CPU_STAND && !ai_recovering){
	joy_pad_idle = true;
}

//Advanced Level Ai Stuff, mostly taken from The Knight.
if (temp_level >=7 && x >= stagex +16 && x <= (room_width - stagex) - 16){
	
	//Check the width of the hurtbox
    if (ai_target.player != old_ai_target or target_init == true or hurtboxWidth = 0){
    	checkHurtboxWidth();
    	target_init = false;
    }
    
    //Variables updates and resets
    old_ai_target = ai_target.player;
    xdist = abs(ai_target.x - x);
    ydist = abs(y - ai_target.y);
 
    //--------------------

    if (state_cat != SC_HITSTUN and state != PS_SPAWN){
        rangedtimer -= 1;
    }
    
    
    //Face opponent
    if (((ai_target.x < x && spr_dir = -1) || (ai_target.x > x && spr_dir = 1))){
        facing = true;
    }
    
    //Chase - Agression
	if (((0 > rangedtimer) and (!ai_recovering and inactive > 20)) and (state_cat == SC_GROUND_NEUTRAL or state_cat == SC_AIR_NEUTRAL) and state_cat != SC_HITSTUN and !ai_target_offstage and !offstage  and !can_DACUS and xdist > 100 and !wait_time > 0){
    	if ai_target.x > x{
    		right_hard_pressed = true;
    		if (!ai_recovering)
    		{
	    		special_down = false;
		     	special_pressed = false;
    		}
			if state == PS_DASH {
				right_down = true;
			}
    	} else {
        	left_hard_pressed = true;
			if state == PS_DASH {
				left_down = true;
			}
    	}
    	chasing = 1
	}

	//Wavedash towards opponent
	if state == PS_WAVELAND{
	 	if chasing{
	 		if x < ai_target.x{
				left_down = false;
				right_down = true;
			} 	else {
				left_down = true;
				right_down = false;
			}
	 	}
	}
	//Start wavedashing
    if (state == PS_AIR_DODGE and position_meeting(x, y+6, plat_asset)){
   		if chasing{
   			if x < ai_target.x{
				left_down = false;
				right_down = true;
				joy_pad_idle = false;
				joy_dir = 350;
			}else {
				left_down = true;
				right_down = false;
				joy_pad_idle = false;
				joy_dir = 190;
			}
   		}else{
   			if x > ai_target.x{
				left_down = false;
				right_down = true;
				joy_pad_idle = false;
				joy_dir = 350;
			}else {
				left_down = true;
				right_down = false;
				joy_pad_idle = false;
				joy_dir = 190;
			}
   		}
   		wavelanding = false;
    }
    
    with (asset_get("pHitBox")){
		if player != other.player and type == 2 and (other.state_cat == SC_GROUND_NEUTRAL or other.state_cat == SC_AIR_NEUTRAL){
    		//print_debug("help");
    		if position_meeting(x + (10 * hsp), y + (10 * vsp), other){
    			other.shield_pressed = true;
	   			if !other.free{
	   				other.let_parry = true;
	   			}
    		}
	
		}
    }
    //Allows Parry to carry through
    if(let_parry and state = PS_PARRY_START){
    	joy_pad_idle = true;
    	left_down = false;
    	right_down = false;
    	let_parry = false;
    }
    //Prevento from attacking if should wait and target is invincible
    if(wait_time > 0 or ai_target.invince_time > 10){
		do_not_attack = true;
	}
    
    //valueReset
    resetPredict();
    cancel_jab = false;
	facing = false;
	chasing = 0;
	camping = 0;
	debug = 0;
	do_not_attack = 0;
	targetdamage = get_player_damage( ai_target.player );
    var offstage = (x > room_width - stagex || x < stagex);
    var ai_target_offstage = (ai_target.x - hurtboxWidth > room_width - stagex || ai_target.x + hurtboxWidth < stagex);
    //Sit near edge when AI target is offstage
    if (ai_target_offstage)
    {
		if (x< (room_width - stagex)/2)
		{
			new_x = (room_width - stagex) - 16;
		}
		if (x> (room_width - stagex)/2)
		{
			new_x = stagex + 16;
		}
	}
	//Don't attack when the opponent is attacking
    if (ai_target.state = PS_ATTACK_GROUND || ai_target.state = PS_ATTACK_AIR)
    {
    	joy_pad_idle = false;
		attack_down = false;
		if (!ai_recovering)
		{
			special_down = false;
		}
		shield_down = true;
		do_not_attack = true;
    }
    else
	{
		do_not_attack = false;
	}
}

#define predictloc

fprediction = argument[0];

if(!free and hsp == 0){
	new_x = prediction_array[@0][@ 0];
	new_y = prediction_array[@0][@ 1];
	return;
}

if fprediction >= stopped_at and stopped_at != -1{
	xtrag = prediction_array[@stopped_at - 1][@ 0];
	ytrag = prediction_array[@stopped_at - 1][@ 1];
	return;
}
//print_debug("hi")
var plat = 0;
var stage = 0;

var new_x_c = 0;
var new_y_c = 0;
var new_vsp = 0;
var new_hsp = 0;

if fprediction > current_prediction{
	
	var collide = false;
	for (var i = current_prediction; i < fprediction; i++){
		
		//Get values from current loop
		new_x_c = prediction_array[@current_prediction][@ 0];
		new_y_c = prediction_array[@current_prediction][@ 1];
		new_vsp = prediction_array[@current_prediction][@ 2];
		new_hsp = prediction_array[@current_prediction][@ 3];
		current_prediction++;
		//print_debug(string(fprediction) + " " + string(current_prediction) + " " + string(stopped_at));
		var project_y = new_vsp + grav;
		
		if project_y > max_fall{
			project_y = max_fall;
		}
		if fast_falling{
			if project_y > fast_fall{
				project_y = fast_fall;
			}
		}
		
		stage = position_meeting(new_x_c, new_y_c + project_y, solid_asset);
		plat = position_meeting(new_x_c, new_y_c + project_y, plat_asset);
		if (stage or (plat and project_y > 0)){
			new_vsp = 0;
			collide = true;
		}else{
			new_vsp = project_y;
			new_y_c += new_vsp;
		}
		
		//X manipulation, apply friction, if it would change polarity it makes it equal to 0. 
		if new_vsp == 0 and collide{
			if new_hsp > 0{
				var project_x = new_hsp - ground_friction;
				//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
				if project_x < 0{
					project_x = 0;
					new_x = prediction_array[@current_prediction - 1][@ 0];
					new_y = prediction_array[@current_prediction - 1][@ 1];
					stopped_at = current_prediction;
					return;
				}
			}else{
				var project_x = new_hsp + ground_friction;
				if project_x > 0{
					//If it's touching the ground and velocity equals 0 stop predicting and stores previous prediction frame
					project_x = 0;
					new_x = prediction_array[@current_prediction - 1][@ 0];
					new_y = prediction_array[@current_prediction - 1][@ 1];
					stopped_at = current_prediction;
					return;
				}
			}
		}else{
			//In the air, if it would change polarity it makes it equal to 0. 
			if new_hsp > 0{
				var project_x = new_hsp - air_frict;
				if project_x < 0{
					project_x = 0;
				}
			}else if new_hsp < 0{
				var project_x = new_hsp + air_frict;
				if project_x > 0{
					project_x = 0;
				}
			}
			
		}
		
		//Test to see if X manipualtion makes it collide with walls
		stage = position_meeting(new_x_c + project_x, new_y_c - 2, solid_asset);
		plat = position_meeting(new_x_c + project_x, new_y_c - 2, plat_asset);
		if stage or plat{
			new_hsp = 0;
			
		}else{
			new_hsp = project_x;
			new_x_c = new_x_c + new_hsp;
		}
		
		//Store values in the array
		prediction_array[@current_prediction][@ 0] = new_x_c;
		prediction_array[@current_prediction][@ 1] = new_y_c;
		prediction_array[@current_prediction][@ 2] = new_vsp;
		prediction_array[@current_prediction][@ 3] = new_hsp;
	}
	
	new_x = prediction_array[@fprediction][@ 0];
	new_y = prediction_array[@fprediction][@ 1];
	
}else{
	new_x = prediction_array[@fprediction][@ 0];
	new_y = prediction_array[@fprediction][@ 1];
	//print_debug("frame:" + string(fprediction) + " new_x:" + string(new_x) + " new_y:" + string(new_y) + " new_vsp:" + string(prediction_array[fprediction][@ 2]) + " new_hsp:" + string(prediction_array[fprediction][@ 3]));
}
#define checkHurtboxWidth

hurtboxWidth = ai_target.bbox_right - ai_target.x;

#define resetPredict

current_prediction = 0;
current_prediction_target = 0;
stopped_at = -1;
stopped_at_target = -1;
// xtrag = ai_target.x;
// ytrag = ai_target.y;
// new_x = x;
// new_y = y;
// new_target_vsp = ai_target.vsp;
// new_vsp = vsp;
//print_debug(string(prediction_array))
prediction_array[@0][@ 0] = x;
prediction_array[@0][@ 1] = y;
prediction_array[@0][@ 2] = vsp;
prediction_array[@0][@ 3] = hsp;

prediction_array_target[@0][@ 0] = ai_target.x;
prediction_array_target[@0][@ 1] = ai_target.y;
prediction_array_target[@0][@ 2] = ai_target.vsp;
prediction_array_target[@0][@ 3] = ai_target.hsp;