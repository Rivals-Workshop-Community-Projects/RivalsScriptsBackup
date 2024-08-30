
if state == PS_RESPAWN && !hitstop {
    
    if state_timer == 1 {
        sound_play(asset_get("sfx_absa_concentrate"),false,noone,1,1.4)
    }
    
    if state_timer < 4 { 
        draw_sprite_ext(sprite_get("nc5"), 0, temp_x - 10, temp_y - 160,.5,3,0,-1,1 );
    } else if state_timer < 8 {
       draw_sprite_ext(sprite_get("nc5"), 0, temp_x - 130, temp_y - 70,3,.5,0,-1,1 );
    } else if state_timer < 10 {
        if state_timer == 10 {
           sound_play(asset_get("sfx_absa_singlezap2")) 
        }
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("nc5"), (state_timer%9)/3, temp_x - 86, temp_y - 112,2,2.2,0,-1,.2 );
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sprite_get("nc5"), (state_timer%9)/3, temp_x - 88, temp_y - 114,2,2.2,0,-1,1 );
       draw_sprite_ext(sprite_get("nc5"), 0, temp_x - 130, temp_y - 70,3,.5,0,-1,1 );
    } 
     else {
        if state_timer == 12 {
           sound_play(asset_get("sfx_absa_singlezap1")) 
        }
        gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("nc5"), (state_timer%9)/3, temp_x - 40, temp_y - 110,1.5,2,0,-1,.4 );
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sprite_get("nc5"), (state_timer%9)/3, temp_x - 44, temp_y - 114,1.5,2,0,-1,1 );
        
        if state_timer < 120 {
            if state_timer%8 == 0 {
                sound_play(sound_get("beepv2"),false,noone,.75*casing)
            }
            if state_timer%2 == 0 {
                sound_play(asset_get("mfx_orby_talk"),false,noone,1-casing)
            }
         gpu_set_blendmode(bm_add);
        draw_sprite_ext(sprite_get("nc5"), 3 + (state_timer%10)/5, temp_x - 42 + random_func(2,4,true), temp_y - 112 + random_func(2,4,true),1.5,1.5,0,-1,.4 );
        gpu_set_blendmode(bm_normal);
        draw_sprite_ext(sprite_get("nc5"), 3 + (state_timer%10)/5, temp_x - 44, temp_y - 114,1.5,1.5,0,-1,.5 ); 
        } else {
         draw_sprite_ext(sprite_get("nc5"), 3, temp_x - 42 + random_func(2,4,true), temp_y - 112 + random_func(2,4,true),1.5,1.5,0,-1,.4 );
         gpu_set_blendmode(bm_normal);
         draw_sprite_ext(sprite_get("nc5"), 3, temp_x - 44, temp_y - 114,1.5,1.5,0,-1,.5 );    
        }
        
        
        if (state_timer < 40 && state_timer%6 < 2) or (state_timer > 40 && state_timer%4 < 3){
            switch tooltip%12 {
                case 1 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"The more weapon you discard,");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"the lighter you become.");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"I hope you understand the risk.");
                  }
                break ; 
                
                case 2 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"Tier 3 weaponry toast your suitcase.");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"You will take damage simply by picking them up.");
                  }
                break ;
                
                case 3 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"High tier weaponry are one time use.");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"They are all situational.");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"Or you can just go ham with em.");
                  }
                break ;
                
                case 4 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"Tier 1 weaponry are efficient.");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"They do their job at low cost.");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"Stick to them seems optimal.");
                  }
                break ;
                
                case 5 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"Why don't you taunt sometime.");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"You can jump cancel and it give");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"style point for meter gain.");
                  }
                break ;
                
                case 6 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"Direct hit with melee will");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"give you more Infernal Energy.");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"Keep that in mind.");
                  }
                break ;
                
                case 7 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"Having a hard time ?");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"Try use some long range tools.");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"I know you have many.");
                  }
                break ;
                
                case 8 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"That style rate thing...");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"It giving you more energy?");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"Hah, you play too much game.");
                  }
                break ;
                
                case 9 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"Your bike have many functions");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"other than just driving.");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"Try press different buttons.");
                  }
                break ;
                
                case 10 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"Emptying your arsenal to discard");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"weight allow you to move faster.");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"It's quite risky however.");
                  }
                break ;
                
                case 11 :
                  draw_debug_text(temp_x + 52,temp_y - 100,"If you radiating thin-vectical aura.");
                  if state_timer > 70 {
                  draw_debug_text(temp_x + 52,temp_y - 85,"That mean you have enough");
                  }
                  if state_timer > 100 {
                  draw_debug_text(temp_x + 52,temp_y - 70,"Energy for the selected weapon.");
                  }
                break ;
            }
            
        }
        
    }
    
    
    
}



