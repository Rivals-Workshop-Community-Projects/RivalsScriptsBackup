//B - Reversals
switch(attack){
	case AT_NSPECIAL:
	case AT_FSPECIAL:
	case AT_DSPECIAL:
	case AT_USPECIAL:
		trigger_b_reverse();
		break;
}

if Fcancel >1{
	Fcancel-=1;
}


// per-attack logic

switch(attack){
	
	// give your moves some "pop" by spawning dust during them!
	
	case AT_JAB:
		was_parried = false; // easy method for single-hit jabs
		break;
	case AT_FTILT:
		break;
	case AT_DTILT:
		break;

	case AT_DAIR:
			can_fast_fall = false;
			if window == 1{
				hsp *= .95;
				vsp *= .75;
			}
			//Ori Dair Logic
			if state_timer < 15 && down_down {
				fall_through = true;
			} else {
				fall_through = false;
			}
			if window == 2{
				can_jump = Fcancel;
				can_shield = Fcancel;
				can_wall_jump = true;
				if !free{
					window = 4;
					window_timer = 0;
					destroy_hitboxes();
					Fcancel=0;
				}
				if has_hit && !hitpause{
					window = 3;
					window_timer = 0;
				}
			}

			if window == 3{
				can_wall_jump = true;
				if left_down{hsp-=0.25;}
				if right_down{hsp+=0.25;}
				if !free{
					window = 4;
					Fcancel=0;
					window_timer = 0;
					spawn_hit_fx(x,y-28, 154 );
					destroy_hitboxes();
				}
				if state_timer >= 28 && free{
					can_shield = (Fcancel==1);
					can_jump =(Fcancel==1);
				} 
				if state_timer == 28 {
					Fcancel=4;
					sound_stop(sound_get("jingle"));
					sound_play(sound_get("jingle"));
				}
			}
			break;	
	case AT_UTILT:
		if window ==2{
			if window_timer==7{
				contador+=1;
				attack_end();
			}
			if contador ==1{
				set_num_hitboxes(AT_UTILT,3);
			}
			if contador>1{
				contador = 0;
				window=3;
				window_timer=0;
				spawn_hit_fx(x,y-56, 154 );
			}
		}
		break;
	case AT_FSTRONG:
		can_fast_fall = false;
		if boost_timer >18{
			boost_timer = -1;
		}
		if boost_timer != -1{ 
			boost_timer+=1;
		} 
		if window==2 && window_timer ==1 {
			sound_play(sound_get("Withdraw"));
		}

		if window == 4 && free {
			move_cooldown[AT_FSTRONG]= 12;
		}
		
		break;
	case AT_USTRONG:
		if window == 4 && free {
			move_cooldown[AT_USTRONG]= 12;
		}
		break;
	
	case AT_NSPECIAL:
		fall_through = true;
		if window == 1{
			if window_timer == 5{
				vsp =0;
			}
		}
		if window == 2 {
			can_fast_fall = false;
			can_wall_jump =true;
			can_shield = true;
			if special_down && window_timer ==4 {
				window_timer =3;
			} else{
				set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
			}
			//Movement
			if (!joy_pad_idle){
				hsp += lengthdir_x(1.25, joy_dir);
				vsp += lengthdir_y(1.25, joy_dir);
			} else {
				hsp *= .6;
				vsp *= .6;
			}
			hsp = clamp(hsp, -2,2);
			vsp = clamp(vsp, -2,2);


			//MAX CHARGE
			if state_timer >= 36 && window_timer <=4 {	
				set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 5);
				window = 4;
				window_timer = 0;
			}
		}
		if window == 3{
			set_attack_value(AT_NSPECIAL, AG_NUM_WINDOWS, 3);
			move_cooldown[AT_NSPECIAL] = 12;
			if window_timer == 1 {set_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED, get_window_value(AT_NSPECIAL, 3, AG_WINDOW_VSPEED)+0.5);}
		}
		if window == 4{
			can_fast_fall = false;
			can_shield=false;
			can_jump=false;
			//Movement
			if (!joy_pad_idle){
				hsp += lengthdir_x(1, joy_dir);
				vsp += lengthdir_y(1, joy_dir);
			} else {
				hsp *= .8;
				vsp *= .6;
			}
			hsp = clamp(hsp, -1.5,1.5);
			vsp = clamp(vsp, -1.5,1.5);
		}
		if window ==5 {
			if window_timer ==get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)/2-6{
				create_hitbox( AT_NSPECIAL, 1, x +40 , y-76 );					
			}																	
			if window_timer ==get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)/2-5{
				create_hitbox( AT_NSPECIAL, 1, x -40 , y-76 );					
			}
			if window_timer ==get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)/2-4{
				create_hitbox( AT_NSPECIAL, 1, x +40 , y +4 );					
			}
			if window_timer ==get_window_value(AT_NSPECIAL, 5, AG_WINDOW_LENGTH)/2-3{
				create_hitbox( AT_NSPECIAL, 1, x -40 , y +4);					
			}
			move_cooldown[AT_NSPECIAL] = 18;
		}
	
	break;
	case AT_FSPECIAL:
		can_move = true;

		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		switch(window){
			case 1:
				if window_timer == 14{
					vsp =0;
				}
				break;
			case 2:
				can_jump = (Fcancel==1);
				can_shield = (Fcancel==1);
				if window_timer == get_window_value(AT_FSPECIAL, 2, AG_WINDOW_LENGTH)-1{
					if !hitpause{contador+=1;}
					spawn_hit_fx(x+44*spr_dir,y-32, 3 );
					attack_end();
					//can_shield = true;
				}
				if contador >3 {set_num_hitboxes(AT_FSPECIAL, 3);}
				if contador >4 || was_parried{
					contador = 0;
					sound_stop(sound_get("Heat Wave"));
					window = 3;
					window_timer = 0;
					Fcancel=0;

					//sound_play(asset_get("mfx_timertick2"));
				}		
				//Movement
				if (!joy_pad_idle){
					hsp += lengthdir_x(1.2, joy_dir);
					vsp += lengthdir_y(1.2, joy_dir);
				} else {
					hsp *= .8;
					vsp *= .6;
				}
				hsp = clamp(hsp, -3.2,3.2);
				vsp = clamp(vsp, -2,2);
				//Snap to ledge
				if (place_meeting(x + hsp, y , asset_get("par_block")) && free){
					for (var i = 1; i < 16; i++){
						if (!place_meeting(x + hsp, y  - i ,asset_get("par_block")))  {
							y -= i;
							break;
						 }
					}
			    }   

				break;
			case 3:
				break;
		}
		break;
	
	
	
	case AT_USPECIAL:
		can_move = false;
		can_fast_fall = false;
		can_wall_jump = true;
		fall_through = true;
		switch(window){
			case 1: // Startup
				if window_timer <=8	{			//Can AIM
					if (!joy_pad_idle){
						if arrow_cooldown == 0{
							if (joy_dir >345 && joy_dir <=360)|| (joy_dir >=0 && joy_dir <=15){
								arrow =0;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 4.25*spr_dir);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
							} else if   joy_dir >15 && joy_dir <= 75{
								arrow =1;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 3.8*spr_dir);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -3.8);
							} else if   joy_dir >75 && joy_dir <= 105{
								arrow =2;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -4.5);
							} else if   joy_dir >105 && joy_dir <= 165{
								arrow =3;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -3.8*spr_dir);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, -3.8);
							} else if   joy_dir >165 && joy_dir <= 195{
								arrow =4;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -4.25*spr_dir);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 0);
							} else if   joy_dir >195 && joy_dir <= 255{
								arrow =5;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, -3.8*spr_dir);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 3.8);
							} else if   joy_dir >255 && joy_dir <= 285{
								arrow =6;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 0);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 4.25);
							} else if   joy_dir >285 && joy_dir <= 345{
								arrow =7;
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, 3.8*spr_dir);
								set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, 3.8);
							}
							arrow_cooldown= 4;
						}
					} 
					if arrow_cooldown >0 {
						arrow_cooldown-=1;
					}
					if special_down && window_timer ==8 && state_timer <=14{
						window_timer =7;
					}
				} 

				if absorb == 3 {
					spawn_hit_fx(x,y-32, 154 );
					sound_play(asset_get("sfx_forsburn_consume"));
					set_hitbox_value(AT_USPECIAL, 1, HG_BASE_KNOCKBACK, 9.5);
					set_hitbox_value(AT_USPECIAL, 2, HG_BASE_KNOCKBACK, 9.5);
					absorb = 2;
				}

				break;
			case 2: // Movement

					if absorb ==2 {
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED, get_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED)*1.45); 
						set_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED, get_window_value(AT_USPECIAL, 2, AG_WINDOW_HSPEED)*1.45); 

						absorb = 1;
					}
				
				if window_timer == get_window_value(AT_USPECIAL, 2, AG_WINDOW_LENGTH)-1{

					contador+=1;
					attack_end();
				}

				//Snap to ledge
				if (place_meeting(x + hsp, y , asset_get("par_block")) && free) &&  get_window_value(AT_USPECIAL, 2, AG_WINDOW_VSPEED)==0 {
					for (var i = 1; i < 32; i++){
						if (!place_meeting(x + hsp, y  - i ,asset_get("par_block")))  {
							y -= i;
							break;
						 }
					}
			    }      
				if contador >4 {
					contador = 0;
					window = 3;
					spawn_hit_fx( x , y-36, 154 );
					window_timer = 0;
				}
				break;
		}
		break;
	
	
	
	case AT_DSPECIAL:
		fall_through = true;
		//if hit_check == noone {hit_check = instance_place(x,y-30,pHitBox);}
		//else{soft_armor=0;}
		
		if window == 1{
			can_wall_jump = true;
			if window_timer == 7{
				vsp =0;
			}
		}

		if window == 2 {
			can_shield = true;
			can_wall_jump = true;
			//if taunt_pressed{set_attack(AT_TAUNT);}
			if window_timer == get_window_value(AT_DSPECIAL, 2, AG_WINDOW_LENGTH)-1{
				contador+=1;
			}
			if contador >3 {
				contador = 0;
				window = 3;
				window_timer = 0;
				sound_play(asset_get("mfx_timertick2"));
			}		
			//Movement
			if (!joy_pad_idle){
				hsp += lengthdir_x(1.2, joy_dir);
				vsp += lengthdir_y(1.2, joy_dir);
			} else {
				hsp *= .8;
				vsp *= .6;
			}
			hsp = clamp(hsp, -1.5,1.5);
			vsp = clamp(vsp, -1.5,1.5);
		}
		if window == 3 {
			can_wall_jump = false
			can_shield = false;
			if up_down{vsp = - 5;}
			if down_down{vsp = 5;}
			if window_timer == get_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH)-1{
				contador+=1;
			}
			if contador >1 {
				contador = 0;
				window = 4;
				window_timer = 0;
				take_damage(player, -1, 15);
				spawn_hit_fx( x , y-32, 143 );
				//outline_color = [250,0,0];
			}	
			//Movement
			if (!joy_pad_idle){
				hsp += lengthdir_x(1.35, joy_dir);
				vsp += lengthdir_y(1.35, joy_dir);
			} else {
				hsp *= .8;
				vsp *= .6;
			}
			hsp = clamp(hsp, -2.75,2.75);
			vsp = clamp(vsp, -2.75,2.75);

				if (place_meeting(x + hsp, y , asset_get("par_block")) && free){
					for (var i = 1; i < 16; i++){
						if (!place_meeting(x + hsp, y  - i ,asset_get("par_block")))  {
							y -= i;
							break;
						 }
					}
			    }   
			
		}
		if window == 4{
			soft_armor=0;
			if has_hit {
				destroy_hitboxes();
			}
		}
		/*
		if window>=4{
			can_jump = (Fcancel==1);
			can_shield = (Fcancel==1);
		}
		*/
		can_fast_fall = false;
		can_move = true;
		break;
	

	case AT_TAUNT:
		if window == 1 {	
			sprite_change_offset("taunt_2", 22+floor( sin(state_timer/10)*4), 62);
			if window_timer == 17{
				contador++;
			}
			if contador == 1 {
				window=2;
				spawn_hit_fx( x , y-32, 143 );
				//spawn_hit_fx( x +200 , y-60, 3 );
				sound_play(sound_get("tauntxd"));
				sprite_change_offset("taunt_2", 22, 62);
				window_timer = 5;
			}
		}
		if window == 2 {	
			if taunt_down && window_timer ==20{
				window_timer =19;
			}

		}
		if window == 3{
			if window_timer==1{
				spawn_hit_fx( x , y-32, 154 );
			}
		}
		if window>=2{
			can_jump = (Fcancel==1);
			can_shield = (Fcancel==1);
		}

	break;
	

}

