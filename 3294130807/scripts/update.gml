	

// with (owner)
// {
// 	if((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && (attack == AT_TAUNT || attack == AT_TAUNT_2))
// 		other.state = "taunt";
//		other.should_taunt = true;
// 		//TODO: fix jitter back
// }
//TODO: nothing should be able to cancel sleep anyways?

can_taunt = (state != "idle" || !waiting) && state != "taunt";

if(state == "idle")
{
	if(teetering)
	{
	}
	else if(waiting)
	{
		// state_timer -= 0.75;
		anim_speed = 0.15;
	}
	else if(turning)
	{
		anim_speed = 0.25;
	}
	else if(sprite_index == turn_spr)
	{
	}
	else
	{
		// state_timer -= 0.5;
		anim_speed = 0.1;
	}
}
if(state == "run")
{
	// state_timer -= 0.5;
	anim_speed = 0.1;
}
if(state == "taunt")
{
	// state_timer -= 0.5;
	anim_speed = 0.2;
}



//TODO: introduce these fake states:
// if(state == "intro")
// {
// 	sprite = "intro";
// 	spriteLength = sprite_get_number(sprite_get(sprite));
//     image_index = floor(spriteLength * state_timer / (idleLength * 10));
// }
// if(state == "dead")
// {
// 	sprite = "dead";
// }
// if(state == "respawn")
// {
// 	sprite = "respawn";
// }




// print(string(stateId) + " -> " + string(stateLast));
// print(stateTimer);

// var spriteLength = sprite_get_number(sprite_get(sprite));
// if(!animationLoops[?stateId] && imageIndex % spriteLength == 0 && stateTimer > animationDurations[?stateId] * spriteLength)
// {
// 	// print("start: idle");
// 	stateId = "idle";
// }

// if(stateId == "idle" && imageIndex % spriteLength == 0 && stateTimer > animationDurations[?stateId] * spriteLength * waitAfterXIdleLoops)
// {
// 	// print("start: wait");
// 	stateId = "wait";
// }

// if(stateId == "idle")
// {
// 	if(teetering)
// 		stateId = "ledge";
// 	if(state == "run")// && state_timer == 0)
// 	{
// 		// print("start: run");
// 		stateId = "run";
// 	}
// 	if(state == "taunt")// && state_timer == 0)
// 	{
// 		// print("start: taunt");
// 		stateId = "taunt";
// 	}
// }
// // print(stateId);
// print(hsp);
//TODO: issue is I have no control over movement or turn animation... so can only overwrite idle with a spawn and change speed of anims?

// if(stateId != stateIdLast)
// 	stateTimer = 0;
// stateTimer++;
// stateIdLast = stateId;

// sprite = stateId;
// spriteLength = sprite_get_number(sprite_get(sprite));
// imageIndex = floor(spriteLength * stateTimer / (spriteLength * animationDurations[?stateId]));

// sprite_index = asset_get("empty_sprite");






// image_index = imageIndex;
// state_timer = stateTimer;
// sprite_index = sprite_get(sprite);



// if (sprite == "idle")
//     image_index = floor(idleLength * idleTimer / (idleLength * idleSpd));
    
// if (sprite == "wait")
//     image_index = floor(waitLength * waitTimer / (waitLength * waitSpd));


// img_ind = image_index;
// sprite_index = asset_get("empty_sprite"); //draw manually in post instead to negate bugs like turn around during walk overshoot
// //-> why did this mess up idle / wait? redo everything without sprite_idnex and image_index?

// spr_dir_last = spr_dir;
// spriteLast = sprite;








// //TODO: generalise code using get sprite length and "s" variable to call sprite_get once 

// sprite = state;
// if(waiting && sprite != "taunt")
// {
// 	waitingAttempt = true;
// 	sprite = "wait";
// }

// // if(waitingAttempt)//if wait once sleep until moved
// // {
// // 	waiting = true;
// // 	sprite = "wait";
// // }

