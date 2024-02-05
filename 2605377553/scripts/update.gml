user_event(9); //Leave this at the top of update.

// update.gml

with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        malsick = false;
    }
}

var sick_r = 0;
var sick_g = 0;
var sick_b = 0;

if (get_player_color(player) == 5 || get_player_color(player) == 7 || get_player_color(player) == 9 || 
	get_player_color(player) == 17 || get_player_color(player) == 24 ) {
		
	sick_r = get_color_profile_slot_r(get_player_color(player), 6)
	sick_g = get_color_profile_slot_g(get_player_color(player), 6)
	sick_b = get_color_profile_slot_b(get_player_color(player), 6)
}
else {
	sick_r = get_color_profile_slot_r(get_player_color(player), 7)
	sick_g = get_color_profile_slot_g(get_player_color(player), 7)
	sick_b = get_color_profile_slot_b(get_player_color(player), 7)
}

with (oPlayer)
{

	if (malsick && sickOwner == other.id && !hitpause)
	{
		
		if statustexttrigger == true {
			statuslog_timer = 50;
			statustexttrigger = false;
		}

		if statuslog_timer > 0 {
			statuslog_timer--;
		}
		
		if (state = PS_ATTACK_GROUND || state = PS_ATTACK_AIR) {
			statuslog_timer = 0;
		}
		
		drawOutline = true;

		
		//Remove Sickness and add grace time
		if sickTimer <= 0
		{
			malsick = false;
			sickTimer = 0;
			sickAfterGrace = sickAfterGraceMax;
			sickGrace = 0;
			resetOutline = true;
		}
		else
			sickTimer--;
			
		if sickTimer >= 300 {
			statuslog_timer = 0;
		}
		
		//Take damage when sick
		if (sickTimer % 90 == 0)
			take_damage(player, other.player, 1);
		
		//graphics
		outline_color = [sick_r, sick_g, sick_b];
		init_shader();
		
		//hexsparks
		with (other) {
			if (get_gameplay_time() % 2 == 0) {
				if (get_player_color( player ) == 0 || get_player_color( player ) == 5) {
					var hexsparks = spawn_hit_fx( other.x-40+random_func( 1, 80, true ), other.y-(char_height/2)-48+random_func( 8, 96, true ), hexspark_alt1 );
				}
				else {
					var hexsparks = spawn_hit_fx( other.x-40+random_func( 1, 80, true ), other.y-(char_height/2)-48+random_func( 8, 96, true ), hexspark_alt2 );
				}
				hexsparks.spr_dir = other.spr_dir;
			}
		}
	}
	if (!malsick && resetOutline) {
		outline_color = [ 0, 0, 0 ];
		init_shader();
	}
	
	
	//Deduct grace time
	if id != other && sickAfterGrace > 0
	{
		sickAfterGrace--;
		if sickAfterGrace < 0
			sickAfterGrace = 0;
		//print(sickAfterGrace);
	}
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
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 2 &&taunt_down&&down_down) or (get_gameplay_time() == 5 && get_player_color( player ) == 2 && get_player_name( player ) == "NUZLF" ){
	extra_col = 2
	white_flash_timer = 18;
	sound_play(sound_get("nuzl_viola"));
	init_shader();
}

//Doge (ex derby chamption)
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 19) or (get_gameplay_time() == 5 && get_player_color( player ) == 19 && get_player_name( player ) == "ELLIE" ){
	if (taunt_down&&down_down){
		extra_col = 3
		white_flash_timer = 18;
		sound_play(asset_get("sfx_holy_tablet_appear"));
		init_shader();
	}
}

//Nuzl (weeb shit)
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 20 && taunt_down&&down_down) or (get_gameplay_time() == 5 && get_player_color( player ) == 20 && get_player_name( player ) == "NUZLF" ){

	extra_col = 4
	white_flash_timer = 18;
	sound_play(sound_get("nuzl_oj"));
	init_shader();

}

//TAG
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 4){
	if (taunt_down&&down_down){
		extra_col = 5
		white_flash_timer = 18;
		sound_play(sound_get("jerma"));
		init_shader();
	}
}

