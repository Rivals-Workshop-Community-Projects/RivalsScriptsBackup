// attack_update

//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_NSPECIAL_2 || attack == AT_FSPECIAL || attack == AT_USPECIAL || attack == AT_USPECIAL_GROUND || attack == AT_UAIR){
    trigger_b_reverse();
}

if (attack == AT_USPECIAL or attack == AT_USPECIAL_GROUND)
{
	if (window == 2) 
	{
		if (special_down && uspec_meter > 0)
		{
			if (window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH))
			{
				window_timer = 0;
			}
			--uspec_meter;
		}
		else
		{
			window = 3;
			window_timer = 0;

		}
	}
	if (window == 3) 
	{
		if (window_timer == get_window_value(AT_USPECIAL, 3, AG_WINDOW_LENGTH))
		{
			move_cooldown[AT_USPECIAL] = 25;;// can't use uspec again once you let go
			//Cambie esto por un peque�o cooldown de 20 frames para evitar spamear en el aire
		}
	
	}
}

if (attack == AT_USPECIAL_GROUND)
{
	if (window == 2) 
	{
		if (special_down && uspec_meter > 0)
		{
			if (window_timer = 7)
			{
				window_timer = 0;
			}
			--uspec_meter;
			--uspec_meter;
		}
		else
		{
			window = 3;
			window_timer = 0;

		}
	}
	if (window == 3) 
	{
		if (window_timer == get_window_value(AT_USPECIAL_GROUND, 3, AG_WINDOW_LENGTH))
		{
			move_cooldown[AT_USPECIAL_GROUND] = 70;// can't use uspec again once you let go
			//Cambie esto por un peque�o cooldown de 20 frames para evitar spamear en el aire
		}
	
	}
}


if (attack == AT_USPECIAL) && vsp == 0{
	if fire = 1{
		vsp = -2.6;
	}
	if ice = 1{
		vsp = -3.6;
	}
	if thunder = 1{
		vsp = -2;
	}
	if pistols = 1{
		vsp = -1.5;
	}
}	
//SHOTGUN
if (attack == AT_NSPECIAL)
{
	if (window == 2) 
	{
		{
		uspec_meter = 20;
			move_cooldown[AT_NSPECIAL] = 120;
			move_cooldown[AT_NSPECIAL_2] = 120;
		}
	}
}

if (attack == AT_NSPECIAL_2)
{
	if (window == 2) 
	{
		{
		uspec_meter = 0;
			move_cooldown[AT_NSPECIAL] = 120;
			move_cooldown[AT_NSPECIAL_2] = 120;
		}
	}
}

//Im not responsible for short cooldown issues c:

if attack == AT_FSPECIAL and window = 2 and window_timer = 1 {
move_cooldown[AT_FSPECIAL] = 50
}

if attack == AT_TAUNT {
move_cooldown[AT_TAUNT] = 20
}

if attack == AT_DSPECIAL and window = 3 and window_timer = 1 {
move_cooldown[AT_DSPECIAL] = 110
}

if attack == AT_UAIR and window = 2 and window_timer = 1 {
move_cooldown[AT_UAIR] = 20
}

if attack == AT_DAIR and window = 8 and window_timer = 1 {
move_cooldown[AT_DAIR] = 120
move_cooldown[AT_DATTACK] = 120
}


//Up air Throw

if (attack == AT_UAIR) {
	can_fast_fall = false;
	
    if (window == 2 && has_hit_player == true && hitpause == false) {
        window = 4;
        window_timer = 1;
    }
    
    if (window == 3 && has_hit_player == false && hitpause == false) {
        window = 6;
        window_timer = 1;
    }
}


//TEST NUMBER SOMETHING
if (attack == AT_USPECIAL && window < 3 ){
  air_accel = 0.15;
}
else{
  air_accel = 0.35;
}
//TEST NUMBER SOMETHING 2
if (attack == AT_FAIR && window < 2 && (state == PS_ATTACK_AIR)){
  air_accel = 0.30;
}
else{
  air_accel = 0.35;
}

//WEE FSPECIAL
if (attack == AT_FSPECIAL ) && (has_hit=true){
	if  window == 7 && window_timer == 1 && special_down{
		sound_play(asset_get("sfx_swipe_medium2"));
		hsp = 9 * spr_dir;
		vsp = -6.5
		move_cooldown[AT_FSPECIAL] = 90
		fspec_cancel = 1
	}
	if window == 1{
		fspec_cancel = 0
	}
}

