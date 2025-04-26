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
    if (window == 1 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        for(var i = 0; i < 3; i++){
        	if (grabbedCharacter[i] == -4){
        		grabbedCharacter[i] = hit_player_obj
        		grabbedCharacter[i].ungrab = 0;
        		break
        	}
        	
        }
	    // grabbedid.ungrab = 0;
    }
    if (window == 2){
		grabbedCharacter[0] = -4;
		grabbedCharacter[1] = -4;
		grabbedCharacter[2] = -4;
    }

}

if (my_hitboxID.attack == AT_USTRONG){
	if my_hitboxID.hbox_num == 1{
		hit_player_obj.x = x + (40 * hit_player_obj.spr_dir);
	}
}

if (my_hitboxID.attack == AT_NSPECIAL)
{
	
	sound_play(asset_get("mfx_ring_bell"));
	if (MUS_NOTE == 8){
		sound_play( sound_get("crit"));
		sound_play( asset_get("sfx_absa_kickhit"));
		BZ = 25;
		MUS_NOTE = 0;
		trigger = 1;
		var clockLockFx = spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, countClock);
		var fx = spawn_hit_fx(hit_player_obj.x+20, hit_player_obj.y+20, timeFreeze_hfx)
		fx.depth = depth - 1;
		clockLockFx.depth = depth - 1;
		var valueExists = false;
	
		for (var i = 0; i < ds_list_size(frozenPlayersArray); i++) {
		    if (ds_list_find_value(frozenPlayersArray, i) == hit_player_obj) {
		        valueExists = true;
		    }
		}
		if !(valueExists and value == self) {
			ds_list_add(frozenPlayersArray, hit_player_obj);
			// print("-----------------------------")
			// for (var i = 0; i < ds_list_size(frozenPlayersArray); i++) {
			//     print(ds_list_find_value(frozenPlayersArray, i));
			// }
		}	
		// }else{
		// 	print("player already exists in list")
		// }
		if hit_player_obj.id != id{
			hit_player_obj.frozenInTime = true;
			hit_player_obj.tickPlayed = false;
			hit_player_obj.prevFrame = 0;
			hit_player_obj.disappearFx = false;
			hit_player_obj.freezeFrames = 120;
			hit_player_obj.countDownFxFrame = 0;
			hit_player_obj.countDownFxAlpha = 1;
			sound_play(tick);			
		}

	}

}

EXTRA_TIME = 0;

if attack = AT_DSPECIAL && window == 2
{
 TIMED = 0;  
}

if MUS_NOTE = 8 
{
    if (attack = AT_UAIR) || (attack = AT_BAIR) || (attack = AT_FAIR) || (attack = AT_DAIR) || (attack = AT_NAIR)
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