shader_start();


draw_sprite(sprite_get("infernalempty"), 0, temp_x + 26, temp_y - 6 );

draw_sprite_part(sprite_get("infernalfull2"), 0, 0, 0, (infernal2/300) * 182, 36, temp_x + 26, temp_y - 6 );




if infernal2 >= 300 && get_gameplay_time()  % 10 > 5{ 
    draw_sprite(sprite_get("infernalfull3"), 0, temp_x + 26, temp_y - 6 );
}

if gunname == 0 && !bursted{
  draw_sprite(sprite_get("suitcase1"), 0, temp_x + 26, temp_y - 38 );  
}

if gunname != 0 && gunname < 8 && !bursted {
  draw_sprite(sprite_get("suitcase2"), 0, temp_x + 26, temp_y - 38 );  
} else if bursted{
    draw_sprite_ext(sprite_get("suitcase1"), 0, temp_x + 26, temp_y - 38,1,1,0,c_black,1 );
}



if gunname >= 1 && gunname <= 3 && infernal2 >= 100 {
      draw_sprite(sprite_get("suitcase3"), 0, temp_x + 26, temp_y - 38 );  
    if get_gameplay_time()  % 10 < 5{
        draw_sprite(sprite_get("suitcase4"), 0, temp_x + 26, temp_y - 38 );  
    }

}

if gunname >= 4 && gunname <= 7 && infernal2 >= 200 {
      draw_sprite(sprite_get("suitcase3"), 0, temp_x + 26, temp_y - 38 );  
    if get_gameplay_time()  % 10 < 5{
        draw_sprite(sprite_get("suitcase4"), 0, temp_x + 26, temp_y - 38 );  
    }
  
}





 if get_player_color(player) == 1 && hunter == 1 && gunname == 0{
        
     	if style == 1 {
 			 draw_sprite(sprite_get("Dstyle"), 3, temp_x + 26, temp_y - 6 );
 		}
 		if style == 2 {
 			draw_sprite(sprite_get("Dstyle"), 1, temp_x + 26, temp_y - 6 );
 		}
 		if style == 3 {
 			draw_sprite(sprite_get("Dstyle"), 2, temp_x + 26, temp_y - 6 );
 		}
 		if style == 4 {
 			draw_sprite(sprite_get("Dstyle"), 4, temp_x + 26, temp_y - 6 );
 		}
     if style != prevstyle {
          	draw_sprite(sprite_get("Dstylec"), 1, temp_x + 22, temp_y - 8 );  
        }
     
 }
 
 if get_player_color(player) == 1 and hunter == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 28,"[Voice of the Second Born] Activated");
}

if get_player_color(player) == 1 and hunter == 0 && get_gameplay_time() <= 120{
       draw_debug_text(temp_x,temp_y - 35,"Press taunt to active voicepack.");
       draw_debug_text(temp_x,temp_y - 20,"[Voice of the Second Born]");
}


if get_player_color(player) != 1 and Vrank == 0 &&  get_gameplay_time() <= 120{
  draw_debug_text(temp_x,temp_y - 35,"Press taunt to active");
  draw_debug_text(temp_x,temp_y - 20,"Vocal Rank Annoucer");   
    
}

 if get_player_color(player) != 1 and Vrank == 1 && get_gameplay_time() <= 200{
       draw_debug_text(temp_x,temp_y - 28,"VRA Activated");
}
shader_end();




shader_start();
if introtimer > 0 {
    
    
        if introtimer == temp_y - 6000 {
        spawn_hit_fx( x, y , exp1 )
        sound_play(sound_get("RI"));
    	sound_play(sound_get("exp1"));
    }
    
        draw_sprite(sprite_get("interaction"), 0, temp_x - 20, temp_y - 170);
    
    if introhit = -1 && introtimer < 150 {
         if introtimer == 150 {
        spawn_hit_fx( temp_x + 300 , temp_y + 60  , exp2 )
        sound_play(sound_get("RI"));
    	sound_play(sound_get("exp1"));
    }
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if introhit = 1 {
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 30,temp_y - 28,"Foolishness,Zetta, foolishness");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 36,temp_y - 68,"Give me the Yamato.");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 42,temp_y - 28,"None of your concern.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 38,temp_y - 68,"Hmm...?");
           draw_debug_text(temp_x + 40,temp_y - 52,"What's with the glare?");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 48,temp_y - 28,"Who asked ?");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 40,temp_y - 68,"First Blood.");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 42,temp_y - 28,"Shame that it last");
           draw_debug_text(temp_x + 44,temp_y - 12,"for only one game.");

      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 48 ,temp_y - 68,"Doppelganger.");
      }
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 24,temp_y - 28,"A ghost possessing a puppet..?");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 44,temp_y - 68,"What are you...?");
      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if introhit = -1 && introtimer < 150 {
          draw_debug_text(temp_x + 36,temp_y - 28,"Your helps during last ");
           draw_debug_text(temp_x + 38,temp_y - 12,"mission was... very helpful.");
           draw_debug_text(temp_x + 48,temp_y + 4,"Appreciate it.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 38,temp_y - 68,"My next mission still");
            draw_debug_text(temp_x + 40,temp_y - 52,"have a free slot.");
      }
      
  }
  
