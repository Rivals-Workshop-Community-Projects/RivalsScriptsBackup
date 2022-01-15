///
shader_start();

if get_player_color(player) == 6 {
	
	spawn_hit_fx( x + 20 - random_func(5, 40, true) - (20*spr_dir), y - random_func(4, 80, true) , apar )
		spawn_hit_fx( x + 20 - random_func(5, 40, true) - (20*spr_dir), y - random_func(4, 80, true) , apar2 )
		
	if (state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_GROUND
	or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or state == PS_AIR_DODGE or state_cat == SC_HITSTUN){
		
		if get_gameplay_time() % 3 == 0 {
     draw_sprite_ext(sprite_get("idlewing"), get_gameplay_time() / 5, x - 8*spr_dir  , y , spr_dir, 1, 0 , -1 , 0.6);
		}
		
			if get_gameplay_time() % 3 > 1 {
     draw_sprite_ext(sprite_get("idlewing"), get_gameplay_time() / 5, x - 8*spr_dir  , y , spr_dir, 1, 0 , -1 , 0.6);
		}
		
	} else  {
    draw_sprite_ext(sprite_get("idlewing"), get_gameplay_time() / 5, x - 8*spr_dir  , y , spr_dir, 1, 0 , -1 , 1);
	}
	
	if state_cat == SC_HITSTUN && get_gameplay_time() % 3 == 0 {
    draw_sprite_ext(sprite_get("idlewing"), 3, x - 8*spr_dir  , y , spr_dir, 1, 0 , -1 , 0.6);
	}
	
}

if get_player_color(player) == 1 {
     if cloneout > 0 {
     	
     	draw_sprite_ext(sprite_get("halo1"), get_gameplay_time()/3, x - 24*spr_dir - hsp , y - 54 - vsp , spr_dir, 1, 0 , -1 , 0.8);
     	     	
     	gpu_set_blendmode(bm_add);
     	draw_sprite_ext(sprite_get("halo1"), get_gameplay_time()/3, x - 24*spr_dir - hsp  , y - 54 - vsp , spr_dir*1.05, 1.05, 0 , -1 , 0.2);
     	gpu_set_blendmode(bm_normal);

     }
}

if state == PS_WAVELAND or state == PS_DASH 
or state == PS_DASH_START or state == PS_DASH_TURN  {
    draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);

}

if (state == PS_ROLL_BACKWARD or state == PS_ROLL_FORWARD 
or state == PS_TECH_BACKWARD or state == PS_TECH_FORWARD) && state_timer > 2 && state_timer < 20
&& state_timer % 2 == 1{
    draw_sprite_ext(sprite_get("waveland"), 0, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	draw_sprite_ext(sprite_get("waveland"), 0, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.2);

}

if state == PS_AIR_DODGE && state_timer < 2 && !free {
    
 	draw_sprite_ext(sprite_get("waveland"), 0, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 1);
   
}

if state == PS_AIR_DODGE && free && state_timer < 9{
    	draw_sprite_ext(sprite_get("jump"), state_timer/2, x - shsp*-2 , y - svsp *-2, spr_dir, 1, 0 , -1 , 0.4);
     	draw_sprite_ext(sprite_get("jump"), state_timer/2, x - shsp*-4 , y - svsp *-4, spr_dir, 1, 0 , -1 , 0.2);
}

if state == PS_AIR_DODGE && free && state_timer > 9{
    	draw_sprite_ext(sprite_get("jump"), state_timer/2, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
     	draw_sprite_ext(sprite_get("jump"), state_timer/2, x - shsp*3 , y - svsp *3, spr_dir, 1, 0 , -1 , 0.2);
}

if state == PS_FIRST_JUMP or state == PS_DOUBLE_JUMP {
    draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.6 - state_timer/20);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4 , y - svsp *4, spr_dir, 1, 0 , -1 , 0.4 - state_timer/20);

}


if attacking && attack = AT_NSPECIAL {
	 draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	 	draw_sprite_ext(sprite_index, image_index, x - shsp*3.5 , y - svsp *3.5, spr_dir, 1, 0 , -1 , 0.3);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4.5 , y - svsp *4.5, spr_dir, 1, 0 , -1 , 0.2);

}

if attacking && (attack == AT_FSPECIAL or attack == AT_USPECIAL) && window = 3 {
		 draw_sprite_ext(sprite_index, image_index, x - shsp*2 , y - svsp *2, spr_dir, 1, 0 , -1 , 0.4);
	 	draw_sprite_ext(sprite_index, image_index, x - shsp*3.5 , y - svsp *3.5, spr_dir, 1, 0 , -1 , 0.3);
	draw_sprite_ext(sprite_index, image_index, x - shsp*4.5 , y - svsp *4.5, spr_dir, 1, 0 , -1 , 0.2);

}

