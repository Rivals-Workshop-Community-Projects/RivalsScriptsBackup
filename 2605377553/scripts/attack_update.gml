//dust
//good dust
switch(attack)
{
	case AT_JAB:
    	if (window == 1 && window_timer == 2)
    		spawn_base_dust(x+(7*spr_dir),y, "dash_start", -spr_dir);
    	break;
    	
    case AT_UTILT:
    	if (window == 1 && get_window_value(AT_UTILT, 1, AG_WINDOW_LENGTH)-1 )
    		spawn_base_dust(x+(12*-spr_dir),y, "dash", spr_dir);
    	break;
    	
    case AT_FTILT:
    	if (window == 1 && window_timer == 2)
    		spawn_base_dust(x+(10*-spr_dir),y, "dash_start", spr_dir);
    	break;
    	
    case AT_DATTACK:
    	if (window == 3 && window_timer == 8)
    		spawn_base_dust(x+(12*-spr_dir),y, "dash", spr_dir);
    	break;
	
	case AT_FSTRONG:
    	if (window == 2 && window_timer == 1)
    		spawn_base_dust(x+(75*spr_dir),y, "dash_start", -spr_dir);
    	break;
    	
    case AT_DSTRONG:
    	if (window == 5 && window_timer == 1)
    		spawn_base_dust(x+(64*spr_dir),y, "dash", -spr_dir);
    	if (window == 5 && window_timer == 1)
    		spawn_base_dust(x+(64*-spr_dir),y, "dash", spr_dir);
    	break;	
    	
    case AT_USTRONG:
    	if (window == 2 && window_timer == 1)
    		spawn_base_dust(x+(10*spr_dir),y, "dash", -spr_dir);
    	if (window == 2 && window_timer == 1)
    		spawn_base_dust(x+(10*-spr_dir),y, "dash", spr_dir);
    	break;	
    	
    case AT_USPECIAL:
    	if (window == 1 && window_timer == get_window_value(AT_USPECIAL, 1, AG_WINDOW_LENGTH)-1 ){
    			spawn_base_dust(x+(10*spr_dir),y+-24, "doublejump", spr_dir, 10*-spr_dir);
    	}
    	break;
    	
    case AT_FSPECIAL:
    	if (window == 4 && window_timer == 1){
    			spawn_base_dust(x+(10*-spr_dir),y-30, "doublejump", spr_dir, 75*-spr_dir);
    	}
    	if (window == 6 && window_timer == 1){
    			spawn_base_dust(x+(24*spr_dir),y, "land", spr_dir);
    			sound_play(asset_get("sfx_land_heavy"));
    	}
    	break;
}

//taunt
if attack == AT_TAUNT
{
	if window == 2 && window_timer == 2 && extra_col != 2 {
		sound_play(asset_get("mfx_unstar"))
	}
	if window == 1 && window_timer == 5 && extra_col == 2 or 
	window == 1 && window_timer == 5 && extra_col == 4 or window == 1 && window_timer == 5 && get_player_color( player ) == 22{
		sound_play(sound_get("nuzl_cough"))
	}
}


if attack == AT_JAB || attack = AT_DATTACK || attack = AT_FTILT|| attack = AT_UTILT|| attack = AT_DTILT|| 
attack = AT_FAIR|| attack = AT_NAIR|| attack = AT_BAIR|| attack = AT_DAIR|| attack = AT_UAIR || attack = AT_DSPECIAL||
attack = AT_USPECIAL|| attack = AT_NSPECIAL|| attack = AT_FSPECIAL
{
	    markConsumed = false;
}

if attack = AT_JAB|| attack = AT_DATTACK || attack = AT_FTILT|| attack = AT_UTILT|| attack = AT_DTILT||  attack = AT_BAIR|| attack = AT_DAIR|| attack = AT_UAIR || attack = AT_DSPECIAL||
attack = AT_USPECIAL|| attack = AT_FSPECIAL
{
	    breakable = 0;
		glassbreak = 0;
		knockback_adj = 1.00;
}


//hud offsets
if attack == AT_USTRONG
{
	    if window == 1{	
		hud_offset = -20;}	
	
	    if window >= 2{	
		hud_offset = 64;}
}

move_cooldown[AT_NSPECIAL] = 20;

//The hex is strong, it can be wielded by you, but be wary: you'll soon find yourself untethered to our own reality; the more you draw the frailer your body aches.
if attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG || attack == AT_NSPECIAL || attack == AT_FAIR || attack == AT_NAIR {
	knockback_adj = 1.15
	breakable = 1;
}