///Nolan
  if hit_player_obj.url == "2154720280"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 24,temp_y - 28,"I ate demon for breakfirst.");
            draw_debug_text(temp_x - 16,temp_y - 12,"Cook them on sizzling plasma blade.");
      }
      
        if introhit = 1 {
           draw_debug_text(temp_x + 30,temp_y - 68,"Try not to get oil");
           draw_debug_text(temp_x + 32,temp_y - 52,"on any of my guns..");
      }
      
  }

///Elice
    if hit_player_obj.url == "2136624834"  {
      if introhit = -1 && introtimer < 150 {
           draw_debug_text(temp_x + 16,temp_y - 28,"She helped me on my missions..");
      }
      
        if introhit = 1 {
          draw_debug_text(temp_x + 24,temp_y - 68,"I swear i have been eating");
            draw_debug_text(temp_x + 26,temp_y - 52,"and sleeping VERY heathily.");

      }
      
  }
}  
  

if gunname = 1 {
    draw_sprite(sprite_get("NS1"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Dual Pistols");
      draw_debug_text(temp_x + 50, temp_y - 20,"Eve & Ivy");
    
}

if gunname = 2 {
    draw_sprite(sprite_get("NS2"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Land Mine");
      draw_debug_text(temp_x + 50, temp_y - 20,"Mine Land");
}

if gunname = 3 {
    draw_sprite(sprite_get("NS3"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Sniper Rifle");
      draw_debug_text(temp_x + 50, temp_y - 20,"Rpiral");
}

if gunname = 4 {
    draw_sprite(sprite_get("NS4"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Photon Gun");
      draw_debug_text(temp_x + 50, temp_y - 20,"Ray Cannon");
}

if gunname = 5 {
    draw_sprite(sprite_get("NS6"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Unholy Hand Grenade");
      draw_debug_text(temp_x + 50, temp_y - 20,"Mega Destruction Dark Ball ");
      draw_debug_text(temp_x + 40, temp_y - 4,"Of Darkness and Destruction");
}

if gunname = 6 {
    draw_sprite(sprite_get("NS7"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Revolver");
      draw_debug_text(temp_x + 50, temp_y - 20,"Lingering Dread");
}

if gunname = 7 {
    draw_sprite(sprite_get("NS8"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Shotgunshootsshotguns");
      draw_debug_text(temp_x + 50, temp_y - 20,"Beeg Boi");
}

if gunname = 8 {
    draw_sprite(sprite_get("NS5"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Portable Aircraft Carrier");
      draw_debug_text(temp_x + 50, temp_y - 20,"Jet Laucher Mk5");
}

if gunname = 9 {
    draw_sprite(sprite_get("NS9"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Full-Auto Rocket Laucher");
      draw_debug_text(temp_x + 50, temp_y - 20,"ATM-696");
}

if gunname = 10 {
    draw_sprite(sprite_get("NS10"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Quadruple");
      draw_debug_text(temp_x + 50, temp_y - 20,"Quadbarrel Shotgun");
}

if gunname = 11 {
    draw_sprite(sprite_get("NS11"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Best Friend Generator");
      draw_debug_text(temp_x + 50, temp_y - 20,"BFG9k");
}

if gunname = 12 {
    draw_sprite(sprite_get("NS12"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Satellite Mounted Ion Cannon");
      draw_debug_text(temp_x + 50, temp_y - 20,"SAS-Heaven Piercer");
}

if gunname = 13 {
    draw_sprite(sprite_get("NS13"), 4, temp_x + 20 , temp_y - 20 );  
      draw_debug_text(temp_x + 40, temp_y - 34,"Car Key");
      draw_debug_text(temp_x + 50, temp_y - 20,"Terra Master");
}




shader_end();