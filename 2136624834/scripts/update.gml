///Intro

if !instance_exists(hit_player_obj){

hit_player_obj = self

}




if state != PS_ATTACK_AIR and state != PS_ATTACK_GROUND {
	 	uspechit = 0
   attacking = 0
	
}else {
	attacking = 1
}

if !hitpause {
   snox += floor(((x-44*spr_dir)-snox)/5)
   if (attacking and attack != AT_NSPECIAL) or !attacking {
   snoy += floor((y-56-snoy)/5)
   }
   if attacking and attack == AT_NSPECIAL {
   	snoy += floor((y-snoy)/5)
   }
}

if get_gameplay_time() < 36 {
	
visible = false	
draw_indicator = false
}


if get_gameplay_time() = 36 {
	
visible = true
draw_indicator = true
sound_play(sound_get("timestop"),false, noone, 2);
spawn_hit_fx( x, y , darken )	
}



if(get_gameplay_time() == 1){

inx = x
iny = y
	
}

if(get_gameplay_time() == 2){
	

var shortest_dist = 9999;
			var shortest_id = noone;
			
			with (asset_get("oPlayer")) {
				if (player != other.player) {
					var curr_dist = point_distance(x,y,other.x,other.y);
					if (curr_dist < shortest_dist) {
						shortest_dist = curr_dist;
						shortest_id = id;
					}
				}
			}
			
if x < shortest_id.x {			
if shortest_id.url == "1913869515" or shortest_id.url == "2069283406" or shortest_id.url == "1997619532" 
or shortest_id.url == "2085832560" or shortest_id.url == "2108469290" or shortest_id.url == "2047413648"
or shortest_id.url == "2154720280" or shortest_id.url == "2136624834"
{
create_hitbox(AT_NSPECIAL , 20 , shortest_id.x , shortest_id.y );      		
}
}


}


