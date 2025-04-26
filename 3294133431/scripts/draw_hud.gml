

// if(variable_instance_exists(self, "fs_using_final_smash") && fs_using_final_smash && !custom_clone)
// {
//   our_x = temp_x + 115;
//   our_y = temp_y - 22;

//   range_x_down = our_x-2;
//   range_y_down = our_y-2;
//   range_x_up = our_x+2;
//   range_y_up = our_y+2;

//   for (var ix = range_x_down; ix <= range_x_up; ix++)
//   {
//     for (var jy = range_y_down; jy <= range_y_up; jy++)
//     {
//       draw_text_color(ix, jy, "cl_interp 0", c_black,c_black,c_black,c_black, 1);
//     }
//   }
//   draw_text_color(our_x, our_y, "cl_interp 0", c_white,c_white,c_white,c_white, 1);
//   //TODO: why does it just draw numbers if more than 1 player??
// }



if(inTauntMenu || tauntAnimTimer1 > 0)
{
  var xOff = -20;
  var yOff = -174;
  var animVertMul = 0.5;

	var animOffY1 = tauntAnimDur*animVertMul-tauntAnimTimer1*animVertMul;
	var animAlpha1 = tauntAnimTimer1/tauntAnimDur;
    
    draw_sprite_ext(sprite_get("hudHint"), 0, 
			    temp_x+xOff, 
			    temp_y+yOff+animOffY1, 
			    1, 1, 0, c_white, 1*animAlpha1);
}
if(inTerminalTauntMenu || terminalTauntAnimTimer > 0)
{
  var xOff = -20;
  var yOff = -174;
  var animVertMul = 0.5;

	var animOffY1 = tauntAnimDur*animVertMul-terminalTauntAnimTimer*animVertMul;
	var animAlpha1 = terminalTauntAnimTimer/tauntAnimDur;
    
    draw_sprite_ext(sprite_get("hudHint"), 1, 
			    temp_x+xOff, 
			    temp_y+yOff+animOffY1, 
			    1, 1, 0, c_white, 1*animAlpha1);
}

draw_sprite_ext(sprite_get("hud"), 0, temp_x - 8, temp_y - 48, 1, 1, 0, get_player_hud_color(player), 1);
draw_sprite_ext(sprite_get("hud"), 1, temp_x - 8, temp_y - 48, 1, 1, 0, c_white, 1);
if(variable_instance_exists(self, "fs_using_final_smash") && fs_using_final_smash && !custom_clone)
  draw_sprite_ext(sprite_get("hud"), 2, temp_x - 8, temp_y - 48, 1, 1, 0, c_white, 1);

var cloakLineLength = 19*2;
cloakLineLength *= (min(invisTimer, invisTimerMax)/invisTimerMax);
draw_line_width_color(temp_x+3, temp_y-29, temp_x + 3 + cloakLineLength, temp_y-29, 8, c_white, c_white);

draw_sprite_ext(sprite_get("hud_numbers_big"), crits, temp_x+76, temp_y-42, 1, 1, 0, c_white, 1);

/*with(oPlayer)
{
  if(player == other.player)
    continue;
    
  var v = get_char_info(player,INFO_HUD);
  //draw_sprite(v, 0, other.temp_x + 15, other.temp_y - 5 );
  draw_sprite_ext( v, 0, other.temp_x + 15, other.temp_y - 5, 0.5, 0.5, 0, c_white, 1 );
}*/


