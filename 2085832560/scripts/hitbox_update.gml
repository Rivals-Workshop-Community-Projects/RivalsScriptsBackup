if attack == AT_DTILT && hbox_num != 1 {
	
	if !free {
		destroyed = 1 
		sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
	}
	
}

if attack == AT_EXTRA_1 && hbox_num == 7 {
	if hitbox_timer > 20 {
		can_hit_self = true
	}
}

if attack == AT_EXTRA_3 && hbox_num <= 2 {
	
	if !free {
		sound_play(sound_get("shell"));
		vsp -= random_func(7, 4, true) + 3
	}
	
	if vsp > 7 {
		vsp = 7
	}
	
	if vsp < -10 {
		vsp = -10
	}
	
}

if attack == AT_EXTRA_3 && hbox_num <= 2 {
	
	if !free {
		sound_play(sound_get("shell"));
		vsp -= random_func(7, 4, true) + 3
	}
	
	if vsp > 7 {
		vsp = 7
	}
	
}


if attack == AT_USTRONG && hbox_num > 1 {
		var  ustrongs2 = hit_fx_create( sprite_get( "ustrongs2" ), 12);
	spawn_hit_fx( x , y , ustrongs2 )
	
}

if attack == AT_EXTRA_3 && hbox_num > 2 && hbox_num < 7 {
	
	var  ustrongs2 = hit_fx_create( sprite_get( "ustrongs2" ), 12);
	spawn_hit_fx( x , y , ustrongs2 )
	
}

if attack == AT_BAIR && hbox_num == 2 {
	
	var smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
	var smoke2 = hit_fx_create( sprite_get( "smoke2" ), 20 );
	
	if hitbox_timer % 2 == 0 {
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke1 )
	}
	
	if hitbox_timer % 2 == 1 {
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke2 )
	}
	
	if hitbox_timer == 1 {
		sound_play(sound_get("bike1"));
	}
	if hitbox_timer % 5 == 0 {
		
		sound_play(sound_get("bike1"));
	}
	
	if !free {

		sound_play(sound_get("exp1"));
		
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 32 , exp1 )
		destroyed = 1
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 30 );
	}
	

	
}

if attack == AT_BAIR && hbox_num == 3 {
	
	var smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
	var smoke2 = hit_fx_create( sprite_get( "smoke2" ), 20 );
	
	if hitbox_timer % 2 == 0 {
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke1 )
	}
	
	if hitbox_timer % 2 == 1 {
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke2 )
	}
	
	if hitbox_timer == 1 {
		sound_play(sound_get("bike1"));
	}
	if hitbox_timer % 5 == 0 {
		
		sound_play(sound_get("bike1"));
	}
	
	if !free {

		sound_play(sound_get("exp1"));
		
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 32 , exp1 )
		destroyed = 1
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 30 );
	}
	

	
}


if attack == AT_DAIR && hbox_num > 1{
	
	if hitbox_timer % 2 == 0 {
		var dairs3 = hit_fx_create( sprite_get( "dairs3" ), 28 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , dairs3  )
	}
		
	if !free or vsp == 0 {
		sound_play(sound_get("exp2"));
		destroyed = 1
		var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 50 , exp2 )
		destroyed = 1
		create_hitbox(AT_EXTRA_3 , 8 , x   , y - 60  );
		create_hitbox(AT_EXTRA_3 , 9 , x   , y );
	}
	

	
}


if attack == AT_UAIR && hbox_num > 1 {

	if hitbox_timer == 1 {
	
			 sound_play(sound_get("bike5"));	
	}
	
	if hitbox_timer % 4 == 10 {
	
			 sound_play(asset_get("ice_shieldup"));	
	}
	
	if hitbox_timer % 4 == 0 {

		var dairs3 = hit_fx_create( sprite_get( "dairs3" ), 28 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 30 - random_func(2, 16, true) , dairs3  )
		create_hitbox(AT_EXTRA_3 , 10 , x + (10 * spr_dir)   , y );
	}
		
	if vsp > 0 {
		sound_play(sound_get("exp1"));
		
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y , exp1 )
		destroyed = 1
		create_hitbox(AT_EXTRA_3 , 11 ,x   , y );
	}
	
	
}




////Taunt