if (attack == AT_FSPECIAL && window > 7){
		if fspec_cancel = 1{
		can_jump = true;
		can_shield = true;
		can_attack = true;
		if is_special_pressed( DIR_UP ){
			set_attack( AT_USPECIAL );
		}
	}
}
//Stinger Multipress
if (attack == AT_DATTACK) {
	if window == 1{
		set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 4);
	}
	if window == 2{
		if attack_pressed {
			set_attack_value(AT_DATTACK, AG_NUM_WINDOWS, 14);
		window = 5;
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
		spawn_hit_fx( x + 10*spr_dir, y + -20, 306);
		if (caleb==1){
			sound_play(sound_get("maniatic_laugh"));
		}
		if (machina==1){
		sound_play(sound_get("machina_furious_blades_burst_3"));
			}
		}
	}
	if window == 11 && attack_pressed {
		window = 5;
	}
	if window == 7 && window_timer = 8 {
		window = 12;
	}
	if window == 9 && window_timer = 8 {
		window = 12;
	}
	
	if window == 11 && window_timer = 8 {
		window = 12;
	
		
	}
}

if (attack == AT_DAIR){
    if (window < 5 && state_timer % 4 == 0){
      	instance_create(x , y, "obj_article1");
    }
}
if (attack == AT_DATTACK){
    if (window < 4 && window > 1 && state_timer % 3 == 0) or (window < 13 && window > 4 && state_timer % 3 == 0){
      	instance_create(x , y, "obj_article2");
      	
    }
}
if (attack == AT_BAIR){
    can_wall_jump = true
}
if (attack == AT_FAIR){
    can_wall_jump = true
}

//Down Air Fall
if (attack == AT_DAIR) {
		can_fast_fall = false;
		can_jump = false;
		can_shield = false;
	
	if window < 4 && (has_hit){
		can_jump = true;
		can_shield = true;
	}
	
	if window == 3{
	if vsp = 0 && hitpause = 0 {
		window = 4;
		}
	}
	if window == 4{
		can_jump = true;
		can_shield = true;
	}	
	
	if window == 6 {
		window = 9;
		
	}
	if window == 5 && window_timer == 1 {
		sound_play(asset_get("sfx_shovel_hit_heavy2"));
		destroy_hitboxes();
		can_jump = false;
		can_shield = false;
		shake_camera(8,4)
	}	
}
//Down Air Throw
if (attack == AT_DAIR) {
	if window == 2 && window_timer > 1{
		if attack_pressed or down_strong_pressed{
		window = 6;
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
		spawn_hit_fx( x + 10*spr_dir, y + -20, 254);
		if (caleb==1){
			sound_play(sound_get("maniatic_laugh"));
		}
		if (machina==1){
		sound_play(sound_get("machina_brv_attack"));
		}
	}
	}
}

//EXTRA_1 stick? (wtf) 
if (attack == AT_EXTRA_1) {
	if window == 3 && window_timer >= 4{
		if right_strong_pressed * spr_dir or left_strong_pressed * -spr_dir{
		window = 4;
		}
	}
	if window == 6 && window_timer >= 1{
		if right_strong_pressed * spr_dir or left_strong_pressed * -spr_dir{
		window = 7;
		}
	}
}


if (attack == AT_JAB) {
	if window == 3 && window_timer == 9{
		window = 12;
		set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 13);
	}
}


if (attack == AT_JAB) {
	if window < 4{
		if special_pressed {
		window = 6;
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
		spawn_hit_fx( x + 10*spr_dir, y + -20, 306);
		set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 27);
		}
	}
}

if (attack == AT_JAB){
	if window == 1 && window_timer == 1 {
		set_window_value(AT_JAB, 13, AG_WINDOW_LENGTH, 13);
		set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 13);
	}
	if window == 5 && window_timer == 12 {
		window = 13;
		set_window_value(AT_JAB, 13, AG_WINDOW_LENGTH, 9);
		set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 13);
	}
	//if window <= 3{
		//if right_strong_pressed * spr_dir or left_strong_pressed * -spr_dir{
			//set_attack( AT_EXTRA_1 );
		//}
	//}
}

if (attack == AT_EXTRA_1){
	if window == 6 && window_timer == 9{
		window = 10;
	}
}
if (attack == AT_JAB){
	if window >= 9 && has_hit=true{
		can_jump=true;
		can_ustrong=true;
	}
}


//DYNAMITE ANGLED

