//draw compatability copies


// if(state == PS_ATTACK_GROUND && attack == AT_EXTRA_2 && window == 3)
// {
//   // with(oPlayer)
//   // {
//   //   if(player == other.player)
//   //     continue;
//   //   draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,get_char_info(player, INFO_STR_NAME));
//   // }

// 	draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10, y-150, get_char_info(player, INFO_STR_NAME));
// 	draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10, y-130, ncode1);
// 	draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10, y-110, ncode2);
//   draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10, y-90, ncode3);
//   //TODO: ensure its always on screen
// }

// return;

//--------------------------------- spamton (credits to: @mallow @reigamogus @Ruber @SAKK @BernardO) ---------------------------------

if(state == PS_ATTACK_GROUND && attack == AT_EXTRA_2 && window == 5)
{
  // var adlen = state_timer
  for (i = 1; i < 4; i++) {
      // adlen -= get_window_value(attack, i, AG_WINDOW_LENGTH);
      // var adscale = clamp(adlen/4, 0, 1)
      var adscale = 0
      // if i == 1 || i == 2 {
      //     var adx = get_hitbox_value(attack, i*2, HG_HITBOX_X) + 20
      //     var ady = get_hitbox_value(attack, i*2, HG_HITBOX_Y)
      // } else if i == 3 {
      //     var adx = get_hitbox_value(attack, 5, HG_HITBOX_X)
      //     var ady = get_hitbox_value(attack, 5, HG_HITBOX_Y)
      // }
        // var adx = 96;
        // var ady = -64;
        var adx = 70;
        var ady = -112;
          if(i == 2)
          {
          adx += 16;
          ady += 8;
          }
          if(i == 3)
          {
          adx += 8;
          ady -= 8;
          }

      var rarity = ad_rarity[i-1]
      var adspr = sprite_get("ads")
      var ad_extra_len = array_length(ad_extra)
      if rarity == 1 {
          adspr = sprite_get("ads_rare")
      } else if ad_extra_len != 0 && (rarity >= 2 && rarity <= (array_length(ad_extra)*2)+1) {
          adspr = ad_extra[ad_opp_index]
      }
      
      if (i == 1 && draw_ad1) || (i == 2 && draw_ad2) || (i == 3 && draw_ad3)
      {
          // if window == 5 && window_timer > 8
          // {
          //     adscale = clamp(1 - ((window_timer-8)/10), 0, 1)
          //     if ad_extra_len != 0 && adspr == ad_extra[ad_opp_index]
          //     {
          //         ady -= adscale*34
          //         adx -= (adscale*48)*spr_dir
          //     }
          //     draw_sprite_ext(adspr, ad_indexes[i-1], x+spr_dir*adx,y+ady, adscale, adscale, 0, c_white, 1)
          // }
          // else if window > i
          // {
          //     if ad_extra_len != 0 && adspr == ad_extra[ad_opp_index]
          //     {
          //         ady -= adscale*34
          //         adx -= (adscale*48)*spr_dir
          //     }
          //     draw_sprite_ext(adspr, ad_indexes[i-1], x+spr_dir*adx,y+ady, adscale, adscale, 0, c_white, 1)
          // }
          if(i == 1 && draw_ad1)
              adscale = clamp(window_timer/8, 0, 1)
          if(i == 2 && draw_ad2)
              adscale = clamp((window_timer-135)/8, 0, 1)
          if(i == 3 && draw_ad3)
              adscale = clamp((window_timer-181)/8, 0, 1)
          if(window_timer > 230)
              adscale = clamp(1-((window_timer-230)/8), 0, 1)
              
        var spr_width = sprite_get_width(adspr);
        var spr_height = sprite_get_height(adspr);
        var x_center = x+spr_dir*adx;
        var y_center = y+ady;
        var x_adjusted = x_center - (spr_width * adscale * 0.5);
        var y_adjusted = y_center - (spr_height * adscale * 0.5);
        draw_sprite_ext(adspr, ad_indexes[i-1], x_adjusted, y_adjusted, adscale, adscale, 0, c_white, 1);
      }
  }
}