//cloud pushers
if attack == AT_FSTRONG || attack == AT_USTRONG || attack == AT_DSTRONG
{
	var fstrongEnd = 4;
	var fstrongWin = attack == AT_FSTRONG && window == fstrongEnd;
	
	var ustrongEnd = 4;
	var ustrongWin = attack == AT_USTRONG && window == ustrongEnd;
	
	var dstrongEnd = 6;
	var dstrongWin = attack == AT_DSTRONG && window == dstrongEnd;

	if(fstrongWin || ustrongWin || dstrongWin)
	{
		var curWin = fstrongEnd;
		curWin = attack == AT_USTRONG ? ustrongEnd : curWin;
		curWin = attack == AT_DSTRONG ? dstrongEnd : curWin;
		
	
		if (window_timer >= get_window_value(attack, curWin, AG_WINDOW_LENGTH))
		{
			if(markConsumed)
			{
				window = curWin+1;
				window_timer = 1;
				markConsumed = false;
				set_attack_value(AT_FSTRONG, AG_NUM_WINDOWS, 7);
				set_attack_value(AT_USTRONG, AG_NUM_WINDOWS, 7);
				set_attack_value(AT_DSTRONG, AG_NUM_WINDOWS, 9);
				
				with(obj_article1)
				{
					if (player_id == other && myLife > shrinkTime)
						myLife = shrinkTime;
				}
			}
			else 
				set_attack_value(attack, AG_NUM_WINDOWS, curWin);
		}
	}
	
}

//jab no parrye
if attack == AT_JAB
{
	was_parried = false;
}

//bair
if attack == AT_BAIR
{
  //hsp += 0.2*spr_dir
	if window == 2 && window_timer == 2 {
		sound_play(asset_get("sfx_abyss_explosion"))
	}
}


//dairgrab
//attack_update.gml
if (attack == AT_DAIR) {
	
	//reset 'grabbed_player' variables on the first frame when performing a grab.
    if (window == 1 && window_timer == 1) { 
    	grabbed_player_obj = noone; 
    	grabbed_player_relative_x = 0;
    	grabbed_player_relative_y = 0;
    }
	
}

if (attack == AT_NTHROW && instance_exists(grabbed_player_obj)) {
	can_fast_fall = false;
	hurtboxID.sprite_index = sprite_get("dair_grab_hurt");
}

if (attack == AT_NTHROW && instance_exists(grabbed_player_obj)) {
	
	//first, drop the grabbed player if this is the last window of the attack, or if they somehow escaped hitstun.
	if (window >= get_attack_value(attack, AG_NUM_WINDOWS)) { grabbed_player_obj = noone; }
	else if (grabbed_player_obj.state != PS_HITSTUN && grabbed_player_obj.state != PS_HITSTUN_LAND) { grabbed_player_obj = noone; }

	else {
		//keep the grabbed player in hitstop until the grab is complete.
		grabbed_player_obj.hitstop = 2;
		grabbed_player_obj.hitpause = true;
		
		//if this is the first frame of a window, store the grabbed player's relative position.
		if (window_timer <= 1) {
			grabbed_player_relative_x = grabbed_player_obj.x - x;
			grabbed_player_relative_y = grabbed_player_obj.y - y;
		}
		 
		//on the first window, pull the opponent into the grab.
		if (window <= 2) { 
			//change as necessary. by default, this grab will pull the opponent to (30, 0) in front of the player.
			var pull_to_x = 30 * spr_dir;
			var pull_to_y = 0;
			
			//using an easing function, smoothly pull the opponent into the grab over the duration of this window.
			var window_length = get_window_value(attack, window, AG_WINDOW_LENGTH);
			grabbed_player_obj.x = x + ease_circOut( grabbed_player_relative_x, pull_to_x, window_timer, window_length);
			grabbed_player_obj.y = y + ease_circOut( grabbed_player_relative_y, pull_to_y, window_timer, window_length);
		}
		
		if(!free && window < 3)
		{
			window = 3
			window_timer = 0;
		}
		//the above block can be copied for as many windows as necessary.
		//e.g. for an attack like Clairen's back throw, you might have an additional window where the grabbed player is pulled behind.
	}
}




//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL){
    trigger_b_reverse();
}

//smoke bomb
if (attack == AT_NSPECIAL)
{
	if window == 2
	{
		if window_timer == 1
		{
			var h = create_hitbox(AT_NSPECIAL, 1, x + (spr_dir*20), y-30);
			h.hsp = (spr_dir);
			h.walls = 1;
			h.grounds = 1;
			h.enemies = 1;
			h.spr_dir = spr_dir;
			
			nspecObj = h;
			nspecTimer = 0;
		}
		
		if window_timer == get_window_value(AT_NSPECIAL, 2, AG_WINDOW_LENGTH)-1
		{
			if special_down && nspecObj != noone && instance_exists(nspecObj) && nspecTimer < nspecTimerMax
			{
				window_timer--;
				nspecTimer++;
			}
			else
			{
				nspecObj = noone;
			}
		}
	}
}

