//hit_player - called when one of your hitboxes hits a player
with hit_player_obj
{
    if clone == true
    { 
        other.HITD = 1;
        other.EXTRA_TIME = 0;
        other.trigger = 0;
        other.grabbedid = noone;
        other.grabbedid.ungrab = 0; //fuck forsburn's clone omg skjddkjujih
    }
    else
    {
        other.HITD = 1;
    }
}

//hit_player.gml
if (my_hitboxID.attack == AT_FSPECIAL){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	    grabbedid.ungrab = 0;
    }

}




EXTRA_TIME = 0;

if attack = AT_DSPECIAL && window == 2
{
 TIMED = 0;  
}

if MUS_NOTE = 8 
{
    if (attack = AT_UAIR) || (attack = AT_BAIR) || (attack = AT_FAIR) || (attack = AT_DAIR) || (attack = AT_NAIR)  || (attack = AT_NSPECIAL) 
    {
       sound_play( sound_get("crit"));
       sound_play( asset_get("sfx_absa_kickhit"));
       BZ = 25;
       MUS_NOTE = 0;
       trigger = 1;
    }
else
    {
     trigger = 0;
    }
}

else

{
// set the character's outline color back to black, but don't tell the shader that you changed it. This way, if the character action is interrupted before you can manually set the outline color back to black, it will still change back:
outline_color = [ 0, 0, 0 ];
}



////detect other player
/*if (attack == AT_EXTRA_1)
{
    with (oPlayer)
    {
      if(id != other.id)
         {
          if (select - 1 < 15 && select - 1 > 0 )
              {
               other.etcharactertheme = select - 1 
              }
			if (url == 1865940669)
			        { //Sandbert
                    getcharactertheme = 15;
                    }
                
                if (url == 1866016173)
                    { //Guadua
                    other.getcharactertheme = 16;
                    }
                if (url == 1905208125)
                    { //Hime
                    other.getcharactertheme = 17;
                    }    
                 if (url == 1869814191)
                    { //SA-
                    other.getcharactertheme = 18;
                    }    
         }
    }
}

if