if attack == AT_JAB  {
	can_move = true;
	if left_down { hsp-=0.75;}
	if right_down {hsp +=0.75;}
	hsp = clamp(hsp,-2,2);
} 

if attack == AT_FTILT  {
	can_move = true;
	if left_down { hsp-=0.75;}
	if right_down {hsp +=0.75;}
	hsp = clamp(hsp,-3,3);
} 

if attack == AT_UTILT {
	can_move = true;
	if left_down { hsp-=0.75;}
	if right_down {hsp +=0.75;}
	hsp = clamp(hsp,-3,3);
} 


//Pratfall for Strongs
/*
if attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG{
	if window == 4 && free{
		set_window_value(attack, 4, AG_WINDOW_TYPE, 7);
	}else {
		set_window_value(attack, 4, AG_WINDOW_TYPE, 1);
	}
	can_fast_fall = false;
}
*/


if attack == AT_DSTRONG  {
	if window>=3{
		can_jump = (Fcancel==1);
		can_shield = (Fcancel==1);
	}

	if window == 4 && window_timer ==4 {
		spawn_hit_fx(x+ 36,y-12, 3);
		spawn_hit_fx(x- 36,y-12, 3);
	}
	if free{
		attack_end();
		destroy_hitboxes();
		attack = AT_DSTRONG_2;
		hurtboxID.sprite_index = get_attack_value(AT_DSTRONG_2, AG_HURTBOX_SPRITE);
	}

	
}

