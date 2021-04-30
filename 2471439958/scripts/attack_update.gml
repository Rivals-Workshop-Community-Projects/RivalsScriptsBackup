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
move_cooldown[AT_DSPECIAL] = 70
}

if attack == AT_UAIR and window = 2 and window_timer = 1 {
move_cooldown[AT_UAIR] = 20
}

if attack == AT_DAIR and window = 7 and window_timer = 1 {
move_cooldown[AT_DAIR] = 150
move_cooldown[AT_DATTACK] = 150
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


//Stinger Multipress
if (attack == AT_DATTACK) {
	if window == 3{
		if attack_pressed {
		window = 5;
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
		spawn_hit_fx( x + 10*spr_dir, y + -20, 306);
		if (caleb==1){
			sound_play(sound_get("maniatic_laugh"));
	}
		}
	}
	
	if window == 4 && window_timer == 20 {
		window = 14;
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
    if (window < 4 && state_timer % 4 == 0){
      	instance_create(x , y, "obj_article1");
    }
}
if (attack == AT_DATTACK){
    if (window < 14 && window > 1 && state_timer % 3 == 0){
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
	
	if window == 3 {
		if window_timer == 7 {
		window_timer = 1;
		}
		if window_timer > 1 {
		can_jump = false;
		can_shield = false;
		}
		if !hitpause {
		window_timer = 2;
		}
		if vsp = 0 && hitpause = 0 {
		window_timer = 8;
		}
	}
	if window == 5 {
		window = 8;
		
	}
	if window == 4 && window_timer == 1 {
		sound_play(asset_get("sfx_shovel_hit_heavy2"));
		destroy_hitboxes();
		camera_shake = 1;
	}	
}
//Down Air Throw
if (attack == AT_DAIR) {
	if window == 2{
		if attack_pressed or down_strong_pressed{
		window = 5;
		sound_play(asset_get("sfx_frog_fspecial_charge_gained_2"));
		spawn_hit_fx( x + 10*spr_dir, y + -20, 306);
		if (caleb==1){
			sound_play(sound_get("maniatic_laugh"));
	}
	}
}
}
//Ftilt stick? (wtf) 
if (attack == AT_FTILT) {
	if window == 3 && window_timer >= 1{
		if right_strong_pressed * spr_dir or left_strong_pressed * -spr_dir{
		window = 4;
		sound_play(asset_get("sfx_swipe_medium1"));
	}
	}
	if window == 5 && window_timer >= 1{
		if right_strong_pressed * spr_dir or left_strong_pressed * -spr_dir{
		window = 6;
		sound_play(asset_get("sfx_swipe_heavy2"));
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
	if window == 5 && window_timer == 16 {
		window = 13;
		set_window_value(AT_JAB, 13, AG_WINDOW_ANIM_FRAME_START, 13);
	}
}

if (attack == AT_FTILT){
	if window == 5 && window_timer == 8{
		window = 10;
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
	if(attack==AT_FTILT)&&(window==1)&&(window_timer==1){sound_play(sound_get("open_for_bussiness"));}
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