//FSPECIAL
if (attack == AT_FSPECIAL){
	//turnonsuperwavedash = true;
    //if window == 4 {
    //	if uspeccancel = true {
    //    	can_shield = true;
    //    	turnonsuperwavedash = false;
    //	}  	
    //	
    //	
    //	if shield_down && uspechassmogboosted != true{
    //		var consumed = consumeSmokeCloud();
    //		uspechassmogboosted = true;
    //	}
    //	
    //	if consumed{
    //			can_shield = true;
    //	}
    //}
	
	if window <= 3 {
		hsp = hsp * 1.05
	}
	
	
	can_fast_fall = false;
    can_wall_jump = true;
	move_cooldown[AT_FSPECIAL] = 999;
	
	//fspecial cancels into aerials on hit (leap hit)
	if has_hit && !hitpause {
	can_attack = true;
	}
	
	if (window == 5 && get_window_value(AT_FSPECIAL, 5, AG_WINDOW_LENGTH)-1 ) 
	{
		window = 6;
		window_timer = 0;
	}
	
}

if (attack == AT_USPECIAL){
	turnonsuperwavedash = true;
    if window == 3{
    	if uspeccancel = true {
        	can_shield = true;
        	turnonsuperwavedash = false;
    	}  	
    	
    	
    	
    	if shield_down && uspechassmogboosted != true{
    		var consumed = consumeSmokeCloud();
    		uspechassmogboosted = true;
    	}
    	
    	if consumed{
    			can_shield = true;
    	}
    }
	
    can_fast_fall = false;
    can_wall_jump = true;
    
    
        if (window == 3) {
        var maxVsp = 1;
        var maxHsp = 4;
        var hspMod = 0.2;
        
        if ((down_down) && (!up_down)) {
            window = 5;
            window_timer = 0;
        }
    }
    
    if (window == 3) && (!free) {
        window = 5;
        window_timer = 0;
    }
	}

//nspec
if attack == AT_NSPECIAL
{
	if window <= 3{
		vsp = clamp(vsp, -4, 4)
		hsp = clamp(hsp, -0.1, 0)
	}
}


if attack == AT_EXTRA_1 && window == 1
{
	hijay = 1;
}
else{
	hijay = 0;
}


//Smoke
if attack == AT_DSPECIAL
{
	vsp = clamp(vsp, -3, 3)
	
	move_cooldown[AT_DSPECIAL] = 30;
	if window == 3 && window_timer == 1
	{
		//Edit these variables
		var maxSmoke = 2;
		var life = 60*20;
		var spd = 2;//This is how fast it accelerates.
		var drag = 0.05;//this is how fast it slows down
		var yOffset = -32;
		var dir = -45;//the starting dir for ordered math, facing right
		var dirAdd = 45;//the difference in degrees per smoke.
		
		//This is a for loop, it's made of 3 parts. we're using this to create the 4 additional smokes
		//var i=0; - this means that we're gonna keep track of i. i starts at 0
		//i<4; - this means that the for loop repeats 4 times. since i starts at 0, that means i will be 0, 1, 2, and 3. it never is 4.
		//i++ - this means i increases by 1 every loop.
		//knowing this, we can spawn the smoke in 4 directions using i to keep track of each direction
		for(var i=0; i<maxSmoke; i++)
		{
			//break if smoke unavailable
			if !canSmoke(1)
				break;
				
			//create smoke obj
			var mySmoke = createSmoke(x, y+yOffset, life);
			
			//this is the important line that handles how to spawn it in 4 directions.
			//90+(i*90) - this line in particular is the direction we will set the smoke to move to
			//we know that i will be 0,1,2, and 3 over the course of the loop
			//doing math, we can equate that this means the direction each smoke will spawn will be 0, 90, 180, and 270 (right, up, left, and down)
			var d = dir;
			if(spr_dir == -1)
				d = 150-d;
			d += (dirAdd*i) * spr_dir;
				
			setSmokeSpeed(mySmoke,spd,d,drag);
			setSmokeSeed(mySmoke,floor(x+y+i));
		}
	}
}