// // if(waitTimer != 0 && waitTimer < waitLength * waitSpd && sprite != "taunt")
// // {	
// // 	sprite = "wait";
// // 	waitingAttempt = false;
// // }

// // if(waitingAttempt && spriteLast == "idle" && img_ind%idleLength == 0)
// // {	
// // 	sprite = "wait";
// // 	waitingAttempt = false;
// // }

	
// //if(runTimer != 0 && runTimer < runLength * runSpdCurr && sprite != "taunt")
// if(runTimer != 0 && runTimer < runLength * runSpdCurr && image_index != runLength &&  sprite != "taunt")
// 	sprite = "run";
	
// if(teetering && sprite != "taunt")
// 	sprite = "ledge";
	
	
// with (owner)//other = this buddy
// {
// 	//print(string(state == PS_DEAD) + " ... " + string(state == PS_RESPAWN));
// 	if(state == PS_DEAD)
// 		other.ownerDead = true;
// 	if(state == PS_RESPAWN)
// 		other.ownerDead = true;
		
// 	if(state != PS_RESPAWN && prev_state == PS_RESPAWN)
// 		other.ownerRespawned = true;
// }
    
// if(ownerDead)
// {
// 	if(y != floorY)//spriteLast == "taunt")
// 	{	
// 		y += 2;
// 		if(y > floorY)
// 			y = floorY;
// 		state = "idle";
// 	}
	
// 	sprite = "dead";
// 	run_speed = 0;
// 	deadTimer++;
//     sprite_index = sprite_get(sprite);
    
//     if(deadTimer < 12 * deadSpd)
//     	image_index = floor(12 * deadTimer / (12 * deadSpd));
//     else
//     {	
//     	image_index = 11;
//     	if(ownerRespawned)
//     		ownerDead = false;
//     }
// }
// else if (ownerRespawned)
// {
// 	sprite = "respawn";
// 	run_speed = 0;
// 	respawnTimer++;
//     sprite_index = sprite_get(sprite);
    
//     if(respawnTimer < 31 * respawnSpeed)
//     	image_index = floor(31 * respawnTimer / (31 * respawnSpeed));
//     else//if(respawnTimer > 31 * respawnSpeed)
//     {
// 		ownerRespawned = false;
// 		respawnTimer = 0;
// 		deadTimer = 0;
// 		state_timer = 0;
// 		tauntTimer = 0;
//     	sprite_index = sprite_get("idle");
//     	sprite = "idle";
//     }
// }
	
// if(spr_dir != spr_dir_last || turnTimer < turnSpd)
// {
// 	if(sprite != "run" && sprite != "dead" && sprite != "respawn")
// 	{
// 		//print("turn " + string(sprite) + " / " + string(spr_dir) + " / " + string(spr_dir_last));
// 		sprite = "turn";
// 		if(spr_dir != spr_dir_last)
// 			turnTimer = 0;
// 		if(turnTimer < turnSpd)
// 			turnTimer++;
// 	}
// 	else //keep run in same dir to finish anim
// 	{
// 		//print("turn prevented " + string(sprite) + " / " + string(spr_dir) + " / " + string(spr_dir_last));
// 		spr_dir = spr_dir_last;
// 	}
// }


	
// if(startTimer < startDur)
// {
// 	sprite = "intro";
// 	run_speed = 0;
// 	startTimer++;
// 	state_timer = 0;
//     sprite_index = sprite_get(sprite);
//     if(startTimer > 30)
//     	image_index = floor(29 * startTimer / (29 * introSpd));
//     else
//     	image_index = 1;
// }

// //print(sprite + " / " + state + " " + string(runTimer) + " ... " + string(spr_dir) + " / " + string(spr_dir_last));

// if(sprite == "run")
// {
// 	runTimer++;
// 	runTimerTotal++;
// 	//state_timer = 0;
//     sprite_index = sprite_get(sprite);
// 	if(runTimer > runLength * runSpdCurr)
// 		runTimer = 0;
// }
// else
// {
// 	runTimer = 0;
// 	runTimerTotal = 0;
// }

