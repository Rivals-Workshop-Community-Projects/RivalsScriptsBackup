//hud offsets
if attack == AT_USTRONG
{
	    if window == 1{	
		hud_offset = -20;}	
	
	    if window >= 2{	
		hud_offset = 64;}
}

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
					if (player_id == other && type == 0 && myLife > shrinkTime)
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

//dattack2 turnaround
if attack == AT_EXTRA_1
{
	hurtboxID.sprite_index = sprite_get("dattack2_hurt");
    if window == 1 && window_timer == 1 && !hitpause
     {
            spr_dir*=-1;
      }
}

//bair
if attack == AT_BAIR
{
  hsp += 0.1*spr_dir
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
	if window <= 3 {
		hsp = hsp * 1.05
	}
	
	
	can_fast_fall = false;
    can_wall_jump = true;
	move_cooldown[AT_FSPECIAL] = 999;
	
}

if (attack == AT_USPECIAL){
    if uspeccancel = true && window = 3{
        can_shield = true;
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

//Smoke
if attack == AT_DSPECIAL
{
	move_cooldown[AT_DSPECIAL] = 30;
	if window == 3 && window_timer == 1
	{
		depth = 10;
		
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
		depth = 10;
		
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
		depth = 10;
		
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


#define createSmoke(smokeX, smokeY, life)
{
	var smoke = instance_create(smokeX,smokeY,"obj_article1");
	smoke.myLife = life;
	smoke.depth = depth-2;
	smoke.sprite_index = sprite_get("smoke");
	
	var smokeShade = instance_create(smokeX,smokeY,"obj_article1");
	smokeShade.type = 1;
	smokeShade.depth = depth-1;
	smokeShade.sprite_index = sprite_get("smokeshade");
	smokeShade.par = smokeShade;
	smoke.top = smokeShade;
	
	var smokeBack = instance_create(smokeX,smokeY,"obj_article1");
	smokeBack.type = 2;
	smokeBack.depth = depth;
	smokeBack.sprite_index = sprite_get("smokeback");
	smokeBack.par = smoke;
	smoke.back = smokeBack;
	
	//obama gaming
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
		if s.orig_player == player && s.type == 0
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