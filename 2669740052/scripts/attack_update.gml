//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

/*if (attack == AT_NSPECIAL){
    if (window == 3){
        if (special_pressed){
            window = 1;
            window_timer = 0;
        }
    }
}*/

if (attack == AT_FSPECIAL){
    if (window == 2){
        if (special_pressed){
            window = 3;
            window_timer = 0;
            destroy_hitboxes();
        }
    }
    can_fast_fall = false;
}

/*if (attack == AT_USPECIAL){
    if (window == 1 && window_timer == 1){
        times_through = 0;
    }
    if (window == 2){
        if (window_timer == get_window_value(attack, 2, AG_WINDOW_LENGTH)){
            if (times_through < 10){
                times_through++;
                window_timer = 0;
            }
        }
        if (!joy_pad_idle){
            hsp += lengthdir_x(1, joy_dir);
            vsp += lengthdir_y(1, joy_dir);
        } else {
            hsp *= .6;
            vsp *= .6;
        }
        var fly_dir = point_direction(0,0,hsp,vsp);
        var fly_dist = point_distance(0,0,hsp,vsp);
        var max_speed = 12;
        if (fly_dist > max_speed){
            hsp = lengthdir_x(max_speed, fly_dir);
            vsp = lengthdir_y(max_speed, fly_dir);
        }
        if (special_pressed && times_through > 0){
            window = 4;
            window_timer = 0;
        }
        if (shield_pressed){
            window = 3;
            window_timer = 0;
        }
    }
    if (window > 3 && window < 6 && window_timer == get_window_value(attack, window, AG_WINDOW_LENGTH)){
        window++;
        window_timer = 0;
    }
}*/

if (attack == AT_DSPECIAL){
    if (window == 2 && !was_parried){
        can_jump = true;
    }
    can_fast_fall = false;
    can_move = false
}

//Jab
if(attack == AT_JAB)
{
    switch(window)
    {
        case 3:
            //Input for jab change
            if(attack_down)
            {
                window_timer = 0;
                window = 7;
            }
            break;
        
        case 6:
            if(window_timer >= 12)set_state(PS_IDLE);
            break;
    }
}

//DTilt
if(attack == AT_DTILT)
{
    switch(window)
    {
        case 2:
            if(window_timer == 1)
            {
                //create_hitbox(AT_DTILT, 1, x + spr_dir * 64, y);//asset_get("par_block"))
                if(position_meeting(x+(spr_dir*80), y+1, asset_get("par_jumpthrough")) || position_meeting(x+(spr_dir*80), y+1, asset_get("par_block")))create_hitbox(AT_DTILT, 1, x+spr_dir * 48, y);
            }
            break;
    }
}

//DStrong
if(attack == AT_DSTRONG)
{
    switch(window)
    {
        case 3:
            dstrong_rock_timer = 1;
            
        case 4:
            if(window_timer == 1)dstrong_spawnrocks = true;

            break;
    }
    
    //if(window >= 4)dstrong_rock_timer ++;
    if(dstrong_spawnrocks)
    {
                    if(dstrong_rock_timer == 5)//window_timer == 7
            {
                //Inner Right
                //create_hitbox(AT_DTILT, 1, x + spr_dir * 64, y);//asset_get("par_block"))
                if(position_meeting(x+(spr_dir*64), y+1, asset_get("par_jumpthrough")) || position_meeting(x+(spr_dir*64), y+1, asset_get("par_block")))create_hitbox(AT_DSTRONG, 1, x+spr_dir * 36, y);
                
                //Inner Left
                if(position_meeting(x-(spr_dir*64), y+1, asset_get("par_jumpthrough")) || position_meeting(x-(spr_dir*64), y+1, asset_get("par_block")))create_hitbox(AT_DSTRONG, 2, x-spr_dir * 44, y);
            }
            if(dstrong_rock_timer == 13)//10
            {
                //Inner Right
                //create_hitbox(AT_DTILT, 1, x + spr_dir * 64, y);//asset_get("par_block"))
                if(position_meeting(x+(spr_dir*(80+15)), y+1, asset_get("par_jumpthrough")) || position_meeting(x+(spr_dir*(80+15)), y+1, asset_get("par_block")))create_hitbox(AT_DSTRONG, 3, x+spr_dir * 72, y);
                
                //Inner Left
                if(position_meeting(x-(spr_dir*(80+15)), y+1, asset_get("par_jumpthrough")) || position_meeting(x-(spr_dir*(80+15)), y+1, asset_get("par_block")))create_hitbox(AT_DSTRONG, 4, x-spr_dir * 80, y);
            }
            if(dstrong_rock_timer == 21)//15
            {
                //Inner Right
                //create_hitbox(AT_DTILT, 1, x + spr_dir * 64, y);//asset_get("par_block"))
                if(position_meeting(x+(spr_dir*128), y+1, asset_get("par_jumpthrough")) || position_meeting(x+(spr_dir*(128)), y+1, asset_get("par_block")))create_hitbox(AT_DSTRONG, 5, x+spr_dir * 110, y);
                
                //Inner Left
                if(position_meeting(x-(spr_dir*(128)), y+1, asset_get("par_jumpthrough")) || position_meeting(x-(spr_dir*(128)), y+1, asset_get("par_block")))create_hitbox(AT_DSTRONG, 6, x-spr_dir * 116, y);
            }
        dstrong_rock_timer ++;
    }
}

//UStrong
if (attack == AT_USTRONG) {
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
    
    //first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
    if (window == 5) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 80 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}

//NSpecial
if(portal == noone)
{
	//Create the Portal Article
	//portal = instance_create(x,y,"obj_article1");
	//portal.depth = depth + 10;
}

if(attack == AT_NSPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
	var _nsp_proj_spd = 2;
	var _nsp_proj_dir = 0;
	
	switch(window)
	{
		case 1:
			if(window_timer == 1)
			{
				if(nspecial_proj != noone)
				{
					with(nspecial_proj)instance_destroy();
					nspecial_proj = noone;
				}
			}
			break;
		
		case 2:
			if(!special_down)
			{
									if(up_down)_nsp_proj_dir = 90;
					else if(down_down)_nsp_proj_dir = 270;
					else if(left_down)_nsp_proj_dir = 180;
					else if(right_down)_nsp_proj_dir = 0;
				window = 3;
				window_timer = 0;
				nspecial_proj.speed = _nsp_proj_spd;
				nspecial_proj.direction = _nsp_proj_dir;
			}else
			{
				if(nspecial_proj == noone)
				{

					
					nspecial_proj = instance_create(x+50,y-32,"obj_article2")
					nspecial_proj.depth = depth - 5;
					//nspecial_proj.owner = self;
				}
			}
			break;
	}
}

//Beta USpecial
if(attack == AT_USPECIAL && (state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR))
{
	//uspecial_can_use = ;
}

/*if (attack == AT_NSPECIAL_2 && instance_exists(grabbed_player_obj)) {
	//if (window == 5) { grabbed_player_obj = noone; }
	//else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window == 1) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}