// if (sprite == "idle")
// 	idleTimer++;
// else
// 	idleTimer = 0;

	
// if (sprite == "wait")
// {
//     sprite_index = sprite_get("wait");
// 	waitTimer++;
// }
// else
// {    
// 	waitTimer = 0;
// 	if(spriteLast == "wait")
// 		state_timer = 0;
// }
    
// if (sprite == "ledge")
//     ledgeTimer++;
// else
//     ledgeTimer = 0;
    
    

// //hybrid buddy (fly with uspecial), bad idea... doesn't get down from stuff, would need custom gravity...
// /*if(!owner.free && owner.y + 10 < y)
// 	sprite = "flying";
// if(sprite == "flying")
// {
// 	type = 1;
// 	run_speed = 1	
// 	max_run_dist = 10;
// }
// else
// {
// 	type = 0;
// 	max_run_dist = 100;
// }*/


// var r = runTimerTotal;
// if(r >= runSpdMaxTimer)
// 	r = runSpdMaxTimer;
// if(sprite == "run")
// 	run_speed = run_speed_base + r * runAccel;
// runSpdCurr = runSpdBase - r * runAnimMul;

// if (sprite == "run")
// {
//     image_index = floor(runLength * runTimer / (runLength * runSpdCurr));
//     if(state != "run")//actual walk already done
//     	x += spr_dir * run_speed;
// }

// //if (sprite == "turn")
// //    image_index = floor(5 * turnTimer / (5 * turnSpd));
    
// if (sprite == "idle")
//     //image_index = floor(image_number * state_timer / (image_number * idleSpd));
//     image_index = floor(idleLength * idleTimer / (idleLength * idleSpd));
    
// if (sprite == "wait")
//     image_index = floor(waitLength * waitTimer / (waitLength * waitSpd));
    
// if (sprite == "ledge")
//     image_index = floor(7 * ledgeTimer / (7 * ledgeSpd));
    
// if (sprite == "taunt")
// {  
// 	tauntTimer++;
    
//     if(tauntTimer < 10)
//     	y = y;
//     else if(tauntTimer < 15)
//         y -= 3;
//     else if(tauntTimer < 20)
//         y -= 2;
//     else if(tauntTimer >= 246)
//         y += 1.5;
//     else
//         y = floorY - 24 - sin(tauntTimer * 0.125) * 4;
        
//     sprite_index = sprite_get("taunt");
// 	image_index = floor(600 * tauntTimer / (600 * tauntSpd));
// 	if(image_index >= 600)
// 	{	
// 		state = "idle";
// 		tauntTimer = 0;
//     	y = floorY;
// 	}
// 	//print(tauntTimer);
// }

// img_ind = image_index;
// spr_ind = sprite_get(sprite);
// sprite_index = asset_get("empty_sprite"); //draw manually in post instead to negate bugs like turn around during walk overshoot
// //-> why did this mess up idle / wait? redo everything without sprite_idnex and image_index?

// spr_dir_last = spr_dir;
// spriteLast = sprite;


// /*
// //if (instance_exists(owner))
// with (asset_get("oPlayer"))
// {
//     //with (owner) 
//     if (id == other.owner)
//     {
// 		//draw_sprite_ext(sprite_get(other.sprite), 0, other.x, other.y-64, other.spr_dir, 1, 0, c_white, 1);
// 		draw_sprite(sprite_get(other.sprite), 0, other.x, other.y-64);
// 		print("D");
// 	}
// }
// */

// /*
// if (state == "idle" && wait) {
// 	spr_dir = 1; // Always face right for this animation
// 	if (state_timer == 45) sound_play(sound_get("wait"));
// 	if (state_timer == 90) sound_play(asset_get("sfx_abyss_spawn"));
// }*/


// /*if (state == "taunt"){
//     image_index = floor(image_number * state_timer / (image_number * 2));
//     if (state_timer == 50){
//     set_state("idle");
//     }
// }*/