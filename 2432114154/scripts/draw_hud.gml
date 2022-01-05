
///

if triggercutscene != 0 {
    
    get_player_stocks(player)
with oPlayer {
  if player != other.player {  
    other.hit_player_obj = self 
    other.name = get_char_info(player, INFO_STR_NAME);
    other.spr = get_char_info(player, INFO_PORTRAIT);
    other.img = select - 1;
  }
}



shake_camera(2,20)

shader_start();   
print(triggercutscene)
  draw_sprite_ext(sprite_get("cutscene"),0,(room_width/2 - 200), room_height/2 ,4,5,0,-1,triggercutscene/100)
  draw_sprite_ext(sprite_get("cutscene"),0,min( (room_width/2 - 200), (room_width/2 - 200) - (2200-triggercutscene*(triggercutscene/2))), room_height/2 ,4,4,0,-1,1)
 draw_sprite_ext(sprite_get("cutscene"),1,min( (room_width/2 + 600), (room_width/2 - 200) - (1200-triggercutscene*(triggercutscene/2))), room_height/2 - triggercutscene*4  ,2,2,0,-1,1)
 draw_sprite_ext(sprite_get("cutscene"),1,min( (room_width/2 + 600), (room_width/2 - 200) - (1200-triggercutscene*(triggercutscene/4))), room_height/2 - triggercutscene*2  ,3,3,0,-1,.5)
   
   

   if triggercutscene > 30 && triggercutscene < 120 {
       if triggercutscene > 60 {
        draw_sprite_ext(sprite_get("cutscene"),2,(room_width/2 - 230) + floor(triggercutscene/2), room_height/2 ,2,2,0,-1,(triggercutscene - 60)/60)
       }
       with hit_player_obj shader_start();  
            draw_sprite_ext(spr,img ,random_func(1,5,true) + (room_width/2 + 120) - floor(triggercutscene/4), random_func(2,5,true) + room_height/2 - 362,-2.5,2.5,0,-1,(triggercutscene - 30)/60)
         with hit_player_obj shader_end();   
    } else if triggercutscene >= 120 && triggercutscene < 300  {
        draw_sprite_ext(sprite_get("cutscene"),2,(room_width/2 - 230) + floor(triggercutscene/2), room_height/2 ,2,2,0,-1,1 - (triggercutscene - 120)/30)
        draw_sprite_ext(sprite_get("cutscene"),3,(room_width/2 - 230) + floor(triggercutscene/2), room_height/2 ,2,2,0,-1,(triggercutscene - 120)/30)
        
     gpu_set_blendmode(bm_add);
         draw_sprite_ext(sprite_get("cutscene"),3,(room_width/2 - 230) + floor(triggercutscene/2), room_height/2  ,2,2,0,-1,1.5 - (triggercutscene - 100)/30)
      gpu_set_blendmode(bm_normal);
      
      with hit_player_obj shader_start();   
            draw_sprite_ext(spr,img ,random_func(1,5,true) + (room_width/2 + 120) - floor(triggercutscene/4), random_func(2,5,true) + room_height/2 - 362,-2.5,2.5,0,-1,1)
         with hit_player_obj shader_end();  
        
    } else if triggercutscene >= 300 && triggercutscene < 341{
        shader_start();   
        draw_sprite_ext(sprite_get("cutscene"),3,(room_width/2 - 230) + floor(triggercutscene/2), room_height/2  ,2,2,0,-1,1 - (triggercutscene - 300)/30)
        shader_end();   
      if triggercutscene % 5 <=2 {
          with hit_player_obj shader_start();   
            draw_sprite_ext(spr,img , random_func(1,15,true) + (room_width/2 + 120) - floor(triggercutscene/4), random_func(2,15,true) + room_height/2 - 362,-2.5,2.5,0,-1,.85)
        with hit_player_obj shader_end(); 
      }
        shader_start(); 
           draw_sprite_ext(sprite_get("cutscene"),0,(room_width/2 - 200), room_height/2 ,3,3,0,-1,(triggercutscene - 300)/60)
           draw_sprite_ext(sprite_get("cutscene"),2,(room_width/2 - 230) + floor(triggercutscene/2), room_height/2  ,2,2,0,-1,(triggercutscene - 300)/30)
     gpu_set_blendmode(bm_add);
         draw_sprite_ext(sprite_get("cutscene"),3,(room_width/2 - 230) + floor(triggercutscene/2), room_height/2  ,2,2,0,-1,1 - (triggercutscene - 300)/30)
      gpu_set_blendmode(bm_normal);
             
           draw_sprite_ext(sprite_get("cutscene"),0,(room_width/2 - 200), room_height/2 ,3,3,0,-1,(triggercutscene - 300)/120)
           draw_sprite_ext(sprite_get("cutscene"),4,(room_width/2 - 1200) + (triggercutscene -300)*30, room_height/2 - 360 + (triggercutscene*2 - 540),-3,3,0,-1,1)
           draw_sprite_ext(sprite_get("cutscene"),4,(room_width/2 - 1700) + (triggercutscene -300)*30, room_height/2 - 560 + (triggercutscene*2 - 540),-3,3,0,-1,1)
           draw_sprite_ext(sprite_get("cutscene"),4,(room_width/2 - 2200) + (triggercutscene -300)*30, room_height/2 - 160 + (triggercutscene*2 - 540),-3,3,0,-1,1) 
           shader_end();   
    } else if triggercutscene >= 341 {
         draw_sprite_ext(sprite_get("cutscene"),2,random_func(1,25,true) + (room_width/2 - 230) + floor(triggercutscene/2), random_func(2,25,true) + room_height/2  ,2,2,0,-1,1 - (triggercutscene - 341)/60)
         gpu_set_blendmode(bm_add);
             draw_sprite_ext(sprite_get("cutscene"),2, random_func(1,15,true) + (room_width/2 - 230) + floor(triggercutscene/2), random_func(2,15,true) + room_height/2  ,2,2,0,-1,1 - (triggercutscene - 341)/40)
          gpu_set_blendmode(bm_normal);
           draw_sprite_ext(sprite_get("cutscene"),4,(room_width/2 - 1200) + (triggercutscene - 300)*30, room_height/2 - 360 + (triggercutscene*2 - 540),-3,3,0,-1,1)
           draw_sprite_ext(sprite_get("cutscene"),4,(room_width/2 - 1700) + (triggercutscene - 300)*30, room_height/2 - 560 + (triggercutscene*2 - 540),-3,3,0,-1,1)
           draw_sprite_ext(sprite_get("cutscene"),4,(room_width/2 - 2200) + (triggercutscene - 300)*30, room_height/2 - 160 + (triggercutscene*2 - 540),-3,3,0,-1,1) 
    

        
    } 
 shader_end();   
 
if ((triggercutscene >= 120 && triggercutscene < 180) or  (triggercutscene >= 300 && triggercutscene < 320)) && triggercutscene%5 == 0 {
    sound_play(asset_get("sfx_forsburn_spew_end"),false,noone,.8,.85)
    sound_play(asset_get("sfx_forsburn_spew_end"),false,noone,1,1.2)
}


if string_count("sai", string_lower(name)) > 0 {
    line1 = "While thy branches mix with mine..."
    line2 = "...and our roots together join."
    regconized = 1
}
if string_count("anglara", string_lower(name)) > 0 {
    line1 = "You would fare better in other game."
    line2 = "le fishe."
    regconized = 1
}
if string_count("barr", string_lower(name)) > 0 {
    line1 = "Using a concept as a weapon, huh."
    line2 = "Interesting."
    regconized = 1
}
if string_count("bird", string_lower(name)) > 0 {
    line1 = "Not a guy."
    line2 = "Just a bird."
    regconized = 1
}
if string_count("callie", string_lower(name)) > 0 {
    line1 = "Well, better luck with someone else."
    line2 = "Cute tho."
    regconized = 1
}
if string_count("chimera", string_lower(name)) > 0 {
    line1 = "Are you still a stickman ?"
    line2 = "Sthiccman more likely."
    regconized = 1
}
if string_count("daora", string_lower(name)) > 0 {
    line1 = "Enough stepping and pounching."
    line2 = "Stay down."
    regconized = 1
}
if string_count("donyoku", string_lower(name)) > 0 {
    line1 = "Golden Blood? You aren't Rh null."
    line2 = "What a scam."
    regconized = 1
}
if string_count("dinock", string_lower(name)) > 0 {
    line1 = "Well that was rocky."
    line2 = "Begone."
    regconized = 1
}
if string_count("eirlys", string_lower(name)) > 0 {
    line1 = "Blizzard or a breeze, it doesn't matter."
    line2 = "Ya can't handle the heat."
    regconized = 1
}
if string_count("epinel", string_lower(name)) > 0 {
    line1 = "Ya satelite's extended warranty is expired."
    line2 = "Now pay with your soul."
    regconized = 1
}
if string_count("fernet", string_lower(name)) > 0 {
    line1 = "You live up to your mentor's name. But unfortunately..."
    line2 = "...You didn't surpassed her."
    regconized = 1
}
if string_count("ducky", string_lower(name)) > 0 {
    line1 = "We are good friend you know."
    line2 = "Just not on this timeline."
    regconized = 1
}
if string_count("glare", string_lower(name)) > 0 {
    line1 = "Fancy light show, but atlas..."
    line2 = "...Succumb to the void."
    regconized = 1
}
if string_count("hana", string_lower(name)) > 0 {
    line1 = "I would love to chill with these song."
    line2 = "Unfortunately, we had to fight."
    regconized = 1
}
if string_count("hexwhize", string_lower(name)) > 0 {
    line1 = "An Eldritch entity for a support eh?"
    line2 = "Not bad, but not good enough."
    regconized = 1
}
if string_count("hodan", string_lower(name)) > 0 {
    line1 = "Mhmmm..."
    line2 = "Monkey."
    regconized = 1
}
if string_count("tenru", string_lower(name)) > 0 {
    line1 = "Mhmmm..."
    line2 = "Monkey."
    regconized = 1
}
if string_count("jaunted", string_lower(name)) > 0 {
    line1 = "You must've been a stylish fellow back then."
    line2 = "Too bad, you are double dead now."
    regconized = 1
}
if string_count("lonin", string_lower(name)) > 0 {
    line1 = "Nice trick with the portal, I'll say."
    line2 = "But they are just trick."
    regconized = 1
}

if string_count("lyca", string_lower(name)) > 0 {
    line1 = "The ghosts you command are intriguing."
    line2 = "Now, you will become one."
    regconized = 1
}
if string_count("maverick", string_lower(name)) > 0 {
    line1 = "You are just Expand Kong from Hyper Beat 4"
    line2 = "Enough of your plastic limbs."
    regconized = 1
}
if string_count("mollo", string_lower(name)) > 0 {
    line1 = "Gun? Bat? Bomb? You had it?"
    line2 = "Sorry moth, no credit."
    regconized = 1
}
if string_count("mora", string_lower(name)) > 0 {
    line1 = "So it's the same type of stand as Elice's"
    line2 = "! ! ! MORA MORA MORA MORA MORA! ! !"
    regconized = 1
}
if string_count("mycolich", string_lower(name)) > 0 {
    line1 = "Wonder what would happen if I make a salad."
    line2 = "Time to find out."
    regconized = 1
}
if string_count("n/a", string_lower(name)) > 0 {
    line1 = "it's Nah, En Ay, or Neh Ah ?"
    line2 = "Why do I bother ? Begone."
    regconized = 1
}
if string_count("nade", string_lower(name)) > 0 {
    line1 = "The outcome was set when you brought an army."
    line2 = "...and I brought a demon."
    regconized = 1
}
if string_count("nate", string_lower(name)) > 0 {
    line1 = "Don't your arm get tired holding that pose ?"
    line2 = "Instant rest service."
    regconized = 1
}
if string_count("nova", string_lower(name)) > 0 {
    line1 = "You blink into the future, and do so blindly."
    line2 = "Your present has caught up to you."
    regconized = 1
}
if string_count("olympia", string_lower(name)) > 0 {
    line1 = "Well didn't expected less from you."
    line2 = "Good fight, and good night."
    regconized = 1
}
if string_count("pomme", string_lower(name)) > 0 {
    line1 = "Strong voice, dutiful guard, trained maneuver."
    line2 = "Unfortunately, this isn't your stage."
    regconized = 1
}
if string_count("00", string_lower(name)) > 0 {
    line1 = "What do you mean I got mail !?"
    line2 = "Open up!"
    regconized = 1
}
if string_count("yuuto", string_lower(name)) > 0 {
    line1 = "You were able to blast a moon at me."
    line2 = "In another timeline, sadly."
    regconized = 1
}
if string_count("rokesha", string_lower(name)) > 0 {
    line1 = "A dutiful agent, or it's just a facade ?"
    line2 = "Figure it out yourself."
    regconized = 1
}
if string_count("rykenburn", string_lower(name)) > 0 {
    line1 = "Mess with the bull and you get the horn."
    line2 = "But you choose to throw hands."
    regconized = 1
}
if string_count("sciros", string_lower(name)) > 0 {
    line1 = "That is enough living you are having."
    line2 = "Here's your return trip."
    regconized = 1
}
if string_count("suitcase", string_lower(name)) > 0 {
    line1 = "Look at how much souvenirs I'm getting."
    line2 = "Ooo Shiny!"
    regconized = 1
}
if string_count("torga", string_lower(name)) > 0 {
    line1 = "Hah, your back is literally swelling."
    line2 = "Take a rest old man."
    regconized = 1
}
if string_count("valkyrie", string_lower(name)) > 0 {
    line1 = "L.. M... all these size labels yet you don't dress."
    line2 = "Go shopping."
    regconized = 1
}
if string_count("zephrie", string_lower(name)) > 0 {
    line1 = "Finally catch you. Keep flying around."
    line2 = "Now get out of here."
    regconized = 1
}
 if regconized == 0  {
    if triggercutscene >= 120 && triggercutscene < 330  {
         if ((triggercutscene < 140 or triggercutscene > 300) and triggercutscene%4 < 2) or (triggercutscene >= 140 && triggercutscene <= 300) {
             if get_player_stocks(player) == 1 {
                 draw_debug_text( room_width/2 - 380, room_height/2 - 200 - floor(triggercutscene/5),"Well fought, but atlas.");
             } else if get_player_stocks(player) == 2 {
                 draw_debug_text( room_width/2 - 380, room_height/2 - 200 - floor(triggercutscene/5),"The void canvas gained one more stroke.");
             } else if get_player_stocks(player) >= 3 {
                 draw_debug_text( room_width/2 - 380, room_height/2 - 200 - floor(triggercutscene/5),"That's it? What a waste of time.");
             }
         }
       
    }
    
    if triggercutscene > 300 && triggercutscene < 390 {
        if ((triggercutscene < 320 or triggercutscene > 370) and triggercutscene%4 < 2) or (triggercutscene >= 320 && triggercutscene <= 370) {
             draw_debug_text( room_width/2 - 320, room_height/2 - 140 - floor(triggercutscene/5),"Perish.");
         }
    }
    
  } else {
      
      if triggercutscene >= 120 && triggercutscene < 330  {
         if ((triggercutscene < 140 or triggercutscene > 300) and triggercutscene%4 < 2) or (triggercutscene >= 140 && triggercutscene <= 300) {

                 draw_debug_text( room_width/2 - 380, room_height/2 - 200 - floor(triggercutscene/5), line1);
             
         }
       
    }
    
    if triggercutscene > 300 && triggercutscene < 390 {
        if ((triggercutscene < 320 or triggercutscene > 370) and triggercutscene%4 < 2) or (triggercutscene >= 320 && triggercutscene <= 370) {
             draw_debug_text( room_width/2 - 320, room_height/2 - 140 - floor(triggercutscene/5), line2);
         }
    }
      
  }

}