///
shader_start();   

if "in_adventure" in self {
 if invincible {
	draw_sprite_ext(sprite_index,image_index,x,y,spr_dir,1,0,-1,1)
  }
 
 if move_cooldown[AT_FSPECIAL_2] > 0  {
   draw_sprite_ext(sprite_get("fspecial"), 12, x + 20*spr_dir, y - 30  , spr_dir*1, 1, 90*spr_dir , -1 , 1);
 }
}

if move_cooldown[AT_FSTRONG_2] != 0 {
	  gpu_set_blendmode(bm_add);
	          draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
  	          draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
  	          draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10)
  	          draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
  	          draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
  	          draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir*1.05, 1.05, 0 , -1 , move_cooldown[AT_FSTRONG_2]/10);
  

  gpu_set_blendmode(bm_normal);	
}

if rank >= 4 && state != PS_PRATFALL && state != PS_PRATLAND{
	  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  - random_func(1,2,true), y - 1 - vsp - random_func(2,2,true)  , spr_dir*1.05, 1.05, 0 , -1 , 0.3);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2 + random_func(1,2,true) , y + 1 - vsp*2 + random_func(2,2,true)  , spr_dir*1.05, 1.05, 0 , -1 , 0.3);
  gpu_set_blendmode(bm_normal);
}

if get_player_color(player) == 8 {
		if visible && state != PS_PRATFALL && state != PS_PRATLAND {
    
  gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_index, image_index , x - 1 - hsp  , y - 1 - vsp  , spr_dir, 1, 0 , c_aqua , 0.2);
		draw_sprite_ext(sprite_index, image_index , x + 1 - hsp*2  , y + 1 - vsp*2  , spr_dir, 1, 0 , c_fuchsia , 0.2);

  gpu_set_blendmode(bm_normal);
}
}
shader_end() 