if attack == AT_TAUNT && hbox_num == 1 {
	

	
var smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke1 )

	

		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke1 )

	
	
	
		if !free or vsp <= 0 or hsp < 0{
			
      	
				
		destroyed = 1		
		sound_play(sound_get("exp2"));
       var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 30 , exp2 )
	   var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		create_hitbox(AT_EXTRA_3 , 21 , x, y + 10 );
        spawn_hit_fx( x , y - 30 , 304 )
        
        spawn_hit_fx( x - 100 + random_func(10, 100, true) + random_func(10, 100, true) , y , 304)
        spawn_hit_fx( x - 100 + random_func(10, 100, true) + random_func(10, 100, true) , y , exp1 )
		create_hitbox(AT_EXTRA_3 , 21 , x - 100 + random_func(10, 100, true) + random_func(10, 100, true)  , y + 10 );
        
        spawn_hit_fx( x - 100 + random_func(11, 100, true) + random_func(11, 100, true) , y , 304 )
        spawn_hit_fx( x - 100 + random_func(11, 100, true) + random_func(11, 100, true) , y , exp1 )
		create_hitbox(AT_EXTRA_3 , 21 , x - 100 + random_func(10, 100, true) + random_func(10, 100, true)  , y + 10 );
		
		create_hitbox(AT_TAUNT , 1 , x - random_func(10, 100, true) , y - 500 + random_func(10, 100, true) );
		spawn_hit_fx( x - random_func(10, 100, true), y - 500 + random_func(10, 100, true) , 306 )
	}
}



if attack == AT_TAUNT && hbox_num == 2 {
	

	
var smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke1 )

	

		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke1 )

	
	
	
		if !free or vsp <= 0 or hsp > 0{
			
      	
				
		destroyed = 1		
		sound_play(sound_get("exp2"));
       var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 30 , exp2 )
	   var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		create_hitbox(AT_EXTRA_3 , 21 , x, y + 10 );
        spawn_hit_fx( x , y - 30 , 304 )
        
        spawn_hit_fx( x - 100 + random_func(10, 100, true) + random_func(10, 100, true) , y , 304)
        spawn_hit_fx( x - 100 + random_func(10, 100, true) + random_func(10, 100, true) , y , exp1 )
		create_hitbox(AT_EXTRA_3 , 21 , x - 100 + random_func(10, 100, true) + random_func(10, 100, true)  , y + 10 );
        
        spawn_hit_fx( x - 100 + random_func(11, 100, true) + random_func(11, 100, true) , y , 304 )
        spawn_hit_fx( x - 100 + random_func(11, 100, true) + random_func(11, 100, true) , y , exp1 )
		create_hitbox(AT_EXTRA_3 , 21 , x - 100 + random_func(10, 100, true) + random_func(10, 100, true)  , y + 10 );
		
		create_hitbox(AT_TAUNT , 2 , x + 50  + random_func(10, 100, true) , y - 500 + random_func(10, 100, true) );
		spawn_hit_fx( x + 50   + random_func(10, 100, true) , y - 500 + random_func(10, 100, true) , 306 )
	}
}

////





///N GUNS


//// Ray Cannon
if attack == AT_EXTRA_1 && hbox_num == 9 {
	
	if hitbox_timer % 4 == 0 {
		create_hitbox(AT_EXTRA_1 , 10 ,x   , y  );
	}
	
	if hitbox_timer % 4 == 2 {
		create_hitbox(AT_EXTRA_1 , 11 ,x   , y  );
	}
	
    x = player_id.x + (576 * spr_dir)  
    y = player_id.y - 46
}

	



/// Rpiral
if attack == AT_EXTRA_1 && hbox_num == 8 {
	
	var dattacks1 = hit_fx_create( sprite_get( "dattacks1" ), 24 );

	spawn_hit_fx( x , y, dattacks1 )
	
	spawn_hit_fx( x - 40, y, dattacks1 )
	
	spawn_hit_fx( x + 40, y, dattacks1 )
	
	spawn_hit_fx( x - 30, y, dattacks1 )
	
	spawn_hit_fx( x + 30, y, dattacks1 )
    
    spawn_hit_fx( x - 60, y, dattacks1 )
	
	spawn_hit_fx( x + 60, y, dattacks1 )
	
	

	
}

/// E & I


if attack == AT_EXTRA_1 && hbox_num == 4 {
	

	destroyed = 1

	
}


if attack == AT_EXTRA_1 && (hbox_num == 5 or hbox_num == 6)  {
	
	if !free {
		sound_play(sound_get("shell2"));
		destroyed = 1
	}
	
	if vsp > 7 {
		vsp = 7
	}
	
}



////UHG


if attack == AT_EXTRA_1 && hbox_num == 13 {
	
		if hitbox_timer >= 130  {

		sound_play(sound_get("exp1"));
		
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		
		sound_play(sound_get("gun5"));
		
		spawn_hit_fx( x , y - 32 , exp1 )
		destroyed = 1
		create_hitbox(AT_EXTRA_1 , 15 , x , y  );
	}
	
	if !free {
		
		hitbox_timer = 130
	}
	
	if vsp > 7 {
		vsp = 7
	}
	
}