//--------------------------------- tco/toon link/miiverse ---------------------------------

if(state == PS_ATTACK_GROUND && attack == AT_EXTRA_2 && window == 4 && paperSprite != noone)
{
    var paperShowWindowTimer = 125;
    var paperAnimationShowSpeed = 15;
    var paperTimer = (window_timer - paperShowWindowTimer)/paperAnimationShowSpeed;
    
    var paperHideWindowTimer = 161;
    var paperAnimationHideSpeed = 10;
    if(window_timer > paperHideWindowTimer)
        paperTimer = 1-((window_timer - paperHideWindowTimer)/paperAnimationHideSpeed);
    var paperScale = clamp(paperTimer, 0, 1);
    if(paperType == "miiverse")
        paperScale *= 2;

    var spr_width = sprite_get_width(paperSprite);
    var spr_height = sprite_get_height(paperSprite);
    var spr_x_off = sprite_get_xoffset(paperSprite);
    var spr_y_off = sprite_get_yoffset(paperSprite);

    var x_center = view_get_xview()+view_get_wview()*0.5+spr_x_off*paperScale;
    var y_center = view_get_yview()+view_get_hview()*0.5+spr_y_off*paperScale-(paperType == "tco" ? 106 : 66);
    var x_adjusted = x_center - (spr_width * paperScale * 0.5);
    var y_adjusted = y_center - (spr_height * paperScale * 0.5);
    if(paperType == "tco")
    {
        draw_sprite_ext(paperSpriteBackground, 0, x_adjusted, y_adjusted, paperScale, paperScale, 0, c_white, 1);
        //TODO: tco does not use shader for other chars? but it works for many so might as well
        with(oPlayer)
        {
            if(id == other.paperPlayerId)
            {
                shader_start();
                draw_sprite_ext(other.paperSprite, other.paperIndex, x_adjusted+2, y_adjusted+2, paperScale, paperScale, 0, c_white, 1);
                shader_end();
            }
        }
    }
    if(paperType == "toonlink")
    {
        draw_sprite_ext(sprite_get("pictophotobase"), 0, x_adjusted, y_adjusted, paperScale, paperScale, 0, c_white, 1);
        draw_sprite_ext(paperSpriteBackground, 0, x_adjusted+5, y_adjusted+5, paperScale, paperScale, 0, c_white, 1);
        draw_sprite_ext(paperSprite, paperIndex, x_adjusted+5, y_adjusted+5, paperScale, paperScale, 0, c_white, 1);
    }
    if(paperType == "miiverse")
    {
        draw_sprite_ext(paperSprite, post_num, x_adjusted, y_adjusted, paperScale, paperScale, 0, c_white, 1);
    }
}


//--------------------------------- agent N ---------------------------------