if attacking {
shader_start();    
    if attack == AT_DSPECIAL && window == 2 {
    	draw_debug_text(x - 80 ,y - 170, "Tier 1");	
    	draw_debug_text(x - 40 ,y - 186, "Tier 2");	
    	draw_debug_text(x ,y - 210, "Tier 3");	
    	         draw_sprite_ext(sprite_get("NS1"), 3 , x - 46 , y - 140, 0.6,0.6,0, -1, 0.4 + (gunname = 1)  );
    	         draw_sprite_ext(sprite_get("NS2"), 5 , x - 46 , y - 120, 0.6,0.6,0, -1, 0.4 + (gunname = 2)  );
    	         draw_sprite_ext(sprite_get("NS3"), 4 , x - 46 , y - 100, 0.6,0.6,0, -1, 0.4 + (gunname = 3)  );
    	         
    	         
    	         draw_sprite_ext(sprite_get("NS4"), 3 , x - 6 , y - 150, 0.6,0.6,0, -1, 0.4 + (gunname = 4)  );
    	         draw_sprite_ext(sprite_get("NS4"), 3 , x - 6 , y - 150, 0.6,0.6,0, c_black, t21 );
    	         draw_sprite_ext(sprite_get("NS6"), 3 , x - 10 , y - 130, 0.6,0.6,0, -1, 0.4 + (gunname = 5)  );
    	         draw_sprite_ext(sprite_get("NS6"), 3 , x - 10 , y - 130, 0.6,0.6,0, c_black, t22  );
    	         draw_sprite_ext(sprite_get("NS7"), get_gameplay_time()/4 , x - 10 , y - 110, 0.6,0.6,0, -1, 0.4 + (gunname = 6)  );
    	         draw_sprite_ext(sprite_get("NS7"), 0 , x - 10 , y - 110, 0.6,0.6,0, c_black, t23  );
    	         draw_sprite_ext(sprite_get("NS8"), 2 , x - 10 , y - 85, 0.6,0.6,0, -1, 0.4 + (gunname = 7)  );
    	         draw_sprite_ext(sprite_get("NS8"), 2 , x - 10 , y - 85, 0.6,0.6,0, c_black, t24  );
    	         
    	         draw_sprite_ext(sprite_get("NS5"), 3 , x  + 38,  y - 180, 0.6,0.6,0, -1, 0.4 + (gunname = 8)  );
    	         draw_sprite_ext(sprite_get("NS9"), 3 , x  + 38,  y - 160, 0.6,0.6,0, -1, 0.4 + (gunname = 9)  );
    	         draw_sprite_ext(sprite_get("NS10"), 3 , x + 38 , y - 140, 0.4,0.4,0, -1, 0.4 + (gunname = 10)  );
    	         draw_sprite_ext(sprite_get("NS11"), 2 , x + 38 , y - 116, 0.6,0.6,0, -1, 0.4 + (gunname = 11)  );
    	         draw_sprite_ext(sprite_get("NS12"), 2 , x + 34 , y - 96, 0.7,0.7,0, -1, 0.4 + (gunname = 12)  );
    	         draw_sprite_ext(sprite_get("NS13"), 2 , x + 34 , y - 80, 0.8,0.8,0, -1, 0.4 + (gunname = 13)  );
    }
    
    
shader_end() 
    
     if attack == AT_EXTRA_3{
		if window_timer > 1 {
			if casing = 1 {
			draw_debug_text(x - (100) ,y - 90, "Rank annoucer & Bullet shells ON");	
			}
			if casing = 0 {
			draw_debug_text(x - (100) ,y - 90, "Rank annoucer & Bullet shells OFF");	
			}
		}
     }
		
		
    if attack == AT_TAUNT {
		if window > 12 && window_timer == 1 {
			infernal2 += 2
		}

/*
	if window >= 12 and window <= 14 && (infernal2 > 300) {

		if spr_dir == -1{
	    draw_debug_text(x - (70) ,y - 90, "Sky.");
		}
		
		if spr_dir == 1{
	    draw_debug_text(x + (60) ,y - 90, "Sky.");
		}
		
		
	}
	
	if window >= 13 and window <= 15 && (infernal2 > 300) {
	if spr_dir == -1{
		draw_debug_text(x + (60) ,y - 90, "Stars.");
		
	}
	
	if spr_dir == 1{
	    draw_debug_text(x - (96) ,y - 90, "Stars.");
		}
	
	}
	
	if window >= 15 and window <= 16 and danced == 1 {
		
        if spr_dir == -1{
        draw_debug_text(x - (140) ,y - 40, "Screw em up.");
        }
        
        if spr_dir == 1{
        draw_debug_text(x + (50) ,y - 40, "Screw em up.");
        }
		
	}
*/	
	
	if window >= 1 && window <= 6 {
	    
	    if window > 1 && window <7 {
	     draw_debug_text(x - 55 , y + 15, "Jump to cancel.");
	    }
	    
		if window == 1 {
		    kquote = get_gameplay_time() % 42
		}
		
		if window >= 2 and window <= 5{
		draw_sprite(sprite_get("kquote"), window_timer / 2, x ,y - 100 );    
		}
		
		if window == 3 or window == 2{
		    
		    if kquote == 0 {
		  draw_debug_text(x - 110 ,y - 120, "The longer Abyss Hime is on Aether.");
         draw_debug_text(x - 110 ,y - 105,  "The stronger it will become.");
		    }
		    
		    if kquote == 1 {
		  draw_debug_text(x - 110 ,y - 120, "..he who desires but acts not.. ");
         draw_debug_text(x - 110 ,y - 105,  "..breeds pestilence..");
		    }
		    
		    if kquote == 2 {
		draw_debug_text(x - 110 ,y - 120, "She turned herself into a grape.");
         draw_debug_text(x - 110 ,y - 105,  "Funniest crap I ever heard..");
		    }
		    
		    if kquote == 3 {
		draw_debug_text(x - 110 ,y - 120, "Zetta is gay.");
		    }
		    
		     if kquote == 4 {
		draw_debug_text(x - 110 ,y - 120, "When the Fire Nation attack.");
		draw_debug_text(x - 110 ,y - 105,  "Targma vanished.");
		    }
		    
		    if kquote == 5 {
		draw_debug_text(x - 110 ,y - 120, "S O    I T");
	    draw_debug_text(x - 110 ,y - 105,  "");
		    }
		    
		    if kquote == 6 {
		draw_debug_text(x - 110 ,y - 120, "..change the world..");
	    draw_debug_text(x - 110 ,y - 105,  "..my final message..");
		    }

		    if kquote == 7 {
		draw_debug_text(x - 110 ,y - 120, "Never gonna give you up.");
	    draw_debug_text(x - 110 ,y - 105,  "Never gonna let you down.");
		    }
		    
		    if kquote == 8 {
		draw_debug_text(x - 110 ,y - 120, "Nobody gonna like your dumb");
	    draw_debug_text(x - 110 ,y - 105, "furry OCs. Clown go haha.");
		    }	
		    
		    if kquote == 9 {
		draw_debug_text(x - 110 ,y - 120, "Epinel Go!");
	    draw_debug_text(x - 110 ,y - 105, "You are just dead weight!.");
		    }		    
		    
            if kquote == 10 {
		draw_debug_text(x - 110 ,y - 120, "Hey SpriteStar!");
	    draw_debug_text(x - 110 ,y - 105, "Love the character.");
		    }
		    
            if kquote == 11 {
		draw_debug_text(x - 110 ,y - 120, "PA PO PE");
		    }		    

            if kquote == 12 {
		draw_debug_text(x - 110 ,y - 120, "Olympia is so amazing.");
	    draw_debug_text(x - 110 ,y - 105, "If only she were a little faster.");
		    }		    

            if kquote == 13 {
		draw_debug_text(x - 110 ,y - 120, "Alex Ashikaga gonna be");
	    draw_debug_text(x - 110 ,y - 105, "next God of Destruction.");
		    }	

            if kquote == 14 {
		draw_debug_text(x - 110 ,y - 120, "It's a beautiful day outside..");
	    draw_debug_text(x - 110 ,y - 105, "Bird are singing, flowers are blooming...");
		    }
		    
            if kquote == 15 {
		draw_debug_text(x - 110 ,y - 120, "Kept you waiting..");
	    draw_debug_text(x - 110 ,y - 105, "Huh..?");
		    }
		    
            if kquote == 16 {
		draw_debug_text(x - 110 ,y - 125, "Standing here. I realize.");
	    draw_debug_text(x - 110 ,y - 110, "You're just like me. ");
	    draw_debug_text(x - 110 ,y - 95, "Trying to make history.");
		    }	
		    
            if kquote == 17 {
		draw_debug_text(x - 110 ,y - 120, "It's a good day to be not dead.");

		    }

            if kquote == 18 {
		draw_debug_text(x - 110 ,y - 120, "Where is that damn");
        draw_debug_text(x - 110 ,y - 105, "fourth chaos emerald.");
		    }

            if kquote == 19 {
		draw_debug_text(x - 110 ,y - 120, "Poyo");

		    }
		    
		   if kquote == 20 {
		draw_debug_text(x - 110 ,y - 120, "Hey Ash. Wanna learn how");
		draw_debug_text(x - 110 ,y - 105, "to do a bloody INFINITE' ?");

		    }
		    
		   if kquote == 21 {
		draw_debug_text(x - 110 ,y - 120, "FOR NEUTRAL SPECIAL.");
		draw_debug_text(x - 110 ,y - 105, "he use a lame BB pistol.");

		    }
		    
		   if kquote == 22 {
		draw_debug_text(x - 110 ,y - 120, "Can't escape from crossing fate");
		draw_debug_text(x - 110 ,y - 105, "");

		    }

		   if kquote == 23 {
		draw_debug_text(x - 110 ,y - 120, "what does their Dspecial do ?");
		draw_debug_text(x - 110 ,y - 105, "");

		    }		    

		   if kquote == 24 {
		draw_debug_text(x - 110 ,y - 120, "Featuring Katie from ??? series");
		draw_debug_text(x - 110 ,y - 105, "");

		    }	

		   if kquote == 25 {
		draw_debug_text(x - 110 ,y - 120, "Muno has stun");
		draw_debug_text(x - 110 ,y - 105, "Thats his only gimmick.");

		    }

		   if kquote == 26 {
		draw_debug_text(x - 110 ,y - 120, "Fry central gimmick");
		draw_debug_text(x - 110 ,y - 105, "is having super loud sounds.");

		    }
		    
		    
		   	if kquote == 27{
		draw_debug_text(x - 110 ,y - 120, "Ping Crimson!");
		draw_debug_text(x - 110 ,y - 105, "I skip 5s of your inputs.");

		    }

		   	if kquote == 28{
		draw_debug_text(x - 110 ,y - 120, "The mitochondria is the");
		draw_debug_text(x - 110 ,y - 105, "powerhouse of the cell.");

		    }


		   	if kquote == 29{
		draw_debug_text(x - 110 ,y - 120, "Please go support Sydery");
		draw_debug_text(x - 110 ,y - 105, "on Patreon.");

		    }	
		    
		    
		   	if kquote == 30{
		draw_debug_text(x - 110 ,y - 120, "Astra's adorable.");
		draw_debug_text(x - 110 ,y - 105, "");

		    }	


		   	if kquote == 31{
		draw_debug_text(x - 110 ,y - 125, "This weird case of Dementia keep making");
		draw_debug_text(x - 110 ,y - 110, "me forget unimpotant but interesting details.");
        draw_debug_text(x - 110 ,y - 95, "Better write them down in a book.");
		    }	

		   	if kquote == 32{
		draw_debug_text(x - 110 ,y - 120, "You can't just shot a hole ");
		draw_debug_text(x - 110 ,y - 105, "into the surface of Mars.");

		    }


		   	if kquote == 33{
		draw_debug_text(x - 110 ,y - 125, "Hikaru, Kitsune of Light.");
		draw_debug_text(x - 110 ,y - 110, "Light is Photon.");
        draw_debug_text(x - 110 ,y - 95,  "Hikaru is gay confirmed.");
		    }	
		    
		   	if kquote == 34{
		draw_debug_text(x - 110 ,y - 125, "The FitnessGram Pacer Test is a multistage");
		draw_debug_text(x - 110 ,y - 110, "aerobic capacity test that progressively ");
        draw_debug_text(x - 110 ,y - 95, "gets more difficult as it continues.");
		    }
		    
		   	if kquote == 35{
		draw_debug_text(x - 110 ,y - 120, "You cheated not only the game, but yourself.");
		draw_debug_text(x - 110 ,y - 105, "You didn't grow. You didn't improve ");
		    }		    
		    
		   	if kquote == 36{
		draw_debug_text(x - 110 ,y - 120, "..I Need More Power..");
		    }


		   	if kquote == 37{
		draw_debug_text(x - 110 ,y - 120, "Gone, reduced to atoms.");
		    }

		   	if kquote == 38{
		draw_debug_text(x - 110 ,y - 125, "This weird case of Dementia keep making");
		draw_debug_text(x - 110 ,y - 110, "me forget unimpotant but interesting details.");
        draw_debug_text(x - 110 ,y - 95, "Better write them down in a book.");
		    }		    
        	if kquote == 39{
		draw_debug_text(x - 110 ,y - 120, "I shall gave you this pear.. ?");

		    }	  
		    
		    if kquote == 40{
		draw_debug_text(x - 110 ,y - 120, "woag");

		    }
		    
		     if kquote == 41{
		draw_debug_text(x - 110 ,y - 120, "All your base are belong to us.");

		    }
		    
		}
		
		if window == 5 {
		    
		     draw_debug_text(x - 110 ,y - 120, "So it is written.");
             draw_debug_text(x - 70 ,y - 100,  "");
		}
		
		
	}
	
	
    }
    
    
    
    
}