if attack == AT_EXTRA_1 && hbox_num == 15 {
	
	if hitbox_timer < 60 && hitbox_timer % 4 == 0 {
       
       create_hitbox(AT_EXTRA_1 , 16 , x , y  );
   
	}
	
	if hitbox_timer > 60{
	   sound_play(sound_get("exp2"));
       destroyed = 1
       create_hitbox(AT_EXTRA_1 , 17 , x , y  );
       var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 30 , exp2 )
	   var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x + 30, y - 22 , exp1 )
		spawn_hit_fx( x - 30, y - 22 , exp1 )
        spawn_hit_fx( x , y  , 306 )
	}
	
}

//// Lingering Dread

if attack == AT_EXTRA_1 && hbox_num == 18 {
	
	var smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
	

		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , smoke1 )

	
	
	if hitbox_timer == 560{
		sound_play(sound_get("exp1"));
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 10 , 306 )
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 10 );
		
		hsp *= -40
	}	
	
	
	if hitbox_timer == 599{
		 sound_play(sound_get("exp2"));
		
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 10 , exp1 )
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 10 );
	}	
	
}

////SGSSG

if attack == AT_EXTRA_1 && hbox_num >= 21 and hbox_num <= 24 {
	
	if hitbox_timer % 4 == 0 {
		var dairs3 = hit_fx_create( sprite_get( "dairs3" ), 28 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , dairs3  )
	}
	
	if !free or hitbox_timer >= 60 and hbox_num == 21  {
			sound_play(sound_get("SGF"));
			destroyed = 1
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 10 , 304 )
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 10 );
		if player_id.casing == 1 {
		create_hitbox(AT_EXTRA_3 , 1 ,x   , y - 10 );
		create_hitbox(AT_EXTRA_3 , 2 ,x   , y - 10 );
		}
	}
	
	if !free or hitbox_timer >= 65 + random_func(1, 16, true) and hbox_num == 22 {
			destroyed = 1
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 10 , 304 )
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 10 );
		if player_id.casing == 1 {
		create_hitbox(AT_EXTRA_3 , 1 ,x   , y - 10 );
		create_hitbox(AT_EXTRA_3 , 2 ,x   , y - 10 );
		}
	}
	if !free or hitbox_timer >= 70 + random_func(2, 16, true) and hbox_num == 23 {
			sound_play(sound_get("SGF"));
			destroyed = 1
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 10 , 304 )
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 10 );
				if player_id.casing == 1 {
		create_hitbox(AT_EXTRA_3 , 1 ,x   , y - 10 );
		create_hitbox(AT_EXTRA_3 , 2 ,x   , y - 10 );
		}
	}
	if !free or hitbox_timer >= 75 + random_func(3, 16, true) and hbox_num == 24 {
			destroyed = 1
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		spawn_hit_fx( x , y + 10 , 304 )
		create_hitbox(AT_EXTRA_3 , 7 ,x   , y + 10 );
		if player_id.casing == 1 {
		create_hitbox(AT_EXTRA_3 , 1 ,x   , y - 10 );
		create_hitbox(AT_EXTRA_3 , 2 ,x   , y - 10 );
		}
	}
}


///////////////////



///// ATM

if attack == AT_EXTRA_2 && hbox_num == 1 {
	
	if !free {
		destroyed = 1 
		sound_play(asset_get("sfx_ell_dspecial_explosion_1"));
	}
	
}

if attack == AT_EXTRA_2 && hbox_num == 2{
	
	if hitbox_timer % 2 == 0 {
		var dairs3 = hit_fx_create( sprite_get( "dairs3" ), 28 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , dairs3  )
	}
		
	if !free or hitbox_timer > 30 + random_func(2, 16, true)  {
		sound_play(sound_get("exp2"));
		destroyed = 1
		var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 50 , exp2 )
		destroyed = 1
		create_hitbox(AT_EXTRA_3 , 8 , x   , y - 60  );
		create_hitbox(AT_EXTRA_3 , 9 , x   , y );
	}

}


if attack == AT_EXTRA_2 && hbox_num == 3{
	  
	  if hitbox_timer % 5 == 0 && hitbox_timer <= 25 {
	  	sound_play(sound_get("bike1"));
	  }
	     var smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
		spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 8 - random_func(1, 16, true) , smoke1 )
		
		if hitbox_timer % 2 == 0 {
		var dairs3 = hit_fx_create( sprite_get( "dairs3" ), 28 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , dairs3  )
		}
		
	if hsp < 18 and hsp > -18{
	hsp *= 1.2
	}
    
    if hitbox_timer == 5 {
    	if hsp < 0 {
    	create_hitbox(AT_EXTRA_2 , 4 , (room_width / 2) - 1000 , (room_height / 2) - 300 );
    	}
    	
    	if hsp > 0 {
    	create_hitbox(AT_EXTRA_2 , 4 , (room_width / 2) + 1000 , (room_height  / 2) - 300  );
    	}
    }		
    
	if hitbox_timer > 60 {
		destroyed = 1
	}

}