if attack == AT_DSTRONG_2 {
	if window>=3{
		can_jump = (Fcancel==1);
		can_shield = (Fcancel==1);
	}
	if window == 4 && window_timer ==4 {
		spawn_hit_fx(x,y-8, 3);
	}
	if !free && window == 3{
		attack_end();
		destroy_hitboxes();
		attack = AT_DSTRONG;
		hurtboxID.sprite_index = get_attack_value(AT_DSTRONG, AG_HURTBOX_SPRITE);
		window_timer = 0;
		sound_play(asset_get("sfx_zetter_fireball_fire"));

	}
	if window == 4 && free {
		move_cooldown[AT_DSTRONG_2]= 12;
		move_cooldown[AT_DSTRONG]= 12;
	}
}


if attack == AT_USTRONG && window > 1 {
hud_offset = 124;
}

if ( attack == AT_UTILT)  && window ==2  {
hud_offset = 32;
}
if ( attack == AT_UAIR)  && window ==2  {
hud_offset = 24;
}

if (attack == AT_NAIR)  && window ==2  {
	hud_offset = 16;
	can_jump = (Fcancel==1);
	can_shield = (Fcancel==1);
}

if (attack == AT_DAIR)  && window ==2  {
hud_offset = 34;
}

if (attack == AT_BAIR)  && window ==2  {
hud_offset = 12;
}

if attack == AT_BAIR && window== 1 && window_timer == 12{
	sound_play(asset_get("sfx_ell_steam_hit"));
}


//smoke dissappears
if (attack == AT_BAIR)  && window ==2 && window_timer == 5 && !hitpause  {
	spawn_hit_fx(x-52*spr_dir,y-36, 154 );
}

if (attack == AT_DATTACK)  && window ==2 && window_timer == 9 && !hitpause  {
	spawn_hit_fx(x+52*spr_dir,y-30, 154 );
}

if (attack == AT_JAB)  && window ==2 && window_timer == 8 && !hitpause  {
	spawn_hit_fx(x+48*spr_dir,y-32, 154 );
}

if attack == AT_NSPECIAL  && window ==2 && window_timer == 5 && !hitpause {
	spawn_hit_fx(x,y-32, 154 );
}

if attack == AT_NSPECIAL  && window ==5 && window_timer == 5 && !hitpause {
	spawn_hit_fx(x,y-32, 154 );
}




if (attack == AT_USPECIAL)  {
hud_offset = 24;
}


if (attack == AT_DSPECIAL)|| attack == AT_NSPECIAL   {
hud_offset = 44;
}