if hit_player_obj != self {
if introtimer = 1 {
	        visible = true
		  spawn_hit_fx( x, y, lighten)
	x = inx + (80 * introhit)
	y = iny
	introtimer = 0
	hitpause = 0
	spawn_hit_fx( x, y, 306)
	if introhit = 1 {
		sound_play(asset_get("sfx_abyss_explosion"),false, noone, );
		sound_play(sound_get("timestop"),false, noone, 2);
		hsp = -8
		vsp = 0
		spr_dir = 1
	}
	
	if introhit = -1 {
		hsp = 8
	    vsp = 0
		spr_dir = -1
	}
}

	

if intro = 1 && instance_number(oPlayer) == 2{

if (hit_player_obj.url == "1913869515" or hit_player_obj.url == "2069283406" or hit_player_obj.url == "1997619532" 
or hit_player_obj.url == "2085832560" or hit_player_obj.url == "2108469290" or hit_player_obj.url == "2047413648"
or hit_player_obj.url == "2154720280" or hit_player_obj.url == "2136624834")
&&  hit_player_obj.introtimer != 0{

take_damage( player, -1 , -1 )	
	/// Zetta Alex Mayu Katie Saji Uza Nolan Elice
if introtimer = -1{
	introtimer = 300
	
}

if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x, y , tauntpar1 )
}
        
if state != PS_DOUBLE_JUMP && introtimer > 1  {
	set_state (PS_DOUBLE_JUMP )
}

if get_gameplay_time() % 10 == 0 {
        spr_dir *= -1
}

	if get_gameplay_time() % 40 < 20 && introtimer > 1 {
				visible = 0
	}
	if get_gameplay_time() % 40 > 20 && introtimer > 1 {
				visible = true
	}

if introhit == 1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) {
	  sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);	
	  sound_play(sound_get("RI"),false, noone, 0.8);
	  spawn_hit_fx( x, y, lighten)
	}
	if get_gameplay_time() % 20 = 10 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("sfx_blow_medium1"),false, noone, 0.6);
		sound_play(asset_get("sfx_quick_dodge"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 15 {
		spawn_hit_fx( x, y, 305)
		sound_play(asset_get("sfx_ice_shatter"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 20 {
		spawn_hit_fx( x, y, 304)
		sound_play(sound_get("RI"),false, noone, 0.6);
	}
}


if introhit == -1 {
	if get_gameplay_time() % 20 = random_func(10, 20, true) - 10 {
		  sound_play(asset_get("sfx_roll"),false, noone, 0.6);	

	}
	if get_gameplay_time() % 20 = 0 {
		spawn_hit_fx( x, y, 302)
		sound_play(asset_get("sfx_blow_medium1"),false, noone, 0.6);
		sound_play(asset_get("sfx_roll"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 30 = 0 {
		spawn_hit_fx( x, y, 305)
		sound_play(asset_get("sfx_ice_shatter"),false, noone, 0.6);
	}
	
	if get_gameplay_time() % 40 = 0 {
visible *= -1
draw_indicator *= -1			
		spawn_hit_fx( x, y, 304)
		sound_play(sound_get("RI"),false, noone, 0.6);
	}
}

if get_gameplay_time() % 2 = 0 && introtimer > 1 {
	if get_gameplay_time() % 40 = 0 {

	   sound_play(sound_get("timeresume"));
	   	  spawn_hit_fx( x, y , darken )	
	}
	vsp = -8
x = (room_width/2  + 100  - random_func(1, 200, true))
y = (room_height/2  - 80  - random_func(2, 160, true))
}

if introtimer > 0 {
	
		 with (asset_get("oPlayer")) {
	if (player != other.player) {
		
		if hitpause {
		with (asset_get("pHitBox")) {
        if player_id == other.id {
          destroyed = true;
        }
    }
	}
    
    
	}
	
   }
   
				with (asset_get("pHitBox")) {
if(player_id == other.id) {
    destroyed = true;
}
			}
	introtimer -= 1
	
	
	 if introhit = -1 {
	if get_gameplay_time() % 3 = 0 {
		spawn_hit_fx( x, y , darken )	
	}
	}
}

}

}
}



/// TAAHHHHH

if timefreeze < 0 {
	timefreeze = 0
}

if timestop < 0 {
	timestop = 0
}

if hit_player_obj.state == PS_RESPAWN && hit_player_obj.state_timer == 1 {
	
timestop += 14
 
}


if state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_AIR_DODGE{
	if state_timer == 1 {
		  sound_play(asset_get("sfx_ice_on_player"));
	}
	
	if state_timer == 15 {
		  sound_play(asset_get("sfx_ice_shatter"));
	}
}

if fstronghit > 0 {
	fstronghit -= 1
}

set_victory_theme(sound_get("Drak"));

if timestop < 100 and move_cooldown[AT_DSPECIAL] < 5  {
	move_cooldown[AT_DSPECIAL] = 5
}

if timestop > 100 or timestop < 100 && timestop > 95 {
		sound_play(sound_get("RI2"));
	timestop = 100
	spawn_hit_fx( x - (10 * spr_dir) , y - 40 , 306 )
}

if get_gameplay_time() < 10 {
	timefreeze = 0
}

if !free or state == PS_WALL_JUMP {
    move_cooldown[AT_USPECIAL] = 0
    move_cooldown[AT_FSPECIAL] = 0
}

if state == PS_WALL_JUMP && state_timer == 3 {
	
	has_walljump = false
	set_attack (AT_USPECIAL)
	window = 5
	window_timer = 0
	hsp = 0
	vsp -= 6
	sound_play(asset_get("sfx_blow_medium2"));
	sound_play(asset_get("sfx_ori_bash_launch"));
}


if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD){
   
if state_timer == 1 {
    	sound_play(asset_get("sfx_quick_dodge"));
}
	 
	 if state_timer < 9{
	     hsp = -0.5 * spr_dir
	 }
	 
	 if state_timer >= 9 and state_timer < 12 {
	     hsp = -30 * spr_dir
	 }
	 if state_timer >= 4 and state_timer < 12 {
	     draw_indicator = false
	 }
	  
	 if state_timer > 12 {
	     hsp = 0
	     draw_indicator = true
	 }
	 
}

if state == PS_AIR_DODGE {
	
	if state_timer < 1{ 
	oldx = x
	oldy = y
	}
	 if state_timer < 9 and state_timer > 1{
	     x = oldx
	 }
	 
	  if state_timer < 9  and state_timer > 1{
	     y = oldy
	 }
	 
	  if state_timer >= 8 and state_timer < 15 {
	     draw_indicator = false
	 }
	 
	 if state_timer > 15 {
	     draw_indicator = true
	 }
	
}


if timefreeze <= 0 {
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 1);
	
	set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 1);
	move_cooldown[AT_FSTRONG] = 0
	
leave_ground_max = 8; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 8; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4.5;
air_accel = .25;
initial_dash_time = 12;
jump_speed = 11;
short_hop_speed = 7;
djump_speed = 10;
gravity_speed = .6;
max_fall = 8.5; //maximum fall speed without fastfalling
fast_fall = 12; 
jump_change = 3;
max_djumps = 1;

if state == PS_DASH_START or state == PS_DASH_STOP or state == PS_DASH_TURN{
    dash_speed = 6
    
    if state_timer == 1 {
    sound_play(sound_get("skating")); 
    }
}

if state == PS_DASH {
	
	
	if get_gameplay_time() % 3 == 0 {
        spawn_hit_fx( x - (20 * spr_dir) - random_func(1, 40, true) , y - 50 + random_func(2, 40, true) , tauntpar1 )
        }
        
        
	if get_gameplay_time() % 6 == 0 {
	    sound_play(sound_get("skating"));
	}
	
    if dash_speed < 9 {
    dash_speed += 0.2
}
}
}

if timefreeze > 2 {
	
	
	soft_armor = 9999
	set_attack_value(AT_DSTRONG, AG_STRONG_CHARGE_WINDOW, 90);
	set_attack_value(AT_USTRONG, AG_STRONG_CHARGE_WINDOW, 90);
	set_hitbox_value(AT_JAB, 1, HG_FORCE_FLINCH, 0);
	

	

	
	if state == PS_WALK or state == PS_DASH {
		
		if state_timer % 64 == 32 {
				sound_play(sound_get("fs1"), false, noone, 0.6);
		}
		
		if state_timer % 64 == 0 {
			sound_play(sound_get("fs2"), false, noone, 0.6);
		}
	}
	
	if state == PS_LAND or state == PS_LANDING_LAG && state_timer = 1 {
			sound_play(sound_get("fs2"), false, noone, 0.6);
	}
	
	if state == PS_JUMPSQUAT && state_timer = 1 {
			sound_play(sound_get("fs1"), false, noone, 0.8);
	}	
		
	if state == PS_PARRY_START {
		set_state (PS_DASH_START)
	}
	
	has_airdodge = false
	
	if timefreeze > 1 && timefreeze < 350 {
	suppress_stage_music( 0.2, 1 );	

	}
	
	timefreeze -= 1
	
     
     
     if get_gameplay_time() % 2 == 0 && timefreeze > 3{
	    create_hitbox(AT_USPECIAL , 5 , x, y );
	}
	
	
   
   

if get_gameplay_time() % 3 == 0 {
spawn_hit_fx( x - (40 * spr_dir) + (random_func(1, 80, true) * spr_dir) , y - 80 + random_func(2, 60, true) , tauntpar1 )
}


spawn_hit_fx( x - 150 + (random_func(6, 300, true)) , y - 200 + (random_func(7, 300, true)) , tauntpar1 )


max_djumps = 0;
leave_ground_max = 4; //the maximum hsp you can have when you go from grounded to aerial without jumping
max_jump_hsp = 4; //the maximum hsp you can have when jumping from the ground
air_max_speed = 4;
air_accel = .1;
jump_speed = 7;
short_hop_speed = 5;
djump_speed = 7;
gravity_speed = .2;
max_fall = 6; //maximum fall speed without fastfalling
fast_fall = 6; 
jump_change = 3;

	initial_dash_time = 0;
	dash_speed = 2.5;
}

if timefreeze > 1 && timefreeze < 40 && state != PS_AIR_DODGE && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && attack != AT_EXTRA_3 {
	set_state (PS_IDLE)
}



if timefreeze > 1 && timefreeze < 40 && state == PS_IDLE && attack != AT_EXTRA_3 {
	set_attack (AT_EXTRA_3)
	window = 6
	window_timer = 0
    sound_play(sound_get("timeresume"),false, noone, 2);
}


if timefreeze == 1 {
	suppress_stage_music( 1, 1 );
	timefreeze = 0
	
		create_hitbox(AT_USPECIAL , 2 , x, y );
	
	
	
	

   
}

///if hit_player_obj.state_cat == SC_HITSTUN  {
	

	//if  hit_player_obj.state == PS_HITSTUN && get_gameplay_time() % 2 == 0 {
     //spawn_hit_fx( hit_player_obj.x + 20 - random_func(1, 40, true) , hit_player_obj.y - 50 + random_func(2, 40, true) , tauntpar1 )

	//}
//}
///

if state == PS_LANDING_LAG{
	
	if state_timer < 6 {
	spawn_hit_fx( x + 50 - random_func(3, 100, true) , y - 40 + random_func(2, 40, true) , tauntpar1 )
	}
	
if attack == AT_FAIR {
    if window = 0{
        if hsp > 6 {
            hsp = 6
        }
        
        if hsp < -6 {
            hsp = -6
        }
    }
    
    if window == 3 {
        if window_timer == 1 {
            vsp = 0
        }
        
        hsp /= 1.2
    }
    
}

if attack == AT_BAIR {
    if window = 0{
        if hsp > 4 {
            hsp = 4
        }
        
        if hsp < -4 {
            hsp = -4
        }
    }
    
    if window == 3 {
        if window_timer == 1 {
            vsp = 0
        }
        
        hsp /= 1.2
    }
    
}
}

if timeinv > 120 {
	invincible = true
}

if hit_player_obj.url == "2136624834" {
if timeinv = -1 && hitpause && hit_player_obj.timefreeze > 1 && down_down && special_pressed && state_cat != SC_HITSTUN{
	set_attack (AT_EXTRA_3)
	window = 6
	window_timer = 10
	sound_play(sound_get("timestop"),false, noone, 2);
	sound_play(sound_get("RI"));
	spawn_hit_fx( x  , y - 40 , 306 )
	spawn_hit_fx( x  , y - 40 , 302 )
	timeinv = 120
	hit_player_obj.timefreeze += 60
}


if hit_player_obj.timefreeze < 1{
	timeinv = -1
}


if timeinv > 1{
	timeinv -= 1
}

if timeinv = 1 {
	sound_play(asset_get("sfx_ice_shatter"),false, noone, 2);
	spawn_hit_fx( x - (0 * spr_dir) , y - 40 , 304 )
	timeinv = 0
}
}



switch(get_player_color(player)) {
	case 1:
		timefreeze_color = timefreeze_kat;
		break;
	case 2:
		timefreeze_color = timefreeze_alec;
		break;
	case 3:
		timefreeze_color = timefreeze_yotaro;
		break;
	case 4:
		timefreeze_color = timefreeze_diiu;
		break;
	case 5:
		timefreeze_color = timefreeze_unnamed;
		break;
	default:
		timefreeze_color = timefreeze_default;
		break;
}

if get_player_color(player) == 4 {
	set_hitbox_value(AT_FSTRONG, 1, HG_PROJECTILE_SPRITE, sprite_get("icicle1d"));
	set_hitbox_value(AT_FSTRONG, 2, HG_PROJECTILE_SPRITE, sprite_get("icicle1d"));
	
	set_hitbox_value(AT_NSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("snowball1d"));
	set_hitbox_value(AT_NSPECIAL, 5, HG_PROJECTILE_SPRITE, sprite_get("snowball1d"));
	set_hitbox_value(AT_NSPECIAL, 7, HG_PROJECTILE_SPRITE, sprite_get("snowball1d"));
	set_hitbox_value(AT_NSPECIAL, 8, HG_PROJECTILE_SPRITE, sprite_get("snowball1d"));
	
	set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_SPRITE, sprite_get("snowball2d"));
	set_hitbox_value(AT_NSPECIAL, 6, HG_PROJECTILE_SPRITE, sprite_get("snowball2d"));
	set_hitbox_value(AT_NSPECIAL, 4, HG_PROJECTILE_SPRITE, sprite_get("snowball2d"));
	
	set_hitbox_value(AT_NSPECIAL, 3, HG_PROJECTILE_SPRITE, sprite_get("snowball3d"));
	
}