//Something
if (extra_col == 0 && get_player_color( player ) == 10){
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

//Fungus (seyshun complex)
if (state==PS_SPAWN && extra_col == 0 && get_player_color( player ) == 6 &&taunt_down&&down_down) or (get_gameplay_time() == 5 && get_player_color( player ) == 6 && get_player_name( player ) == "FUNGUS" ){
	extra_col = 8
	white_flash_timer = 18;
	sound_play(sound_get("fungus_alt"));
	init_shader();
}

///////////////////////
///////////////////////
///Champion's Key////

if (get_gameplay_time() == 1 && get_player_color( player ) == 24){
	switch(get_player_name( player ) ){
		case "NUZLF":
		extra_col_key = 2
		white_flash_timer = 20;
		sound_play(sound_get("nuzl_viola"));
		init_shader();	
		break;
		
		case "ELLIE":
		extra_col_key = 3
		white_flash_timer = 20;
		sound_play(asset_get("sfx_holy_tablet_appear"));
		init_shader();	
		break;
		
		case "FUNGUS":
		extra_col_key = 8
		white_flash_timer = 20;
		sound_play(sound_get("fungus_alt"));
		init_shader();
		break;
		
		case "JOHN":
		case "DAVE":
		case "KARKAT":
		case "ANDREW":
		case "HUSSIE":
		case "TROLL":
		case "DOOM":
		extra_col_key = 97
		white_flash_timer = 20;
		sound_play(sound_get("it's a secret!"));
		init_shader();
		break;
		
		case "MAYA":
		case "MIA":
		case "NICK":
		case "ACE":
		case "APOLLO":
		case "BURGER":
		case "BORGAR":
		extra_col_key = 98
		white_flash_timer = 20;
		sound_play(sound_get("it's a secret!"));
		init_shader();
		break;
		
		case "OW":
		case "OUCH":
		case "STRAIN":
		case "DEATH":
		case "HUNGER":
		case "WAR":
		extra_col_key = 99
		white_flash_timer = 20;
		sound_play(sound_get("it's a secret!"));
		init_shader();
		break;
		
		case "TWENNY":
		case "ROBOT":
		case "HEX":
		extra_col_key = 93
		white_flash_timer = 20;
		sound_play(sound_get("it's a secret!"));
		init_shader();
		break;
		
		case "GRACE":
		case "MAGIC":
		case "MAGICAL":
		case "BUSINESS":
		extra_col_key = 94
		white_flash_timer = 20;
		sound_play(sound_get("it's a secret!"));
		init_shader();
		break;
		
		case "KOCA":
		extra_col_key = 95
		white_flash_timer = 20;
		sound_play(sound_get("it's a secret!"));
		init_shader();
		break;
		
		case "WASTE":
		case "WASTEY":
		case "VALYA":
		extra_col_key = 96
		white_flash_timer = 20;
		sound_play(sound_get("it's a secret!"));
		init_shader();
		
	}
}

//congrats, your diligence reading through dumbass code has earned you: the passwords for a few secret alts! you probably wont use them, but check them out by changing your in-game tag to the keys!


//TAS
if (get_player_color( player ) == 25) { //THE RAINBOW FOR THE LGBTQ?

    hue_offset+=hue_speed;
    hue_offset=hue_offset mod 255; //keeps hue_offset within the 0-255 range

    color_rgb=make_color_rgb(249, 74, 255); //input rgb values here, uses rgb to create a gamemaker colour variable
    color_rgb2=make_color_rgb(74, 255, 143); //input rgb values here, uses rgb to create a gamemaker colour variable
    color_rgb3=make_color_rgb(74, 158, 255); //input rgb values here, uses rgb to create a gamemaker colour variable

    
    hue=(color_get_hue(color_rgb)+hue_offset) mod 255; //finds the hue and shifts it
    hue2=(color_get_hue(color_rgb2)+hue_offset) mod 255; //finds the hue and shifts it
    hue3=(color_get_hue(color_rgb3)+hue_offset) mod 255; //finds the hue and shifts it
    
    color_hsv=make_color_hsv(hue,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    color_hsv2=make_color_hsv(hue2,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    color_hsv3=make_color_hsv(hue3,color_get_saturation(color_rgb),color_get_value(color_rgb)); //creates a new gamemaker colour variable using the shifted hue
    
    
    set_color_profile_slot( 25, 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_color_profile_slot( 25, 5, color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2));//uses that variable to set the slot's new colours
    set_color_profile_slot( 25, 7, color_get_red(color_hsv3),color_get_green(color_hsv3),color_get_blue(color_hsv3)); //uses that variable to set the slot's new colours
    
    set_article_color_slot( 3, color_get_red(color_hsv),color_get_green(color_hsv),color_get_blue(color_hsv)); //uses that variable to set the slot's new colours
    set_article_color_slot( 5, color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2)); //uses that variable to set the slot's new colours
    set_article_color_slot( 7, color_get_red(color_hsv2),color_get_green(color_hsv2),color_get_blue(color_hsv2)); //uses that variable to set the slot's new colours
    
    init_shader();
}

//smoke consume (airdog)
if state == PS_AIR_DODGE
{
    if state_timer == 0
    {
    	if get_player_color(player) == 9 {
    		sound_play(sound_get("dashing_mad"));  
    	}
    	uspeccancel = false
		var consumed = consumeSmokeCloud();
    	
        if consumed or turnonsuperwavedash = true{
            air_dodge_speed = 12;
            wave_land_adj = 1.2;
            }
        else{
            air_dodge_speed = 7.5;
            awave_land_adj = 1.35; 
        }	
			
        if consumed or turnonsuperwavedash = true
        	if get_player_color(player) == 9{
        		sound_play(sound_get("getboosted_mad"));	
        	}
        	else
				sound_play(sound_get("airdodgeboost"));
    }
}

if get_player_color(player) == 9{
	if state == PS_RESPAWN
	{
	    if state_timer == 0
	    {
	    		sound_play(sound_get("revive_mad"));  
	    }
	}
	
	//celeste from hit game celeste
	if state == PS_AIR_DODGE {
	    	bluehairandpronouns = true;
	    }
	else if (state == PS_LAND or state == PS_WAVELAND) &&  bluehairandpronouns == true{
	    	bluehairandpronouns = false;
	    	white_flash_timer = 7;
	    }

}

//afterimages
if(state == PS_AIR_DODGE){
  	
    if air_dodge_speed == 12 {
    	if get_gameplay_time() % 8 == 0 {
    	    after_image_timer++;
    	    if(after_image_timer == 10) after_image_timer = 0;
    	    after_image[after_image_timer] = {sprite_index:sprite_index, image_index:image_index, x:x, y:y - 4, spr_dir:spr_dir, alpha:8, spr_angle:0, xscale:1, yscale:1};
    	}
    }

}

//fade handler
for (var i = 0; i < 10; i++){
   if(after_image[i] != -1 && get_gameplay_time() % 2 == 0){
       after_image[i].alpha--;
       if(after_image[i].alpha == 0){
           after_image[i] = -1;
       }
   } 
}





//alt portrait
if (get_player_color(player) == 4 || get_player_color(player) == 5 || 
	get_player_color(player) == 7 || get_player_color(player) == 9 || get_player_color(player) == 15 ||
	get_player_color(player) == 20) || (get_player_color(player) == 24 && (extra_col_key == 0 || extra_col_key == 8)) ||
	(get_player_color(player) == 6 && extra_col == 8){
set_victory_portrait( sprite_get( "portrait_alt" ));
init_shader();
}
if (get_player_color(player) == 9){
	set_victory_portrait( sprite_get( "portrait_madeline" ));
}
if (get_player_color(player) == 10){
	set_victory_portrait( sprite_get( "portrait_mari" ));
}
if (get_player_color(player) == 23){
	set_victory_portrait( sprite_get( "portrait_genny" ));
}
if (get_player_color(player) == 25){
	set_victory_portrait( sprite_get( "portrait_hopes" ));
}

//handle death and strongs
with (oPlayer){

	//make sure some values are reset upon death
    if (state == PS_RESPAWN || state == PS_SPAWN || state == PS_DEAD)
	{
        malsick = false;
		sickTimer = 0;
		sickAfterGrace = sickAfterGraceMax;
		strongStunnedTimer = 0;
		sickGrace = 0;
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

//remove smokes that no longer exist
var tempList = [];
for (var i=0; i<array_length(smokeList); i++)
{
	if instance_exists(smokeList[i])
		array_push(tempList,smokeList[i]);
}
smokeList = array_clone(tempList);

//handle smoke collision
with(oPlayer)
{	
	//ignore if it's us
	if id == other
		continue;
		
	if "malsick_immune" in self and malsick_immune
		continue;

	//fail to get the foe sick if theyre invincible or immune
	if invincible
	{
		sickGrace = 0;
		continue;
	}
	
	//Check if the player is touching any smoke
	var touched = false;
	for (var i=0; i<array_length(other.smokeList); i++)
	{
		if place_meeting(x,y,other.smokeList[i])
		{
			touched = true;
			break;
		}
	}

	//perform touching events
	if touched
	{
		//allow a grace time to not get sick
		if sickGrace >= sickGraceMax && sickAfterGrace <= 0
		{
			//we're not sick yet. play this once
			if !malsick 
			{
				statustexttrigger = true;
				with other
				{
					sound_play(sound_get("sick"));
				}
			}
			
			malsick = true;
			sickOwner = other;
			sickTimer = sickTimerMax; 
			sickGrace = 0;
			sickAfterGrace = 0;
		}
		else
		{
			sickGrace++;
		}
	}
	else
	{
		sickGrace = 0;
	}
}

//fspecial reset
if !free || state == SC_HITSTUN || state == PS_WALL_JUMP || state = PS_HITSTUN_LAND
|| state = PS_TUMBLE || state = PS_PRATFALL|| state = PS_PRATLAND{
move_cooldown[AT_FSPECIAL] = 0;
uspechassmogboosted = false;
turnonsuperwavedash = false;
}

if state == SC_AIR_NEUTRAL || state == SC_GROUND_NEUTRAL || state == PS_WALL_JUMP || state == PS_PRATFALL|| state == PS_PRATLAND|| state == PS_IDLE || state == PS_IDLE_AIR{
	breakable = false;
}



//whether the player is inside smoke, and consumes it. returns true if smoke was consumed


//if (galaxy_timer == 0 and instance_exists(hit_player_obj) and hit_player_obj.activated_kill_effect)
//{
//	if (get_player_color( player ) == 22 or extra_col == 2 or extra_col == 4){
//    galaxy_timer = 90;
//	}
//}
//galaxy_timer = max(galaxy_timer-1,0)


#define consumeSmokeCloud()
{
	var consumed = false;
	var closest = noone;
	for(var i=0; i<instance_number(obj_article1); i++)
	{
		var o = instance_find(obj_article1,i);
		if o.player_id == id && place_meeting(x,y,o) && o.myLife > o.shrinkTime
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