if attack == AT_EXTRA_2 && hbox_num == 4{
	
	if hitbox_timer == 20 {
		vsp = 4
		
	}
	
	
	if hitbox_timer > 60 {
		vsp -= 0.3
		
	}
	
		 if hitbox_timer % 5 == 0 {
	  	sound_play(sound_get("bike1"));
	  }
	  
	  if hitbox_timer > 30 && hitbox_timer < 120 && hitbox_timer % 6 == 0 {
	  			create_hitbox(AT_EXTRA_2 , 5 , x , y );
	  			sound_play(asset_get("sfx_ell_eject"));
	  }
	  
	  if hitbox_timer > 30 && hitbox_timer < 120 && hitbox_timer % 6 == 3 {
	  			create_hitbox(AT_EXTRA_2 , 6 , x , y );
	  			sound_play(asset_get("sfx_ell_eject"));
	  }
	  
	var smoke1 = hit_fx_create( sprite_get( "smoke1" ), 20 );
		spawn_hit_fx( x + 8 - random_func(2, 16, true) , y + 8 - random_func(1, 16, true) , smoke1 )
		
		if hitbox_timer % 2 == 0 {
		var dairs3 = hit_fx_create( sprite_get( "dairs3" ), 28 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , dairs3  )
		}
		
		
		
		
}


if attack == AT_EXTRA_2 && (hbox_num == 5 or hbox_num == 6)  {
	
	if hitbox_timer % 2 == 0 {
		var dairs3 = hit_fx_create( sprite_get( "dairs3" ), 28 );
		spawn_hit_fx( x + 8 - random_func(1, 16, true) , y + 8 - random_func(2, 16, true) , dairs3  )
	}
	
	if vsp > 7 {
		vsp = 7
	}	
	
	if !free {
		sound_play(sound_get("exp2"));
		destroyed = 1
		var exp2 = hit_fx_create( sprite_get( "exp2" ), 32 );
		spawn_hit_fx( x , y - 50 , exp2 )
		destroyed = 1
		create_hitbox(AT_EXTRA_3 , 8 , x   , y - 60  );
		create_hitbox(AT_EXTRA_3 , 9 , x   , y );
	}
	

	
}


if attack == AT_EXTRA_2 && hbox_num == 7   {
	
if hitbox_timer % 4 == 0 {
		create_hitbox(AT_EXTRA_2 , 8 , x , y );
}

hsp /= 1.01

    if hitbox_timer > 150{
    		sound_play(sound_get("exp1"));
		
		var exp1 = hit_fx_create( sprite_get( "exp1" ), 32 );
		
		sound_play(sound_get("gun5"));
		
		spawn_hit_fx( x , y - 32 , exp1 )
		destroyed = 1
		create_hitbox(AT_EXTRA_1 , 15 , x , y  );
	}
	
}



////


if attack == AT_EXTRA_2 && hbox_num >= 11 && hbox_num <= 12  {
	
	if !free or vsp <= 0 {
		destroyed = 1
		sound_play (sound_get("exp1"));
	}
	
}


if attack == AT_EXTRA_2 && hbox_num == 9   {
	
	
	y = room_height/2 
	
if hitbox_timer == 1 or hitbox_timer == 55 or hitbox_timer == 110 {
	
	var beam1 = hit_fx_create( sprite_get( "beam1" ), 55 );
		

		spawn_hit_fx( x , y , beam1 )

}
    
	if hitbox_timer == 160 {
		hsp *= 150
		sound_play (sound_get("laser2"));
	}

if hitbox_timer > 160 {
	
	

	  if hitbox_timer % 6 == 0 {

		create_hitbox(AT_EXTRA_2 , 11 , x - 50 + random_func(10, 100, true)  , y   );

	}
	
	if hitbox_timer % 6 == 3 {
		
		create_hitbox(AT_EXTRA_2 , 12 , x - 50 + random_func(10, 100, true) , y  );
	}
	
	
	var beam2 = hit_fx_create( sprite_get( "beam2" ), 10 );
		
      if hitbox_timer % 9 == 0{
		spawn_hit_fx( x , y , beam2 )
      }
	
	if hitbox_timer % 2 == 0 {
		if hsp > 0 {
		create_hitbox(AT_EXTRA_2 , 13 , x - 5 , y  );
		}
		
		if hsp < 0 {
		create_hitbox(AT_EXTRA_2 , 13 , x + 5 , y  );
		}
	}
	
	
	
	
	if hitbox_timer % 4 == 0 {
		if hsp > 0 {
		create_hitbox(AT_EXTRA_2 , 10 , x - 5 , y  );
		}
		
		if hsp < 0 {
		create_hitbox(AT_EXTRA_2 , 10 , x + 5 , y  );
		}
	}
	
}




	
}



///