/*shader_start();

draw_sprite(sprite_get("infernalempty"), 0, temp_x + 26, temp_y - 6 );

draw_sprite_part(sprite_get("infernalfull2"), 0, 0, 0, (infernal2/300) * 182, 36, temp_x + 26, temp_y - 6 );




if infernal2 >= 300 && get_gameplay_time()  % 10 > 5{ 
    draw_sprite(sprite_get("infernalfull3"), 0, temp_x + 26, temp_y - 6 );
}

if guntier == 1 {
  draw_sprite(sprite_get("suitcase1"), 0, temp_x + 26, temp_y - 38 );  
}

if guntier == 2 {
  draw_sprite(sprite_get("suitcase2"), 0, temp_x + 26, temp_y - 38 );  
}

if guntier == 3 {
    
    if get_gameplay_time()  % 10 < 5{
        draw_sprite(sprite_get("suitcase4"), 0, temp_x + 26, temp_y - 38 );  
    }
  draw_sprite(sprite_get("suitcase3"), 0, temp_x + 26, temp_y - 38 );  
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

if gunname > 0 {
    
    draw_sprite_part(sprite_get("infernalfull2"), 0, 0, 0, (guntime/300) * 182, 36, temp_x + 26, temp_y - 6 );
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
    
    if state_cat == SC_HITSTUN && introtimer < 200 {
         if introtimer == 199 {
        spawn_hit_fx( temp_x + 300 , temp_y + 60  , exp2 )
        sound_play(sound_get("RI"));
    	sound_play(sound_get("exp1"));
    }
          draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 180);
      }
      
        if state_cat != SC_HITSTUN {
           draw_sprite(sprite_get("interactionbox"), 0, temp_x + 40, temp_y - 220);
      }

//Zetta
  if hit_player_obj.url == "1913869515"  {
      if state_cat == SC_HITSTUN && introtimer < 200 {
           draw_debug_text(temp_x + 30,temp_y - 28,"Foolishness, just foolishness");
      }
      
        if state_cat != SC_HITSTUN {
           draw_debug_text(temp_x + 36,temp_y - 68,"Give me the Yamato.");
      }
      
  }

//Alex
  if hit_player_obj.url == "2069283406"  {
      if state_cat == SC_HITSTUN && introtimer < 200 {
           draw_debug_text(temp_x + 42,temp_y - 28,"None of your concern.");
      }
      
        if state_cat != SC_HITSTUN {
           draw_debug_text(temp_x + 38,temp_y - 68,"Hmm...?");
           draw_debug_text(temp_x + 40,temp_y - 52,"What's with the glare?");
      }
      
  }
  
 //Mayu
  if hit_player_obj.url == "1997619532"  {
      if state_cat == SC_HITSTUN && introtimer < 200 {
           draw_debug_text(temp_x + 48,temp_y - 28,"So ?");
      }
      
        if state_cat != SC_HITSTUN {
           draw_debug_text(temp_x + 40,temp_y - 68,"First Blood.");
      }
      
  }
  
   //Katie
  if hit_player_obj.url == "2085832560"  {
      if state_cat == SC_HITSTUN && introtimer < 200 {
           draw_debug_text(temp_x + 42,temp_y - 28,"Shame that it last");
           draw_debug_text(temp_x + 44,temp_y - 12,"for only one game.");

      }
      
        if state_cat != SC_HITSTUN {
           draw_debug_text(temp_x + 48 ,temp_y - 68,"Doppelganger.");
      }
      
  }
  


//Saji
  if hit_player_obj.url == "2108469290"  {
      if state_cat == SC_HITSTUN && introtimer < 200 {
           draw_debug_text(temp_x + 24,temp_y - 28,"A ghost possessing a puppet..?");
      }
      
        if state_cat != SC_HITSTUN {
           draw_debug_text(temp_x + 44,temp_y - 68,"What are you...?");
      }
      
  }
  

//Uza
  if hit_player_obj.url == "2047413648"  {
      if state_cat == SC_HITSTUN && introtimer < 200 {
          draw_debug_text(temp_x + 36,temp_y - 28,"Your helps during last ");
           draw_debug_text(temp_x + 38,temp_y - 12,"mission was... very helpful.");
           draw_debug_text(temp_x + 48,temp_y + 4,"Appreciate it.");
      }
      
        if state_cat != SC_HITSTUN {
           draw_debug_text(temp_x + 38,temp_y - 68,"My next mission still");
            draw_debug_text(temp_x + 40,temp_y - 52,"have a free slot.");
      }
      
  }
  
}


shader_end();*/