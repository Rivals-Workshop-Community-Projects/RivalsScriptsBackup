// update.gml

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        malsick = false;
    }
}

with (oPlayer) {
	if (malsick && sickOwner == other.id && !hitpause) {		
		sickTimer--;
	
		if sickTimer <= 0
		{
			malsick = false;
			sickAfterGrace = sickAfterGraceMax;
		}
		
		if (sickTimer % 45 == 0) take_damage(player, other.player, 1);		
	}
	
	if id != other && sickAfterGrace > 0
		sickAfterGrace--;
}

//secret colors
//me and the boys
if (state==PS_SPAWN && extra_col == 0){
	if (taunt_down&&down_down){
		extra_col = 1
		white_flash_timer = 18;
		sound_play(sound_get("jerma"));
		init_shader();
	}
}

//smoke consume (airdog)
if state == PS_AIR_DODGE
{
    if state_timer == 0
    {
    	uspeccancel = false
		var consumed = consumeSmokeCloud();
    	
        if consumed
            air_dodge_speed = 12;
        else
            air_dodge_speed = 7.5;
			
        if consumed
            wave_land_adj = 1.2;
        else
            awave_land_adj = 1.35;   
			
        if consumed
			sound_play(sound_get("airdodgeboost"));                
    }
}

//celeste from hit game celeste
if has_airdodge = false && get_player_color(player) == 8 {
    	set_character_color_slot(2,79, 172, 233 ); //Hair //hair goes blue!!!
    }
if state == PS_LAND && get_player_color(player) == 8 {
    	set_character_color_slot(2, 236, 89, 68 ); //Hair //hair goes blue!!!
    }


//alt portrait
if (get_player_color(player) == 3 || get_player_color(player) == 4 || 
	get_player_color(player) == 6 || get_player_color(player) == 15 ||
	get_player_color(player) == 18){
set_victory_portrait( sprite_get( "portrait_alt" ));
init_shader();
}


//stuff
with (oPlayer){

	//make sure some values are reset upon death
    if (state == PS_RESPAWN || state == PS_SPAWN || state == PS_DEAD) && sickOwner == other
	{
        malsick = false;
		sickAfterGrace = sickAfterGraceMax;
		strongStunnedTimer = 0;
    }
	
	//stun player from being struck by a super strong
	if(id != other)
	{
		if strongStunnedTimer > 0
		{
			can_move = false;
			can_jump = false;
			can_attack = false;
			set_state(PS_HITSTUN);
			strongStunnedTimer--;
		}
	}
}

//fspecial reset
if !free || state == SC_HITSTUN || state == PS_WALL_JUMP {
move_cooldown[AT_FSPECIAL] = 0;
}

//whether the player is inside smoke, and consumes it. returns true if smoke was consumed
#define consumeSmokeCloud()
{
	var consumed = false;
	var closest = noone;
	for(var i=0; i<instance_number(obj_article1); i++)
	{
		var o = instance_find(obj_article1,i);
		if o.player_id == id && place_meeting(x,y,o) && o.type == 0 && o.myLife > o.shrinkTime
		{
			var distO = point_distance(x,y,o.x,o.y);
			if closest == noone
				closest = o;
			else
			{
				var distC = point_distance(x,y,closest.x,closest.y);
				if distO < distC
					closest = o;
			}
		}
	}
	
	if closest != noone
	{
		closest.myLife = closest.shrinkTime;
		closest.isShrinking = true;
		consumed = true;
	}
	
	return consumed;
}