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

//Mariiii
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 9 && get_gameplay_time() == 5){
	sound_play(sound_get("mari"));
}

//secret colors
//Sun (clown)
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 13 ){
	if (taunt_down&&down_down){
		extra_col = 1
		white_flash_timer = 18;
		sound_play(sound_get("jerma"));
		init_shader();
	}
}

//Nuzl (viola player)
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 2){
	if (taunt_down&&down_down){
		extra_col = 2
		white_flash_timer = 18;
		sound_play(sound_get("nuzl_viola"));
		init_shader();
	}
}

//Doge (ex derby chamption)
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 5){
	if (taunt_down&&down_down){
		extra_col = 3
		white_flash_timer = 18;
		sound_play(asset_get("sfx_holy_tablet_appear"));
		init_shader();
	}
}

//Nuzl (weeb shit)
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 20){
	if (taunt_down&&down_down){
		extra_col = 4
		white_flash_timer = 18;
		sound_play(sound_get("nuzl_oj"));
		init_shader();
	}
}

//TAG
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 3){
	if (taunt_down&&down_down){
		extra_col = 5
		white_flash_timer = 18;
		sound_play(sound_get("jerma"));
		init_shader();
	}
}

//Something
if (extra_col == 0 && get_player_color( player ) == 9){
	if down_down {
	move_cooldown[AT_TAUNT] = 10
	}
	
	if (taunt_down&&down_down){
		extra_col = 6
		white_flash_timer = 35;
		sound_play(sound_get("something"));
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
    	
        if consumed{
            air_dodge_speed = 12;
            wave_land_adj = 1.2;
            }
        else{
            air_dodge_speed = 7.5;
            awave_land_adj = 1.35; 
        }	
			
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
	get_player_color(player) == 6 || get_player_color(player) == 8 || get_player_color(player) == 15 ||
	get_player_color(player) == 20 || get_player_color(player) == 12){
set_victory_portrait( sprite_get( "portrait_alt" ));
init_shader();
}


//stuff
with (oPlayer){

	//make sure some values are reset upon death
    if (state == PS_RESPAWN || state == PS_SPAWN || state == PS_DEAD)
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
if !free || state == SC_HITSTUN || state == PS_WALL_JUMP || state = PS_HITSTUN_LAND
|| state = PS_TUMBLE || state = PS_PRATFALL|| state = PS_PRATLAND{
move_cooldown[AT_FSPECIAL] = 0;
}

//bair reset
if !free || state == SC_HITSTUN || state = PS_HITSTUN_LAND
|| state = PS_TUMBLE || state = PS_PRATFALL|| state = PS_PRATLAND{
bairused = false;
}

//whether the player is inside smoke, and consumes it. returns true if smoke was consumed


if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
{
	if (get_player_color( player ) == 22 or extra_col == 2 or extra_col == 4){
    galaxy_timer = 90;
	}
}
galaxy_timer = max(galaxy_timer-1,0)


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