if up_down && attack_down && taunt_down && jump_down && timestop < 100{
	
	timestop = 101
	take_damage( player, -1 , 999 )
	
}

/// setstock 


if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 19;
    trummelcodecsprite1 = sprite_get("elice");
    trummelcodecsprite2 = sprite_get("elice");
    var page = 0;

    //Page 0
    trummelcodecspeaker[page] = 2; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "cool";
    trummelcodecline[page,2] = " ";
    trummelcodecline[page,3] = " ";
    trummelcodecline[page,4] = " ";
    page++;

    //Page 1
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 4; 

    trummelcodecline[page,1] = "A snail and a cloud?";
    trummelcodecline[page,2] = "If the next thing";
    trummelcodecline[page,3] = "you two gonna do is";
    trummelcodecline[page,4] = "throw out spiky turt-";
    page++;

    //Page 2
    trummelcodecspeaker[page] = 1; //
    trummelcodecexpression[page] = 1; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "Haha- luckily we";
    trummelcodecline[page,2] = "are not doing that-";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 1; //Bowser
    trummelcodecexpression[page] = 0; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "We are facing Elice.";
    trummelcodecline[page,2] = "Daughter of a";
    trummelcodecline[page,3] = "faraway King";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
    //Page 3
    trummelcodecspeaker[page] = 2; //Bowser
    trummelcodecexpression[page] = 0; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "princess";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = ""; //There's nothing in line 4
    page++;
    
    //Page 4
    trummelcodecspeaker[page] = 1; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "Not quite, her dad";
    trummelcodecline[page,2] = "have.. retired ?";
    trummelcodecline[page,3] = "How could a King";
    trummelcodecline[page,4] = "even retired ?";
    page++;
    
    //Page 5
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "Oh, he canceled the";
    trummelcodecline[page,2] = "feudal system, and";
    trummelcodecline[page,3] = "quit potitic to open";
    trummelcodecline[page,4] = "an icecream shop.";
    page++;
       //Page 6
    trummelcodecspeaker[page] = 3; //Alto
    trummelcodecexpression[page] = 1; 

    trummelcodecline[page,1] = "But we aren't here";
    trummelcodecline[page,2] = "to talk about my";
    trummelcodecline[page,3] = "backstory, are we ?";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 7
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 1; 

    trummelcodecline[page,1] = "Yeah, that's right.";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
     //Page 7
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "Elice have average";
    trummelcodecline[page,2] = "normal attacks, but";
    trummelcodecline[page,3] = "you shoud look out for";
    trummelcodecline[page,4] = "her special attacks.";
    page++;
    
        //Page 8
    trummelcodecspeaker[page] = 1; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "They range from a";
    trummelcodecline[page,2] = "rolling snowball to";
    trummelcodecline[page,3] = "backstabbing icicle.";
    trummelcodecline[page,4] = "";
    page++;
    
       //Page 9
    trummelcodecspeaker[page] = 1; //Bowser
    trummelcodecexpression[page] = 2; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "I'm still very confident";
    trummelcodecline[page,2] = "that we can easily ";
    trummelcodecline[page,3] = "beat her projectiles";
    trummelcodecline[page,4] = "with ours"; //There's nothing in line 4
    page++;
    
      //Page 9
    trummelcodecspeaker[page] = 1; //Bowser
    trummelcodecexpression[page] = 2; //Bowser's second non-default emotion; I imagine it being a laugh

    trummelcodecline[page,1] = "She does have a ";
    trummelcodecline[page,2] = "special-special move...";
    trummelcodecline[page,3] = "But how it work is";
    trummelcodecline[page,4] = "not on data yet..."; //There's nothing in line 4
    page++;
    
      //Page 10
    trummelcodecspeaker[page] = 1; //Alto
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "footages just show";
    trummelcodecline[page,2] = "her suddenly change";
    trummelcodecline[page,3] = "location and her foe";
    trummelcodecline[page,4] = "took da.. Just like that.";
    
    if trummelcodec_id.codecindex = 13 && trummelcodec_id.currentcodecline == 4{
    	if attack != AT_JAB {
    		set_attack (AT_JAB)
    		window = 10
visible = true
draw_indicator = true
sound_play(sound_get("timestop"),false, noone, 2);
spawn_hit_fx( x, y , darken )	
x = room_width/2
}
    }
    
    page++;
    
    //Page 11
    trummelcodecspeaker[page] = 3; //Zetta
    trummelcodecexpression[page] = 4; 

    trummelcodecline[page,1] = "Hehe. Here's a hint:";
    trummelcodecline[page,2] = "I can freeze concept.";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 12
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "That is.. very vague";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
    //Page 13
    trummelcodecspeaker[page] = 2; //Zetta
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "za woag rudo";
    trummelcodecline[page,2] = "tokyo tomato";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
     //Page 13
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "Haha, don't be silly.";
    trummelcodecline[page,2] = "No one would be able";
    trummelcodecline[page,3] = "to do that with any";
    trummelcodecline[page,4] = "type of elemental magic.";
    page++;
    
        if trummelcodec_id.codecindex = 17 && trummelcodec_id.currentcodecline == 3{
    	if attack != AT_DSPECIAL{
    		set_attack (AT_DSPECIAL)
timestop = 100
}
}

        if trummelcodec_id.codecindex = 17 && trummelcodec_id.currentcodecline >= 3{
        	if attack == AT_DSPECIAL && state != PS_ATTACK_GROUND && !free {
        	set_state (PS_WALK)
        	state_timer = get_gameplay_time()
        if get_gameplay_time() % 64 == 32 {
				sound_play(sound_get("fs1"), false, noone, 0.6);
		}
		
		if get_gameplay_time() % 64 == 0 {
			sound_play(sound_get("fs2"), false, noone, 0.6);
		}
        }
        }
    
    //Page 14
    trummelcodecspeaker[page] = 1; //Zetta
    trummelcodecexpression[page] = 0; 

    trummelcodecline[page,1] = "Wha---";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
     //Page 15
     trummelcodecspeaker[page] = 2; //Zetta
    trummelcodecexpression[page] = 2; 

    trummelcodecline[page,1] = "n ice";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "";
    trummelcodecline[page,4] = "";
    page++;
    
 
    
}

if get_player_color(player) == 7 {
	outline_color = [19, 15, 28]
   if visible {  
   	if !hitpause {
	if get_gameplay_time() % 40 == 0 {
   	set_color_profile_slot(get_player_color(player),3, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 40 == 26{
	set_color_profile_slot(get_player_color(player),3, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 40 == 13 {
	set_color_profile_slot(get_player_color(player),3, 160, 195, 250 );	
	}
	

   	}
   	
   	if hitpause {
	if get_gameplay_time() % 8 == 0	 {
   	set_color_profile_slot(get_player_color(player),0, 255, 196, 244); 
	} 
	
	if get_gameplay_time() % 8 == 6{
	set_color_profile_slot(get_player_color(player),0, 0, 191, 255 );	
	}
	
    if get_gameplay_time() % 8 == 3{
	set_color_profile_slot(get_player_color(player),0, 160, 195, 250 );	
	}
   	}
	}
    init_shader();	 
}