if (attack == AT_DSPECIAL) {
		
    if window == 1 {
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 4);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -5);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .4);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 70);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
    }
    	
    if window > 2 {
    	
    	if left_down * spr_dir  {
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .9);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 80);
    	}
    		
    	if right_down * spr_dir {
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -5);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .9);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
    		
    	}
    	
    	if left_down * -spr_dir  {
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 7);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -5);
            set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .9);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 60);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 10);
    	}
    		
    	if right_down * -spr_dir {
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 2);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -10);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .9);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 80);
    		
    	}
    	
    	if up_down {
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_HSPEED, 0);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_VSPEED, -12);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_ANIM_SPEED, .3);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_ANGLE, 90);
    		set_hitbox_value(AT_DSPECIAL, 1, HG_BASE_KNOCKBACK, 11);
    	}
    	
        
    }

    
}




//CALEB TIME
if(caleb==1){
	if(attack==AT_BAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("amateurs"));}
	if(attack==AT_UAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("not_for_long"));}
	if(attack==AT_DSTRONG)&&(window==2)&&(window_timer==1){sound_play(sound_get("maniatic_laugh"));}
	if(attack==AT_FSTRONG)&&(window==1)&&(window_timer==1){sound_play(sound_get("fool_you_were_already_dead"));}
	if(attack==AT_NSPECIAL)&&(window==1)&&(window_timer==1){sound_play(sound_get("laugh"));}
	if(attack==AT_NSPECIAL_2)&&(window==1)&&(window_timer==1){sound_play(sound_get("laugh"));}
	if(attack==AT_USTRONG)&&(window==2)&&(window_timer==1){sound_play(sound_get("RIP"));}
	if(attack==AT_EXTRA_1)&&(window==1)&&(window_timer==1){sound_play(sound_get("open_for_bussiness"));}
	if(attack==AT_UTILT)&&(window==1)&&(window_timer==1){sound_play(sound_get("hahahaha"));}
	if(attack==AT_DATTACK)&&(window==1)&&(window_timer==2){sound_play(sound_get("laugh2"));}
	if(attack==AT_DTILT)&&(window==1)&&(window_timer==1){sound_play(sound_get("nevermore"));}
	if(attack==AT_FAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("hehehe"));}
	if(attack==AT_NAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("who_wants_some"));}
	if(attack==AT_DAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("laugh"));}
	if(attack==AT_JAB)&&(window==1)&&(window_timer==1){sound_play(sound_get("ugh"));}
	if(attack==AT_JAB)&&(window==4)&&(window_timer==1){sound_play(sound_get("leftovers"));}
	if(attack==AT_JAB)&&(window==7)&&(window_timer==1){sound_play(sound_get("maniatic_laugh"));}
	if(attack==AT_DSPECIAL)&&(window==1)&&(window_timer==1){sound_play(sound_get("must_pay"));}
	if(attack==AT_FSPECIAL)&&(window==1)&&(window_timer==1){sound_play(sound_get("huh"));}
}
//MACHINA TIME
if(machina==1){
	if(attack==AT_BAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_cyclone_drive"));}
	if(attack==AT_UAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_brv_attack"));}
	if(attack==AT_DSTRONG)&&(window==2)&&(window_timer==1){sound_play(sound_get("machina_spiral_lynchpin"));}
	if(attack==AT_FSTRONG)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_light_of_the_future_5"));}
	if(attack==AT_NSPECIAL)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_light_of_the_future_1"));}
	if(attack==AT_NSPECIAL_2)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_light_of_the_future_1"));}
	if(attack==AT_USTRONG)&&(window==2)&&(window_timer==1){sound_play(sound_get("machina_furious_blades_burst_2"));}
	if(attack==AT_EXTRA_1)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_stunning_slash"));}
	if(attack==AT_UTILT)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_light_of_the_future_2"));}
	if(attack==AT_DATTACK)&&(window==1)&&(window_timer==2){sound_play(sound_get("machina_furious_blades_burst_1"));}
	if(attack==AT_FAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_awakening_longer"));}
	if(attack==AT_NAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_furious_blades"));}
	if(attack==AT_DAIR)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_light_of_the_future_1"));}
	if(attack==AT_JAB)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_brv_attack"));}
	if(attack==AT_JAB)&&(window==4)&&(window_timer==1){sound_play(sound_get("machina_awakening_longer"));}
	if(attack==AT_JAB)&&(window==7)&&(window_timer==1){sound_play(sound_get("machina_light_of_the_future_5"));}
	if(attack==AT_DSPECIAL)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_awakening"));}
	if(attack==AT_FSPECIAL)&&(window==1)&&(window_timer==1){sound_play(sound_get("machina_brv_attack"));}
}