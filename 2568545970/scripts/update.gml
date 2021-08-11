//if (state == "taunt" && state_timer == 36)
//	sound_play(sound_get("taunt"));
	
//if instance_exists(owner) with (owner) 
	//owner.x -= 1;
	
//https://rivalsofaether.com/buddies/

//TODO: generalise code using get sprite length and "s" variable to call sprite_get once 

s = state;
if(waiting && s != "taunt")
	waitingAttempt = true;
if(waitTimer != 0 && waitTimer < waitLength * waitSpd && s != "taunt")
{	
	s = "wait";
	waitingAttempt = false;
}

if(waitingAttempt && sLast == "idle" && img_ind%idleLength == 0)
{	
	s = "wait";
	waitingAttempt = false;
}

	
//if(runTimer != 0 && runTimer < runLength * runSpdCurr && s != "taunt")
if(runTimer != 0 && runTimer < runLength * runSpdCurr && image_index != runLength &&  s != "taunt")
	s = "run";
	
if(teetering && s != "taunt")
	s = "ledge";
	
	
with (owner)//other = this buddy
{
	//print(string(state == PS_DEAD) + " ... " + string(state == PS_RESPAWN));
	if(state == PS_DEAD)
		other.ownerDead = true;
	if(state == PS_RESPAWN)
		other.ownerDead = true;
		
	if(state != PS_RESPAWN && prev_state == PS_RESPAWN)
		other.ownerRespawned = true;
}
    
if(ownerDead)
{
	if(y != floorY)//sLast == "taunt")
	{	
		y += 2;
		if(y > floorY)
			y = floorY;
		state = "idle";
	}
	
	s = "dead";
	run_speed = 0;
	deadTimer++;
    sprite_index = sprite_get(s);
    
    if(deadTimer < 12 * deadSpd)
    	image_index = floor(12 * deadTimer / (12 * deadSpd));
    else
    {	
    	image_index = 11;
    	if(ownerRespawned)
    		ownerDead = false;
    }
}
else if (ownerRespawned)
{
	s = "respawn";
	run_speed = 0;
	respawnTimer++;
    sprite_index = sprite_get(s);
    
    if(respawnTimer < 31 * respawnSpeed)
    	image_index = floor(31 * respawnTimer / (31 * respawnSpeed));
    else//if(respawnTimer > 31 * respawnSpeed)
    {
		ownerRespawned = false;
		respawnTimer = 0;
		deadTimer = 0;
		state_timer = 0;
		tauntTimer = 0;
    	sprite_index = sprite_get("idle");
    	s = "idle";
    }
}
	
if(spr_dir != spr_dir_last || turnTimer < turnSpd)
{
	if(s != "run" && s != "dead" && s != "respawn")
	{
		//print("turn " + string(s) + " / " + string(spr_dir) + " / " + string(spr_dir_last));
		s = "turn";
		if(spr_dir != spr_dir_last)
			turnTimer = 0;
		if(turnTimer < turnSpd)
			turnTimer++;
	}
	else //keep run in same dir to finish anim
	{
		//print("turn prevented " + string(s) + " / " + string(spr_dir) + " / " + string(spr_dir_last));
		spr_dir = spr_dir_last;
	}
}


	
if(startTimer < startDur)
{
	s = "intro";
	run_speed = 0;
	startTimer++;
	state_timer = 0;
    sprite_index = sprite_get(s);
    if(startTimer > 30)
    	image_index = floor(29 * startTimer / (29 * introSpd));
    else
    	image_index = 1;
}

//print(s + " / " + state + " " + string(runTimer) + " ... " + string(spr_dir) + " / " + string(spr_dir_last));

if(s == "run")
{
	runTimer++;
	runTimerTotal++;
	//state_timer = 0;
    sprite_index = sprite_get(s);
	if(runTimer > runLength * runSpdCurr)
		runTimer = 0;
}
else
{
	runTimer = 0;
	runTimerTotal = 0;
}

if (s == "idle")
	idleTimer++;
else
	idleTimer = 0;

	
if (s == "wait")
{
    sprite_index = sprite_get("wait");
	waitTimer++;
}
else
{    
	waitTimer = 0;
	if(sLast == "wait")
		state_timer = 0;
}
    
if (s == "ledge")
    ledgeTimer++;
else
    ledgeTimer = 0;
    
    

//hybrid buddy (fly with uspecial), bad idea... doesn't get down from stuff, would need custom gravity...
/*if(!owner.free && owner.y + 10 < y)
	s = "flying";
if(s == "flying")
{
	type = 1;
	run_speed = 1	
	max_run_dist = 10;
}
else
{
	type = 0;
	max_run_dist = 100;
}*/


var r = runTimerTotal;
if(r >= runSpdMaxTimer)
	r = runSpdMaxTimer;
if(s == "run")
	run_speed = run_speed_base + r * runAccel;
runSpdCurr = runSpdBase - r * runAnimMul;

if (s == "run")
{
    image_index = floor(runLength * runTimer / (runLength * runSpdCurr));
    if(state != "run")//actual walk already done
    	x += spr_dir * run_speed;
}

//if (s == "turn")
//    image_index = floor(5 * turnTimer / (5 * turnSpd));
    
if (s == "idle")
    //image_index = floor(image_number * state_timer / (image_number * idleSpd));
    image_index = floor(idleLength * idleTimer / (idleLength * idleSpd));
    
if (s == "wait")
    image_index = floor(waitLength * waitTimer / (waitLength * waitSpd));
    
if (s == "ledge")
    image_index = floor(7 * ledgeTimer / (7 * ledgeSpd));
    
if (s == "taunt")
{  
	tauntTimer++;
    
    if(tauntTimer < 10)
    	y = y;
    else if(tauntTimer < 15)
        y -= 3;
    else if(tauntTimer < 20)
        y -= 2;
    else if(tauntTimer >= 246)
        y += 1.5;
    else
        y = floorY - 24 - sin(tauntTimer * 0.125) * 4;
        
    sprite_index = sprite_get("taunt");
	image_index = floor(600 * tauntTimer / (600 * tauntSpd));
	if(image_index >= 600)
	{	
		state = "idle";
		tauntTimer = 0;
    	y = floorY;
	}
	//print(tauntTimer);
}

img_ind = image_index;
spr_ind = sprite_get(s);
sprite_index = asset_get("empty_sprite"); //draw manually in post instead to negate bugs like turn around during walk overshoot
//-> why did this mess up idle / wait? redo everything without sprite_idnex and image_index?

spr_dir_last = spr_dir;
sLast = s;


/*
//if (instance_exists(owner))
with (asset_get("oPlayer"))
{
    //with (owner) 
    if (id == other.owner)
    {
		//draw_sprite_ext(sprite_get(other.s), 0, other.x, other.y-64, other.spr_dir, 1, 0, c_white, 1);
		draw_sprite(sprite_get(other.s), 0, other.x, other.y-64);
		print("D");
	}
}
*/

/*
if (state == "idle" && wait) {
	spr_dir = 1; // Always face right for this animation
	if (state_timer == 45) sound_play(sound_get("wait"));
	if (state_timer == 90) sound_play(asset_get("sfx_abyss_spawn"));
}*/


/*if (state == "taunt"){
    image_index = floor(image_number * state_timer / (image_number * 2));
    if (state_timer == 50){
    set_state("idle");
    }
}*/