//get the stuff
if nctimer > 0{    

if "nname" in nPlayerId {
var name = nPlayerId.nname 
}else {
var name = get_char_info(nPlayerId.player, INFO_STR_NAME);
}

var spr = get_char_info(nPlayerId.player, INFO_CHARSELECT);
var img = nPlayerId.select;
var scale = 2;//1+(nPlayerId.select >= 17);

if "ncode1" in nPlayerId && nPlayerId.select > 16 {
var codec1 = nPlayerId.ncode1;
var codec2 = nPlayerId.ncode2;
var codec3 = nPlayerId.ncode3;
    if(nPlayerId == id)//easter egg for when youre the only player
    {
        codec1 = "Behold the epitome of stealth and deception - yourself.";
        codec2 = "Go forth, you cunning Frenchman, to silence them and";
        codec3 = "let the shadows guide you to their unsuspecting backs!";
    }
}

terminalTextSuccess = "ncode1" in nPlayerId || nPlayerId.select <= 16;
if !terminalTextSuccess {
var codec1 = " ";
var codec2 = "Data unavailable";
var codec3 = " ";  
}

///Zetter
if "ncode1" not in nPlayerId && nPlayerId.select == 2 {
var codec1 = "General of Fire Kingdom, last seen near Abyss Gate.";
var codec2 = "High destructive abilities, capable of manipulate";
var codec3 = "fire element and amplify it upon physical contact.";  
}

///Orcane
if "ncode1" not in nPlayerId && nPlayerId.select == 3 {
var codec1 = "An entity with the codename of [WaterDog]";
var codec2 = "Highly dangerous individual with fluid-base";
var codec3 = "shapeshifting ability, don't lets your guard down.";  
}

///Wrastor
if "ncode1" not in nPlayerId && nPlayerId.select == 4 {
var codec1 = "Unknown Rank Agent of Air Armada.";
var codec2 = "Skilled in arcrobatic and aerial combat.";
var codec3 = "High in agility and stamina, low in vitality.";  
}

///Kragg
if "ncode1" not in nPlayerId && nPlayerId.select == 5 {
var codec1 = "Guardian of the Rock Wall.";
var codec2 = "He has immense strength and the ability";
var codec3 = "to build tactical rock-base constructs.";  
}

///Forb
if "ncode1" not in nPlayerId && nPlayerId.select == 6 {
var codec1 = "Traitor of Fire Kingdom(?), last seen in the East(?).";
var codec2 = "The credibility of target info and whereabout";
var codec3 = "is extremely low, approach with utmost caution.";  
}

///Maypul
if "ncode1" not in nPlayerId && nPlayerId.select == 7 {
var codec1 = "The Sylvan Watcher.";
var codec2 = "She can rush the opponent with her very high speed";
var codec3 = "and immobilize them with her whip attacks.";  
}

///Absa
if "ncode1" not in nPlayerId && nPlayerId.select == 8 {
var codec1 = "Architect of [???].";
var codec2 = "Her presence on the battle field is terrifying";
var codec3 = "due to the flexible nature of her electric power.";  
}

///Etalus
if "ncode1" not in nPlayerId && nPlayerId.select == 9 {
var codec1 = "Legendary warrior of the Glacial.";
var codec2 = "One of the last surviving members of the Harbor Guard";
var codec3 = "with ability to conjure icicles and freezing opponents.";  
}

///Ori
if "ncode1" not in nPlayerId && nPlayerId.select == 10 {
var codec1 = "Exotic organism made from unknown matter.";
var codec2 = " ";
var codec3 = "404 ";  
}

///Ranno
if "ncode1" not in nPlayerId && nPlayerId.select == 11 {
var codec1 = "The self-claimed 'Pacifist'.";
var codec2 = "Highly skilled martial artist with ability";
var codec3 = "to conjure poisonous darts and bubble traps.";  
}


///Clairen
if "ncode1" not in nPlayerId && nPlayerId.select == 12 {
var codec1 = "Mysterious Swordman(?gender?).";
var codec2 = "They have traces of strange matter on them,";
var codec3 = "suspected to be a time traveler.";  
}


///Sylvanos
if "ncode1" not in nPlayerId && nPlayerId.select == 13 {
var codec1 = "The Alpha plant.";
var codec2 = "Deity figure that became corrupt and tried to turn ";
var codec3 = "all of Aether into a forest. Destroy on sight";  
}

///Elliana
if "ncode1" not in nPlayerId && nPlayerId.select == 14 {
var codec1 = "A thief that stole Engr.Ayala's steam mech.";
var codec2 = "She uses the stolen mech to take revenge on Air Armada.";
var codec3 = "The mech is modified and armed with more arsenals.";  
}

///Shovel Knight
if "ncode1" not in nPlayerId && nPlayerId.select == 15 {
var codec1 = "Weilder of the [???] made from unknown marterial.";
var codec2 = " ";
var codec3 = "404";  
}

}


// if get_gameplay_time() < 40 {


//    if get_gameplay_time() % 7 < 3{
// with nPlayerId shader_start();       
// draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180,scale,scale,0,-1,.5);
// with nPlayerId shader_end();
//        draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -150,name);
//        draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -130,"Target In Sight");
//        shader_start();
//    draw_sprite(sprite_get("nc2"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180);
//    draw_sprite(sprite_get("nc1"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100),y - 162);
//    shader_end();
       
//    }