if cloneout > 0 && move_cooldown[AT_EXTRA_2] == 0 {

	
	
	/////
	if (state != PS_WALK_TURN and state != PS_DASH_TURN and state != PS_PARRY 
	and state != PS_ROLL_FORWARD and state != PS_ROLL_BACKWARD and state != PS_TECH_GROUND
	and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_AIR_DODGE)
	and !attacking and state_cat != SC_HITSTUN{
		 draw_sprite_ext(sprite_get("idle"), get_gameplay_time()/5, clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.8);
		 cloneinv = 0
	}
	
	if attacking && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG && attack != AT_NSPECIAL && attack != AT_USPECIAL && attack != AT_FSPECIAL  && attack != AT_TAUNT  {
		draw_sprite_ext(sprite_get("idle"), get_gameplay_time()/5, clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.8);
		cloneinv = 0
	}
	
	if state == PS_WALK_TURN or state == PS_DASH_TURN {
		 draw_sprite_ext(sprite_get("walkturn"), get_gameplay_time()/4.5, clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.8);
	}
	
	
	if get_gameplay_time()%2 == 0 && (state == PS_PARRY 
	or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_GROUND
	or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or state == PS_AIR_DODGE or state_cat == SC_HITSTUN){
		 draw_sprite_ext(sprite_index, image_index, clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.8);
		 		cloneinv = 1
	}
	
	if attacking && (attack == AT_FSTRONG or attack == AT_USTRONG  or attack == AT_DSTRONG or attack == AT_NSPECIAL or attack == AT_USPECIAL or attack == AT_FSPECIAL or attack == AT_TAUNT) {
		draw_sprite_ext(sprite_index, image_index, clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.8);
		cloneinv = 0
	}
	
		if get_gameplay_time() % 3 < 1 {
	if (state != PS_WALK_TURN and state != PS_DASH_TURN and state != PS_PARRY 
	and state != PS_ROLL_FORWARD and state != PS_ROLL_BACKWARD and state != PS_TECH_GROUND
	and state != PS_TECH_FORWARD and state != PS_TECH_BACKWARD and state != PS_AIR_DODGE
	and !attacking  and state_cat != SC_HITSTUN){
		 draw_sprite_ext(sprite_get("idle"), get_gameplay_time()/5, clonex - 4 + random_func(1,8, true) , cloney + 38 - 4 + random_func(2,8, true), clonedir, 1, 0 , -1 , 0.6);
	}
	
	if attacking && attack != AT_FSTRONG && attack != AT_USTRONG && attack != AT_DSTRONG && attack != AT_NSPECIAL && attack != AT_USPECIAL && attack != AT_FSPECIAL  && attack != AT_TAUNT  {
		draw_sprite_ext(sprite_get("idle"), get_gameplay_time()/5, clonex - 4 + random_func(1,8, true) , cloney + 38 - 4 + random_func(2,8, true), clonedir, 1, 0 , -1 , 0.6);
	}
	
	if state == PS_WALK_TURN or state == PS_DASH_TURN {
		 draw_sprite_ext(sprite_get("walkturn"), get_gameplay_time()/4.5, clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.5);
	}
	
	
	if get_gameplay_time()%2 == 0 && (state == PS_PARRY 
	or state == PS_ROLL_FORWARD or state == PS_ROLL_BACKWARD or state == PS_TECH_GROUND
	or state == PS_TECH_FORWARD or state == PS_TECH_BACKWARD or state == PS_AIR_DODGE or state_cat == SC_HITSTUN){
		 draw_sprite_ext(sprite_index, image_index, clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.5);
	}
	
	if attacking && (attack == AT_FSTRONG or attack == AT_USTRONG  or attack == AT_DSTRONG or attack == AT_NSPECIAL or attack == AT_USPECIAL or attack == AT_FSPECIAL or attack == AT_TAUNT) {
		draw_sprite_ext(sprite_index, image_index, clonex - 4 + random_func(1,8, true) , cloney + 38 - 4 + random_func(2,8, true), clonedir, 1, 0 , -1 , 0.6);
	}	 
	}
	
}



if attacking && attack == AT_TAUNT {
		draw_debug_text(x - (86) ,y - 106, "Shall I give you dis pear?");	
}


if cloneout == 1 && move_cooldown[AT_EXTRA_2] > 0 {
	draw_sprite_ext(sprite_get("uair"), 6 - move_cooldown[AT_EXTRA_2]/4 , clonex , cloney + 38, clonedir, 1, 0 , -1 , 0.8);
	draw_sprite_ext(sprite_get("uair"), 6 - move_cooldown[AT_EXTRA_2]/4 , clonex - 4 + random_func(1,8, true) , cloney + 38 - 4 + random_func(2,8, true), clonedir, 1, 0 , -1 , 0.6);

}

shader_end() 