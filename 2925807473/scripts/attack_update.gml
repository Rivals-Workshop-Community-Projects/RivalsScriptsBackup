//attack_update.gml

//B-reverse - it allows the character to turn in while using specials
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) trigger_b_reverse();

switch (attack)
{
	/////////////////////////////////////////////// NORMALS ////////////////////////////////////////////////
    //
	case AT_FSTRONG:
	if (window ==  2&& window_timer = 1)
	if voiceon == 2{
	snd_rng = random_func(0, 3, true);
    if (snd_rng == 0){
     voice_id = "hz_jabaki";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_jabaki2";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_jabaki2";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_jabaki";
     voice_play();
     }
		
	}
	else if voiceon == 1{
	snd_rng = random_func(0, 3, true);
    if (snd_rng == 0){
     voice_id = "hz_jabaki3";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_jabaki4";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_jabaki3";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_jabaki4";
     voice_play();
     }
		
	}
	break;
		
	case AT_DSTRONG:
	if (window ==  2&& window_timer = 1)
	if voiceon == 2{
	snd_rng = random_func(0, 3, true);
   if (snd_rng == 0){
     voice_id = "hz_zaneiga";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_zaneiga2";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_zaneiga3";
     voice_play();
     }
        
	}
	else	if voiceon == 1{
	snd_rng = random_func(0, 3, true);
   if (snd_rng == 0){
     voice_id = "hz_zaneiga4";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_zaneiga5";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_zaneiga6";
     voice_play();
     }
        
	}
	break;
		     
	case AT_UTILT:
	if (window == 1&& window_timer = 1)
	if voiceon == 2{
	snd_rng = random_func(0, 15, true);
   if (snd_rng == 0){
     voice_id = "hz_tilt1";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_tilt2";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_tilt3";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_tilt4";
     voice_play();
     }
     if (snd_rng == 4){
     voice_id = "hz_tilt5";
     voice_play();
     }
     if (snd_rng == 5){
     voice_id = "hz_tilt6";
     voice_play();
     }
     if (snd_rng == 6){
     voice_id = "hz_tilt7";
     voice_play();
     }
     if (snd_rng == 7){
     voice_id = "hz_tilt8";
     voice_play();
     }
     if (snd_rng == 8){
     voice_id = "hz_tilt9";
     voice_play();
     }
	}
	else if voiceon == 1{
	snd_rng = random_func(0, 8, true);
   if (snd_rng == 0){
     voice_id = "hz_tilt10";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_tilt11";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_tilt12";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_tilt13";
     voice_play();
     }
	}
	break;
	case AT_FAIR:
	if (window ==  1&& window_timer = 1)
	if voiceon == 2{
	snd_rng = random_func(0, 6, true);
   if (snd_rng == 0){
     voice_id = "hz_fair1";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_fair2";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_fair3";
     voice_play();
     }
      if (snd_rng == 3){
     voice_id = "hz_fair4";
     voice_play();
     }
     if (snd_rng == 4){
     voice_id = "hz_fair5";
     voice_play();
     }
        
	}
	else	if voiceon == 1{
	snd_rng = random_func(0, 5, true);
   if (snd_rng == 0){
     voice_id = "hz_fair6";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_fair7";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_fair8";
     voice_play();
     }
      if (snd_rng == 3){
     voice_id = "hz_fair9";
     voice_play();
     }
        
	}
	break;
	/////////////////////////////////////////////// SPECIALS ///////////////////////////////////////////////
    //
	case AT_NSPECIAL:
			can_fast_fall = false;
		can_move = false;
	  switch (window){
	  	case 1:
	  		vsp = clamp(vsp, vsp, 0)
			hsp = 0
			chainlength = 0;
			chainangle = 0;
			chainaim = 0;
			chainhit = false;
	   
			{
					if (!joy_pad_idle){
					if (up_down)
					chainangle = 90 * spr_dir;
					if (down_down && state = PS_ATTACK_AIR)
					chainangle = 180 * spr_dir;
					if (right_down && spr_dir = 1  || left_down && spr_dir = -1)
					chainangle = 45 * spr_dir;
					if (left_down && spr_dir = 1 && state = PS_ATTACK_AIR || right_down && spr_dir = -1 && state = PS_ATTACK_AIR)
					chainangle = 340 * spr_dir;
					if (left_down && spr_dir = 1 && state = PS_ATTACK_GROUND || right_down && spr_dir = -1 && state = PS_ATTACK_GROUND)
					chainangle = 70 * spr_dir;
					
					
					}
					else chainangle =  0 * spr_dir;
				}
	  		{ if (up_down && !right_down && !left_down) chainaim = 1;
				else if (down_down && state = PS_ATTACK_AIR) chainaim = 2;
				else if (right_down) && spr_dir == 1 || (left_down) && spr_dir == -1 chainaim = 3;
				else if (left_down) && spr_dir == 1 && state = PS_ATTACK_AIR|| (right_down) && spr_dir == -1 && state = PS_ATTACK_AIR chainaim = 4;
				else if (left_down && spr_dir = 1 && state = PS_ATTACK_GROUND || right_down && spr_dir = -1 && state = PS_ATTACK_GROUND) chainaim = 5;
				else chainaim = -1;
	  		}
	  		if (window ==  1&& window_timer = 1)
	  		if voiceon == 2{
	snd_rng = random_func(0, 7, true);
   if (snd_rng == 0){
     voice_id = "hz_ouro1";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_ouro2";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_ouro3";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_ouro4";
     voice_play();
     }
     if (snd_rng == 4){
     voice_id = "hz_ouro5";
     voice_play();
     }
     if (snd_rng == 5){
     voice_id = "hz_ouro6";
     voice_play();
     }
     if (snd_rng == 6){
     voice_id = "hz_ouro7";
     voice_play();
     }
	  		}
	  			else if voiceon == 1{
	snd_rng = random_func(0, 5, true);
   if (snd_rng == 0){
     voice_id = "hz_ouro8";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_ouro9";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_ouro10";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_ouro11";
     voice_play();
     }
     if (snd_rng == 4){
     voice_id = "hz_ouro12";
     voice_play();
     }
	  		}
	  	    break;
	  	case 2:
	  		vsp = clamp(vsp, vsp, 0);
			hsp = 0
	  		break;
	  	
	  	case 3:
	  		vsp = clamp(vsp, vsp, 0);
			hsp = 0
	  	if (window_timer < window_end && chainstocks > 0 && special_pressed) {set_window(5)}
	  	if (window_timer == 20 ||window_timer < 20 && attack_pressed && chainstocks > 2) {set_window(4)}
	  	break;
	  	case 4: //X/A
	  	if (window = 4 && window_timer == window_end) {
	  		move_cooldown[attack] = 20
	  		set_state(free ? PS_IDLE_AIR : PS_IDLE);}
	  		chainaim = 0;
	  		
	  		break;
	  	case 5: //B
	  	fall_through = true
	  	chaintimer = 0
	  	if (window_timer == 1) afterImageTimer = 14;
	  	if (window = 5 && window_timer != window_end && place_meeting(x,y,pHitBox) || (window = 5 && window_timer != window_end && place_meeting(x,y,oPlayer))){
	  		print("Contact!")
	  		if place_meeting(x,y,pHitBox){
	  		hsp = hsp * .90
	  		if chainangle != 90 && chainhit != true | chainangle != -90 && chainhit != true{
	  		vsp = vsp * .80}
	  		if chainhit = false
	  		window_timer = window_end
	  		}
	  		if place_meeting(x,y,oPlayer) && chainhit == true{
	  		print("Contact!Player")
	  		hsp = .20
	  		if chainangle != 90 && chainangle != -90{
	  		vsp = vsp * .5}
	  	
	  		window_timer = window_end
	  		}
	  		move_cooldown[attack] = 10
	  		move_cooldown[AT_USPECIAL] = 5
	  		move_cooldown[AT_DSPECIAL] = 5
	  		move_cooldown[AT_FSPECIAL] = 5
	  	}
	  	if (window = 5 && window_timer == 1){
	    chainstocks--;
	    chainaim = 0;
	  if chainangle=0{
	 	hsp = lengthdir_x(15, chainangle) * spr_dir;
		vsp = lengthdir_y(15, chainangle + 15);
	  	
	  }
		
	 if chainangle = 90 || chainangle = -90
	 {hsp = lengthdir_x (0 , 0) * spr_dir;
	  vsp = lengthdir_y(23, chainangle - 40) * spr_dir;}
	  
	   if chainangle = 180 || chainangle = -180
	 {hsp = lengthdir_x (0 , 0) * spr_dir;
	  vsp = lengthdir_y(30, -35);
	 }
	  if chainangle = 45 || chainangle = -45
	  {hsp = lengthdir_x(19 * spr_dir, chainangle);
	  	vsp = lengthdir_y(20 * spr_dir, chainangle)}
	  if chainangle = 70 || chainangle = -70
	  {hsp = lengthdir_x(20 * spr_dir, chainangle);
	  	vsp = lengthdir_y(17 * spr_dir, chainangle)}
	if chainangle = 340 || chainangle = -340
	  {hsp = lengthdir_x(16 * spr_dir, chainangle);
		vsp = lengthdir_y(20 * spr_dir, chainangle);}
		break;
	  	} 
	  }
	break;
	case AT_DSPECIAL:
	can_fast_fall = false
	vsp = vsp * .6
	hsp = 0
	if (window == 1) //reset variables
		{
			my_grab_id = noone; 
			grab_time = 0;
		
		}
	if (window ==  1 && window_timer = 1)
	if voiceon == 2{
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_gasai1";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_gasai2";
     voice_play();
     }
	}
	else if voiceon == 1{
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_gasai3";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_gasai4";
     voice_play();
     }
	}
	if (window == 2 && my_grab_id = noone)
	{
		set_window(4);
	}
	if (window == 4 && window_timer == window_end)
	{ 
		set_state(was_parried ? free ? PS_PRATFALL : PS_PRATLAND : free ? PS_IDLE_AIR : PS_IDLE)
		move_cooldown[attack] = 20
		
	}
     if (my_grab_id != noone) //if you have grabbed someone
		{
             with (my_grab_id)
			{
				hurt_img = 1;
				switch (other.window)
				{
					case 2: //go to window 4 (grab success window) and erase the grab hitbox
						with (other)
						{
							set_window(3);
							destroy_hitboxes();
						}
						break;
					case 3:  //move grabbed player to the proper postion
						x = ease_sineInOut(x, other.x+30*other.spr_dir, other.grab_time, 10);
                		y = ease_sineInOut(y, other.y+2, other.grab_time, 10);

						//if conditions are met, go to window 6 and set the grab time to 0 again
						with (other) if (window == 3 && window_timer == window_end)
						{
							grab_time = 0;
							set_window(5);
							var throw_hbox = create_hitbox(AT_DSPECIAL, 2, x, y);

						}
						break;
					case 5:  //move grabbed player to the proper postion... again
						x = ease_sineInOut(x, other.x+30*other.spr_dir, other.grab_time, other.grab_time+10);
                		y = ease_sineInOut(y, other.y+2, other.grab_time, other.grab_time+10);
                     if  (window_timer == window_end) set_state(PS_IDLE);
                     
						with (other)
						{
							if (image_index == 9)
							{
								other.force_depth = true; //this allows us to change the depth of the enemy to make them appear in front
								other.depth = depth-1;
							}
								for (var i = 0; i < 4; ++i)
								{
									throw_hbox.can_hit[i] = false;
									throw_hbox.can_hit[my_grab_id.player] = true;
								}
							}
						}
						break;
				}
			}
			break;
	case AT_FSPECIAL:
	can_fast_fall = false
	switch(window){
	case 1:
	vsp = vsp * .2
   if (window ==  1 && window_timer = 1)
   if voiceon ==2{
	snd_rng = random_func(0, 7, true);
   if (snd_rng == 0){
     voice_id = "hz_fs1";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_fs2";
     voice_play();
     }
    if (snd_rng == 2){
     voice_id = "hz_fs3";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_fs4";
     voice_play();
     }
     if (snd_rng == 4){
     voice_id = "hz_fs5";
     voice_play();
     }
     if (snd_rng == 5){
     voice_id = "hz_fs6";
     voice_play();
     }
	}
	else   if voiceon ==1{
	snd_rng = random_func(0, 5, true);
   if (snd_rng == 0){
     voice_id = "hz_fs7";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_fs8";
     voice_play();
     }
    if (snd_rng == 2){
     voice_id = "hz_fs9";
     voice_play();
     }
     if (snd_rng == 3){
     voice_id = "hz_fs10";
     voice_play();
     }
	}
	break;
	case 2:
	vsp = vsp * .2
	{
	if (window_timer == 1) afterImageTimer = 14
	}
	{
	if (attack_pressed) set_window(4); 
	if (special_pressed) set_window(8);
	}
	break;
	case 3:
	if (window == 3 && window_timer == window_end) 
	{ 
		set_state(free ? PS_IDLE_AIR : PS_IDLE)
		move_cooldown[attack] = 20
		
	}
	break;
	case 4:
	if (window == 4 && window_timer == 1) 
	if voiceon == 2{ 
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_resen";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_resen1";
     voice_play();
     }
	}
	else if voiceon == 1{ 
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_resen2";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_resen3";
     voice_play();
     }
	}
	break;
	case 5: case 6:
	 if place_meeting(x,y,oPlayer){
     hsp = hsp * 0.6
     }
    break;
	case 8:
	if (window == 8 && window_timer == 1) 
	if voiceon == 2{ 
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_gashou1";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_gashou2";
     voice_play();
     }
	}
	else	if voiceon == 1{ 
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_gashou3";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_gashou4";
     voice_play();
     }
	}
	break;
	case 7:
	if (window == 7 && window_timer == window_end) 
	{ 
		set_state(was_parried ? free ? PS_PRATFALL : PS_PRATLAND : free ? PS_IDLE_AIR : PS_IDLE)
		move_cooldown[attack] = 20
		
	}
	break;
	case 12:
	if (window == 12 && window_timer == window_end) 
	{ 
		set_state(was_parried ? free ? PS_PRATFALL : PS_PRATLAND : free ? PS_IDLE_AIR : PS_IDLE)
		move_cooldown[attack] = 20
		
	}
	break;
	}
	break;
	case AT_USPECIAL:
	can_fast_fall = false
	vsp = vsp * .6
	hsp = 0
	if (window == 1 && window_timer = 1)
	{
		uspechit = false;
	if voiceon == 2{
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_jakou4";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_jakou3";
     voice_play();
     }
        
	}
	else	if voiceon == 1{
	snd_rng = random_func(0, 2, true);
   if (snd_rng == 0){
     voice_id = "hz_jakou1";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_jakou2";
     voice_play();
     }
	}
	}
	if (window == 2 && window_timer == window_end)
	{
		set_window(4);
	}
	if (window == 2 && uspechit = true)
	{
		set_window(3);
	}
	if (window == 3 && window_timer == window_end)
	{
		set_window(5);
	}
	if (window == 4 && window_timer == window_end)
	{ 
		set_state(free ? PS_IDLE_AIR : PS_IDLE)
		move_cooldown[attack] = 20
		
	}
	break;
 
		
	///////////////////////////////////////////////// OTHER ////////////////////////////////////////////////
    //
	case AT_TAUNT:
	if (window ==  1&& window_timer = 1)
	if voiceon == 2{
	snd_rng = random_func(0, 3, true);
   if (snd_rng == 0){
     voice_id = "hz_taunt";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_taunt2";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_taunt3";
     voice_play();
     }
        
	}
	else	if voiceon == 1{
	snd_rng = random_func(0, 3, true);
   if (snd_rng == 0){
     voice_id = "hz_taunt4";
     voice_play();
     }
     if (snd_rng == 1){
     voice_id = "hz_taunt5";
     voice_play();
     }
     if (snd_rng == 2){
     voice_id = "hz_taunt6";
     voice_play();
     }
        
	}
	break;
}


//0 will just go to the next window instead of a specific one
//-1 makes it loop on the same window
#define set_window(window_num)
{
    if (window_num == 0) window ++;
    else if (window_num == -1) window = window;
    else window = window_num;
    window_timer = 0;
}

#define voice_play()
if voiceon != 0{
if (voice_id != noone){
sound_stop(voice_playing_sound);}
voice_playing_sound = sound_play(sound_get(voice_id));
voice_id = noone;
}