// }




// if get_gameplay_time() < 60 {
// with nPlayerId shader_start();      
// draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212,y - 180,scale,scale,0,-1,.2);
// with nPlayerId shader_end();    
//     if get_gameplay_time() % 7 > 3{
// with nPlayerId shader_start();           
// draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180,scale,scale,0,-1,.5);
// with nPlayerId shader_end();   


//         draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -150,name);
//         draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10 ,y -130,"Target In Sight");
//  shader_start();
//    draw_sprite(sprite_get("nc2"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180);
//    draw_sprite(sprite_get("nc1"),get_gameplay_time()/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 4,y - 162);
//  shader_end();  
        
        
// }
   
// }


if(state == PS_ATTACK_GROUND && attack == AT_EXTRA_2 && terminalOption == "TEXT" && nctimer > 0)
{



//draw the stuff.

with nPlayerId shader_start(); //this starts the color shader for the opponent's colors :)



if nctimer < 10 && nctimer % 6 < 3{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212 - nctimer,y - 170 - nctimer,scale,scale,0,-1,.2);
}

if nctimer > 10 && nctimer % 12 < 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 220,y - 180,scale,scale,0,-1,.5);
}

if nctimer > 20 && nctimer % 15 < 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180,scale,scale,0,-1,.5);
}

if nctimer > 30 && nctimer % 15 > 6{
draw_sprite_ext(spr,img,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180,scale,scale,0,-1,.5);
}

with nPlayerId shader_end();

var startDelay = 200;
if nctimer > startDelay{
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,name);
}

if nctimer > startDelay+30{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -130,codec1);  
}
if nctimer > startDelay+60{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -110,codec2);  
}
if nctimer > startDelay+90{
  draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -90,codec3);
}

// if cheapmode = 1 {
// if nctimer > 85{
//   draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 4 ,y -60,
//   "Target show signs of Anomaly, engage with lethal force?");
// }

// if nctimer > 95{
//   draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 100 ,y -45,
//   "           Y: Atk   N: Spec");
// }
// }

var dotDuration = 60;

if nctimer < startDelay && nctimer > 6{
    
// if nctimer % 12 < 12 {
if nctimer % dotDuration < dotDuration*0.3333 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database .");
}

// if nctimer % 12 < 8 {
else if nctimer % dotDuration < dotDuration*0.6666 {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database . .");
}

// if nctimer % 12 < 4 {
else if nctimer % dotDuration < dotDuration {
draw_debug_text(floor(room_width/2 + ((x - room_width/2)/2) - 100)+ 10  ,y -150,"Searching Database . . .");
}

}


shader_start();
if nctimer > 10 {
   if nctimer > 10 && nctimer % 15 < 6{
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 226,y - 180);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100) ,y - 162);
   }
   if nctimer > 10 && nctimer % 15 > 6{
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 222,y - 180);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 4,y - 162);
   }
   draw_sprite(sprite_get("nc1"),nctimer/4,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 2,y - 162);
} else {
   draw_sprite(sprite_get("nc2"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 212 - nctimer,y - 170 - nctimer);
   draw_sprite(sprite_get("nc1"),nctimer/3,floor(room_width/2 + ((x - room_width/2)/2) - 100)- 12 + nctimer,y - 152 - nctimer);
}


shader_end();


}



// shader_start();
// if draw_indicator {
// draw_sprite_ext(sprite_get("batt"), batt , x - 76 - hsp, y - 30 - vsp, 1, 1, 0 ,-1, .3 + move_cooldown[AT_TAUNT]/16  );
// }
// shader_end();



// #define DrawAtCenter(sprite, index, x_center, y_center, scale, scale, rotation, color, alpha)
// {
//     var spr_width = sprite_get_width(sprite);
//     var spr_height = sprite_get_height(sprite);

//     var x_adjusted = x_center - (spr_width * scale * 0.5);
//     var y_adjusted = y_center - (spr_height * scale * 0.5);

//     draw_sprite_ext(sprite, index, x_adjusted, y_adjusted, scale, scale, rotation, color, alpha);
// }