if attack == AT_DTILT
{
	if window == 4 && window_timer == 1 && canSmoke(1)
	{
		//Edit these variables
		var life = 60*20;
		var spd = 2;//This is how fast it accelerates.
		var drag = 0.05;//this is how fast it slows down
		var yOffset = -12;
		var xOffset = 72*spr_dir
		
		//This is a for loop, it's made of 3 parts. we're using this to create the 4 additional smokes
		//var i=0; - this means that we're gonna keep track of i. i starts at 0
		//i<4; - this means that the for loop repeats 4 times. since i starts at 0, that means i will be 0, 1, 2, and 3. it never is 4.
		//i++ - this means i increases by 1 every loop.
		//knowing this, we can spawn the smoke in 4 directions using i to keep track of each direction
		for(var i=0; i<1; i++)
		{
			var mySmoke = createSmoke(x+xOffset, y+yOffset, life);
			
		}
	}
}

if attack == AT_USPECIAL
{
	if window >= 4 && window_timer == 1 && canSmoke(1)
	{
		//Edit these variables
		var life = 60*20;
		var spd = 2;//This is how fast it accelerates.
		var drag = 0.05;//this is how fast it slows down
		var yOffset = 0;
		var xOffset = 32*spr_dir
		
		//This is a for loop, it's made of 3 parts. we're using this to create the 4 additional smokes
		//var i=0; - this means that we're gonna keep track of i. i starts at 0
		//i<4; - this means that the for loop repeats 4 times. since i starts at 0, that means i will be 0, 1, 2, and 3. it never is 4.
		//i++ - this means i increases by 1 every loop.
		//knowing this, we can spawn the smoke in 4 directions using i to keep track of each direction
		for(var i=0; i<1; i++)
		{
			var mySmoke = createSmoke(x+xOffset, y+yOffset, life);
			
		}
	}
}

//sounds
if (attack == AT_NAIR) {

    if (window == 2 && window_timer == 9) { 
    	sound_play(sound_get("heavyswing"), 0, noone, 0.8, 0.8)
    }
	
}

if (attack == AT_UTILT) {

    if (window == 1 && window_timer == 3 && !hitpause) { 
    	sound_play(asset_get("sfx_ell_steam_hit"), 0, noone, 0.5, 0.75)
    }
    if (window == 2 && window_timer == 2 && !hitpause) { 
    	sound_play(asset_get("sfx_ell_steam_hit"), 0, noone, 0.3, 0.9)
    }
	
}

#define createSmoke(smokeX, smokeY, life)
{
	var smoke = instance_create(smokeX,smokeY,"obj_article1");
	smoke.myLife = life;
	smoke.depth = depth+9;
	//smoke.sprite_index = sprite_get("smoke");
	
	//obama gaming
	array_push(smokeList,smoke);
	return smoke;
}

#define setSmokeSpeed(smoke, spd, dir, drag)
{
	smoke.spd = spd;
	smoke.dir = dir;
	smoke.drag = drag;
}

#define setSmokeSeed(smoke, seed)
{
	var wigFace = 1;
	if random_func(seed%16,1,true)
		wigFace = -1;
	smoke.wigSpd = (1+random_func(seed%16,1,false))*wigFace;
}

//how much from the max smoke to remove
#define consumeSmoke(amount)
{
	smokeAmount-=amount;
}

//check how much smoke we have in our stock, and return true if we do have enough
#define canSmoke(amount)
{
	var a = 0;
	for(var i=0; i<instance_number(obj_article1); i++)
	{
		var s = instance_find(obj_article1,i);
		if s.orig_player == player
			a++;
	}
	return a+amount <= maxSmoke;
}

#define insideCloud(obj)
{
	var o = obj;
	with(obj_article1)
	{
		if player_id == other && place_meeting(x,y,o)
			return true;
	}
	return false;
}

#define destroyTouchingSmoke()
{
	with(obj_article1)
	{
		if player_id == other && place_meeting(x,y,other) && myLife > shrinkTime
			myLife = shrinkTime;
	}
}

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

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;
var angle = argument_count > 4 ? argument[4] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
    
    //
    //bar-kun additions (note: idk how fg_sprite work)
    //
    case "dattack": dlen = 22; dfx = 12; dfg = 0; break;
    case "b_bounce_bg": dlen = 10; dfx = 7; dfg = 0; break;
	case "b_bounce_fg": dlen = 14; dfx = 8; dfg = 0; break;
    case "s_bounce_bg": dlen = 18; dfx = 7; dfg = 0; break;
    case "s_bounce_fg": dlen = 19; dfx = 8; dfg = 0; break;
    case "doublejump_small": 
    case "djump_small": dlen = 21; dfx = 16; dfg = 0; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = angle;
return newdust;
