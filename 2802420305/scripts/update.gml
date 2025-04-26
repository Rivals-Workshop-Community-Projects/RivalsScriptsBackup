
// user_event(10);//fps counter

//------------------------- Input ------------------------------ 
with (oPlayer)
{
	//has_walljump = true;//TODO: should wall jump always be possible bcz otherwise recovery can be impossible? but then too easy to recover
	
    //if ("that_stage_article_id" in self) && instance_exists(that_stage_article_id)
    if(player == other.playerInControl && (is_aether_stage() || other.debugControl))
    {
    	if(!other.didPlayerInit)
    	{
    		//other.didPlayerInit = true;
	    	other.playerControlled = true;
	    	
	        move_cooldown[AT_JAB] = 100;
	        move_cooldown[AT_DATTACK] = 100;
	        move_cooldown[AT_NSPECIAL] = 100;
	        move_cooldown[AT_FSPECIAL] = 100;
	        move_cooldown[AT_USPECIAL] = 100;
	        move_cooldown[AT_DSPECIAL] = 100;
	        move_cooldown[AT_FSTRONG] = 100;
	        move_cooldown[AT_USTRONG] = 100;
	        move_cooldown[AT_DSTRONG] = 100;
	        move_cooldown[AT_FTILT] = 100;
	        move_cooldown[AT_UTILT] = 100;
	        move_cooldown[AT_DTILT] = 100;
	        move_cooldown[AT_NAIR] = 100;
	        move_cooldown[AT_FAIR] = 100;
	        move_cooldown[AT_BAIR] = 100;
	        move_cooldown[AT_DAIR] = 100;
	        move_cooldown[AT_UAIR] = 100;
	        move_cooldown[AT_TAUNT] = 100;
	        
	        x = 600; 
	        //if(!other.rivalsGameOver && state != PS_DEAD )
        	y = -10000;
	        hsp = 0;
	        vsp = 0;
	        free = true; 
	        //f(!other.rivalsGameOver && state != PS_DEAD)
	        visible = false; 
			//depth = -100000;
			//force_depth = true;
	        invincible = true;
	        invince_time = 100;
	        set_state(PS_IDLE);
			state = -1;
			go_through = true;
			fall_through = false;
			can_jump = false;
			can_wall_jump = false;
			has_walljump = false;
			has_airdodge = false;
			can_fast_fall = false;
			djumps = 100;
			ignore_camera = true;
			
			/*if(variable_instance_exists(self, "url") && url == CH_ORI)
			{
				//print("D");
				//with(obj_article1)
				//	print("D");
				//print(instance_exists(obj_article1));
				//instance_destroy(obj_article1);
				
				//print(instance_exists(orb_obj));
				//print(variable_instance_exists(self, "orb_obj"));
				//print(variable_instance_exists(self, "orb_follower_obj"));
				//with(orb_obj) print("D");
				//with(asset_get("orb_obj")) print("D");
			}*/
    	}

		//use this if problem with dust fx
		/*with(asset_get("new_dust_fx_obj"))
		{
			x = 10000;
		}*/
    	
        other.right_down = right_down;
        other.left_down = left_down;
        other.up_down = up_down;
        other.down_down = down_down;
        other.attack_down = attack_down;
        other.special_down = special_down;
        other.jump_down = jump_down;
        other.shield_down = shield_down;
        other.taunt_down = taunt_down;
        other.strong_down = strong_down;
        break;
    }
	//TODO: set everything except input less than every frame, or even save player ref id and dont loop over oPlayer
}


//------------------------- AI ------------------------------ 
if(!playerControlled && pieceCurr != noone && !inClearAnim && !gameOver)
{
	if(highestPieceY < gameOverAiHeightHardCap)
	{
		DoGameOver(true);
		return;
	}
	// if(highestPieceY < gameOverAiHeightSoftCap && fps_real <= gameOverAiFpsCap && !isOnline)
	// {
	// 	if(gameOverAiFpsTimer >= gameOverAiFpsLength)
	// 	{
	// 		//TODO: fix first move after game over, should usually go all the way to the left?
	// 		DoGameOver(true);
	// 		return;
	// 	}
	// 	gameOverAiFpsTimer++;
	// }
	// else
	// {
	// 	if(!gameOverAiRecoverFrame)//because it even feels laggy if every second frame is low
	// 		gameOverAiRecoverFrame = true;
	// 	else
	// 	{
	// 		gameOverAiFpsTimer = 0;
	// 		gameOverAiRecoverFrame = false;
	// 	}
	// }
	
	if(!botFoundMove)
	{
		if (aiThinkCounter >= aiThinkDelay)//TODO: increase this delay if framerate is low?
		{
			calcBestPosRot();
			aiThinkCounter = 0;
		}
		aiThinkCounter++;
	}
	
	DoBotMoves();
}

//------------------------- Game Logic ------------------------------ 

if(get_gameplay_time() == 1)
{
	hasTimer = get_game_timer() > 0;
	
	var teamList = ds_list_create();
	var totalTeams = 0;
	for(var i = 1; i < 5; i++)
	{
		if(!is_player_on(i))
			continue;
		if(get_player_team(i) != i)
			usesTeams = true;
		if(!ds_list_contains(teamList, get_player_team(i)))
		{
			ds_list_add(teamList, get_player_team(i));
			totalTeams++;
		}
	}
}
if(get_gameplay_time() == 2)
{
	if(totalTeams == 1)
		teamStocks = [0];
	if(totalTeams == 2)
		teamStocks = [0,0];
	if(totalTeams == 3)
		teamStocks = [0,0,0];
	if(totalTeams == 4)
		teamStocks = [0,0,0,0];
	
	with (oPlayer) 
		if (state != PS_DEAD) 
			other.totalPlayers++;

	totalPlayersNonAI = 0;
	with (oPlayer) 
		if (state != PS_DEAD && !variable_instance_exists(self, "ai_target")) 
			other.totalPlayersNonAI++;
			
	isOnline = totalPlayersNonAI > 1; //TODO: this is still not 100% accurate, eg for couch co-op
	// print("isOnline: " + string(isOnline) + " totalPlayersNonAI: " + string(totalPlayersNonAI));

	if(!isOnline)
	{
		with (oPlayer) 
			if (state != PS_DEAD && !variable_instance_exists(self, "ai_target"))
			{
				other.playerInControl = player;
				break;
			}
	}
}

if(get_gameplay_time() == startDelay)
{
	// with (oPlayer)
	// {
	//     if(url != "")
    // 		other.seed += real(url);
	// }
	
	// seed += current_minute;//current_second is more rand, but will still desync sometimes
	// //could also take current_second and round it down by 30 or less? so its more rand but unlikely desync
	// print(string(current_second) + " -> " + string(current_second / 15)); //safe to assume 15 sec wont desync?
	// seed += floor(current_second / 15);

	// if(!isOnline)
	// 	seed = random_func_2(current_time % 200, 100000, true);
	// else
	// {
	// 	set_synced_var(player, abs(current_time) % 100000);//TODO: only do this on 1 player? or earlier?
	// 	seed = get_synced_var(player);
	// }
	
	// print("seed: " + string(seed));//needs to be the same for both online players

	//seed just made it worse??
	
	extendQueue();
}

rivalsGameOver = isRivalsGameOver();
if(rivalsGameOver)
{
	fullScreenAnim = false;
	rivalsGameOverTimer++;
	if(!rivalsGameOverLast)
		sound_play(sound_get("gameover"), 0, 0, 1, 1);
}
rivalsGameOverLast = rivalsGameOver;

handleMusic();

if(ticks > startDelay && !inClearAnim && !gameOver && !gameOverReal)
{
	//init first piece
	if(pieceCurr == noone)
    	getNewPiece(false);
	
	//hard drop
	if(up_down && !up_down_last)
	{
		hardDrop();
		return;
	}
	
    if(right_down != left_down)
    {
		if(right_down && (!right_down_last || (horInputTimerR > horInputDelay && (horInputTimerR-horInputDelay) % horInputDelayConsecutive == 0)))
		    tryToMove(1,0);
		else if(left_down && (!left_down_last || (horInputTimerL > horInputDelay && (horInputTimerL-horInputDelay) % horInputDelayConsecutive == 0)))
		    tryToMove(-1,0);
    }
	if(right_down)
	     horInputTimerR++;
    else
	    horInputTimerR = 0;
	if(left_down)
	     horInputTimerL++;
    else
	    horInputTimerL = 0;
	    
    //soft drop
	if(down_down)
	{
		if(!down_down_last || (vertInputTimer % vertInputDelayConsecutive == 0))
	    	tryToMove(0,1);
	    vertInputTimer++;
	}
	else
	    vertInputTimer = 0;
	
	if(attack_down && !attack_down_last)
	    rotate(pieceCurr, -1, false);
	else if(special_down && !special_down_last)
	    rotate(pieceCurr, 1, false);
	else if(strong_down && !strong_down_last)
	    rotate(pieceCurr, 2, false);//180°
	    
	//hold
	if(jump_down && !jump_down_last && canSwap)
	{	
		canSwap = false;
		moveTo(pieceCurr, -4, 0);
		rotate(pieceCurr, -pieceCurr.rotation, true);
		var temp = pieceCurr;
		if(pieceHeld == noone)
			getNewPiece(true);
		else
		{
			pieceCurr = pieceHeld;
			moveTo(pieceCurr, spawnX, spawnY);
		}
		pieceHeld = temp;
		var initRot = getInitialRotation();
		if(initRot != 0)
			rotate(pieceCurr, initRot, false);
		updateGhostPiece();
		moveDownOrFreeze(ghostCurr, 20, true, false, false);
		sound_play(sound_get("hold"), 0, 0, 1, 1);
	}

	if (fallTimer % fallDelay == 0)
		moveDownOrFreeze(pieceCurr, 1, false, false, false);
	else if (lockTimer < 0)
		moveDownOrFreeze(pieceCurr, 1, false, false, true);
		
	if(shield_down && !shield_down_last)
		drawHud = !drawHud;
		
	if(taunt_down && !taunt_down_last && !gameOver)
	{
		zenMode = !zenMode;
		DoGameOver(true);
	}

	right_down_last = right_down;
	left_down_last = left_down;
	up_down_last = up_down;
	down_down_last = down_down;
	attack_down_last = attack_down;
	special_down_last = special_down;
	jump_down_last = jump_down;
    shield_down_last = shield_down;
    taunt_down_last = taunt_down;
    strong_down_last = strong_down;
}
//TODO: optimize this main loop so less is called every tick? eg using break;

/*for(var i = array_length(fpsRecords)-1; i > 0; i--)
	fpsRecords[i] = fpsRecords[i-1];
fpsRecords[0] = fps_real;
var fpsAvg = 0;
for(var i = 0; i < array_length(fpsRecords); i++)
	fpsAvg += fpsRecords[i];
print(fpsAvg/array_length(fpsRecords));*/
//print(fps_real);

ticks++;
fallTimer++;
lockTimer--;

if(pieceCurr != noone)
	lastPieceY = pieceCurr.centerY;

if(inClearAnim)
{
	clearAnimTimer--;
	if(clearAnimTimer <= 0)
	{
		clearLines();
		getNewPiece(false);
		checkHighestPiece();

		inClearAnim = false;
		if(right_down)
			horInputTimerR = horInputDelay;
		if(left_down)
			horInputTimerL = horInputDelay;
	}
}

if(gameOver)
{
	if(fullScreenTimer > 70)
		fullScreenAnim = false;
	else
		return;
	
	if(gameOverClearTimer >= gameOverClearDelay)
	{
		gameOverClearTimer = 0;
		
		if(gameOverI < 0)
		{
			ResetLevel();
			ds_list_clear(pieceQueue);
			gameOver = false;
			return;
		}
		
		//for(var gameOverI = height-1; gameOverI >= 0; gameOverI--)
		while(gameOverI >= 0)
		{
			var foundPiece = false;
			for(var m = 0; m < width; m++)
			{
				if(field[m, gameOverI] == 0)
					continue;
				if(!foundPiece)
				{
					foundPiece = true;
					field[m, gameOverI].playFx = true;
				}
				ds_list_remove(pieceArticles, field[m, gameOverI]);
				field[m, gameOverI].cleared = true;
				field[m, gameOverI].destroyNext = true;
				field[m, gameOverI] = 0;
			}
			gameOverI--
			if(foundPiece)
				break;
		}
	}
	gameOverClearTimer++;
}


if(destroyedArticle)//TODO: this is ignored by hard drop delay, might be problematic?
{
	destroyedArticle = false;
	updateGhostPiece();
	moveDownOrFreeze(ghostCurr, 20, true, false, false);
}

AnimateSkybox();

/*var ind = 0;
for(var i = 0; i < width; i++) 
{
	for(var j = 0; j < height; j++) 
	{
		//if(field[i, j] == 0) drawDebugAtGrid(i, j, string(field[i, j]), ind);
    	//else drawDebugAtGrid(i, j, string(i) + "," + string(j) + "=" +string(field[i, j].gridX) + "," + string(field[i, j].gridY) , ind);

    	if(field[i, j] != 0) drawDebugAtGrid(i, j, string(field[i, j].hp), ind);
    	ind++;
	}
}
doDrawDebug = true;*/


//--------------------------------- FUNCTIONS ---------------------------------

#define getNewPiece(wasSwap)
fallTimer = 1;
lockTimer = lockDelay+1;
var initRot = getInitialRotation();
pieceCurr = create_tetromino(getNextPieceType(), initRot, true);
if(pieceCurr == noone)
	return;
if(ghostCurr == noone)
	ghostCurr = create_tetromino(pieceCurr.typ, initRot, false);
else
	updateGhostPiece();
moveDownOrFreeze(ghostCurr, 20, true, false, false);
canSwap = !wasSwap;

#define getNextPieceType()
if(ds_list_size(pieceQueue) < 6)
	extendQueue();
var nextTyp = pieceQueue[|0];
ds_list_delete(pieceQueue, 0);
return nextTyp;

#define extendQueue() //scramble a bag and add it to the queue
ds_list_clear(pieceBag);
for(var i = 0; i < 7; i++)
	ds_list_add(pieceBag, i);
for(var i = 0; i < ds_list_size(pieceBag); i++) 
{
	var r = random_func_2(i, ds_list_size(pieceBag), true);
	var temp = pieceBag[|i];
	pieceBag[|i] = pieceBag[|r];
	pieceBag[|r] = temp;
}
for(var i = 0; i < ds_list_size(pieceBag); i++) 
	ds_list_add(pieceQueue, pieceBag[|i]);


#define moveDownOrFreeze(piece, times, forceFreeze, doMoveSound, tryToLock)
for(var i = 0; i < times; i++) 
{
	if(!intersects(piece, 0, 1, piece.rotation))
	{
		if(!tryToLock)
		{
			lockTimer = lockDelay;
			move(piece, 0, 1, true, doMoveSound);
			lastPieceMovementWasRotate = false;
		}
	}
	else
	{
		if(tryToLock && i != 0)
			break;
		if(piece == pieceCurr && (forceFreeze || lockTimer < 0))
			freeze(piece);
		break;
	}
}

#define freeze(piece)
for(var i = 0; i < array_length_1d(piece.articles); i++)
{
    var artic = piece.articles[i];
    artic.is_hittable = true;
	field[artic.gridX, artic.gridY] = artic;
	ds_list_add(pieceArticles, artic);
}
pieceCurr = noone;
checkAndInitClear(piece);
UpdateScoreOnFreeze(piece);
if(inClearAnim)
{
	for(var i = 0; i < array_length_1d(ghostCurr.articles); i++)
		instance_destroy(ghostCurr.articles[i]);
	ghostCurr = noone;
}
else
{
	getNewPiece(false);
	checkHighestPiece();
}
shake_camera(inClearAnim ? 1 + clearedRows : 1, 
			 inClearAnim ? 5 + 5 * clearedRows : 10);//TODO: fix no shake on hitting players?
if(!piece.articles[0].hardDropped)
	sound_play(sound_get("softdrop"), 0, 0, 1, 1);
currentPiecesOnBoard += 4;

#define checkAndInitClear(piece)
clearedRows = 0;
firstClearedRowY = -1;
for(var i = height-1; i >= 0; i--) 
{
	//Check if the entire row is filled
	var anyEmptyCell = false;
	for(var m = 0; m < width; m++) 
	{
		if (field[m, i] == 0) 
		{
			anyEmptyCell = true;
			break;
		}
	}
	if(!anyEmptyCell) 
	{
		if(firstClearedRowY == -1)
			firstClearedRowY = height-i;
		for(var m = 0; m < width; m++)
		{
	        ds_list_remove(pieceArticles, field[m, i]);
			field[m, i].cleared = true;
			if(m == 0)
				field[m, i].playFx = true;
		}
		if(!inClearAnim)
		{
			inClearAnim = true;
			clearAnimTimer = clearDelay;
		}
		clearedRows++;
		currentPiecesOnBoard -= 10;
	}
}
		
#define clearLines()
for(var i = height-1; i >= 0; i--) 
{
	//Check if the entire row is filled
	var empty = false;
	for(var m = 0; m < width; m++) 
	{
		if (field[m, i] == 0) 
		{
			empty = true;
			break;
		}
	}
	if(!empty) 
	{
		for(var m = 0; m < width; m++)
			instance_destroy(field[m, i]);
			
		//Move down all of the above rows
		for(var j = i - 1; j >= 0; j--) 
		{
			for(var m = 0; m < width; m++) 
			{
				field[m, j + 1] = field[m, j];
				field[m, j] = 0;
				//or just move everything in grid and update articles at the end?
				//have to delete some and update others pos
			}
		}
		i++; //check row again
	}
}
if(clearedRows > 0)
{
	for(var i = height-1; i >= 0; i--) 
	{
		for(var m = 0; m < width; m++) 
		{
			if(field[m, i] != 0)
			{
				field[m, i].gridY = i;
				
				var worldXY = gridToWorld(m, i);
			    field[m, i].y = worldXY[1];
			}
		}
	}
}

#define checkHighestPiece()
for(var i = height-1; i >= 0; i--) 
{
	for(var m = 0; m < width; m++) 
	{
		if (field[m, i] != 0) 
		{
			if(i < highestPieceY)
				highestPieceY = i;
		}
	}
}


#define intersects(piece, xDir, yDir, rot)
return intersectsSim(piece.typ, rot, piece.centerX + xDir, piece.centerY + yDir);


#define intersectsSim(typ, rot, gridX, gridY)
for(var i = 0; i < 4; i++)
{
    var offset = pieceOffsets[typ][rot][i];
	var newGridX = gridX + offset.x;
	var newGridY = gridY + offset.y;
	if(newGridX < 0 || /*newGridY < 0 ||*/ newGridX >= width || newGridY >= height || field[newGridX, newGridY] != 0)
		return true;
}
return false;


#define tryToMove(xDir, yDir)
{
    if(!intersects(pieceCurr, xDir, yDir, pieceCurr.rotation))
    {
    	move(pieceCurr, xDir, yDir, true, true);
    	
		updateGhostPiece();
		moveDownOrFreeze(ghostCurr, 20, true, false, false);
		
		if(yDir == 0)
			lockTimer = lockDelay;
	    if(yDir == 1)
	    	score++;
	    	
	    lastPieceMovementWasRotate = false;
    }
}

#define move(piece, xDir, yDir, update, doSound)
{
	piece.centerX += xDir;
	piece.centerY += yDir;
    for(var i = 0; i < array_length_1d(piece.articles); i++)
    {
        var artic = piece.articles[i];
        artic.gridX += xDir;
        artic.gridY += yDir;
    }
    if(update)
		updatePieceWorld(piece, piece == pieceCurr && piece.articles[0].hardDropped);
		
    if(doSound)
		sound_play(sound_get("move"), 0, 0, 1, 1);
}

#define moveTo(piece, xDes, yDes)
{
	var xDir = xDes - piece.centerX;
	var yDir = yDes - piece.centerY;
	move(piece, xDir, yDir, true, false);
}

#define hardDrop()
{
	up_down_last = true;
	ds_list_clear(hardDropCheckedX);
	for(var i = 0; i < array_length_1d(pieceCurr.articles); i++)
		if(!ds_list_contains(hardDropCheckedX, pieceCurr.articles[i].x))
		{
			if(ds_list_size(hardDropCheckedX) == 0 || random_func_2(i, 1, false) < 0.333)
			{
				var randSpark = random_func_2(i, 1, false);
				if(randSpark < 0.333)
					pieceCurr.articles[i].sparks = hardDropSparksFx0;
				else if(randSpark < 0.666)
					pieceCurr.articles[i].sparks = hardDropSparksFx1;
				else
					pieceCurr.articles[i].sparks = hardDropSparksFx2;
			}
			
			pieceCurr.articles[i].hardDropped = true;
			ds_list_add(hardDropCheckedX, pieceCurr.articles[i].x);
		}
	
	moveDownOrFreeze(pieceCurr, 20, true, false, false);
		
	shake_camera(2, 15);
	sound_play(sound_get("harddrop"), 0, 0, 1, 1);
}

#define rotate(piece, dir, force)
{
    var piece0GridX = piece.articles[0].gridX - floor(pieces[piece.typ, piece.rotation][0] % 4);
    var piece0GridY = piece.articles[0].gridY - floor(pieces[piece.typ, piece.rotation][0] / 4);
    
    var newRot = (piece.rotation + dir) % 4;//array_length_1d(pieces[piece.typ];
    if(newRot < 0)
    	newRot = 4 + newRot;
    
	var is180 = dir == 2;
	var kickAttempts = is180 ? 2 : 5;
    for(var i = 0; i < kickAttempts; i++)
    {
		var offX = 0;
		var offY = 0;
    	var rotInd = 0;
    	if(is180)
		{
			if(piece.rotation == 1)
				rotInd = 1;
			else if(piece.rotation == 2)
				rotInd = 2;
			else if(piece.rotation == 3)
				rotInd = 3;

			offX = wallKicks180[rotInd,i][0];
			offY = wallKicks180[rotInd,i][1];
		}
		else
		{
			if(piece.rotation == 1 && dir == -1)
				rotInd = 1;
			else if(piece.rotation == 1 && dir == 1)
				rotInd = 2;
			else if(piece.rotation == 2 && dir == -1)
				rotInd = 3;
			else if(piece.rotation == 2 && dir == 1)
				rotInd = 4;
			else if(piece.rotation == 3 && dir == -1)
				rotInd = 5;
			else if(piece.rotation == 3 && dir == 1)
				rotInd = 6;
			else if(piece.rotation == 0 && dir == -1)
				rotInd = 7;

			offX = wallKicks[rotInd,i][0];
			offY = wallKicks[rotInd,i][1];
			if(piece.typ == 0)
			{
				offX = wallKicksI[rotInd,i][0];
				offY = wallKicksI[rotInd,i][1];
			}
		}
		offY *= -1;
		
    	if(force || !intersects(piece, offX, offY, newRot))
	    {
	        piece.rotation = newRot;
	        for(var i = 0; i < 4; i++)
			{
                piece.articles[i].gridX = piece0GridX + floor(pieces[piece.typ, piece.rotation][i] % 4);
                piece.articles[i].gridY = piece0GridY + floor(pieces[piece.typ, piece.rotation][i] / 4);
			}

	        if(offX != 0 || offY != 0)
	        	move(piece, offX, offY, false, false);
	        updatePieceWorld(piece, false);
	        
			updateGhostPiece();
			moveDownOrFreeze(ghostCurr, 20, true, false, false);
			lockTimer = lockDelay;
			sound_play(sound_get("rotate"), 0, 0, 1, 1);
			lastPieceMovementWasRotate = true;
			lastPieceRotationUsedWallKick = offX != 0 || offY != 0;
			break;
	    }
    }
}

#define updatePieceWorld(piece, doHitbox)
{
    for(var i = 0; i < array_length_1d(piece.articles); i++)
    {
        var artic = piece.articles[i];
		var worldXY = gridToWorld(artic.gridX, artic.gridY);
        artic.x = worldXY[0];
        artic.y = worldXY[1];
        
        //drawDebugAtGrid(artic.gridX, artic.gridY, string(i), 0);
        
        if(doHitbox)
        {
	        with(artic)
	        {
	            var hb = create_hitbox(AT_JAB, 1, x, y);
				hb.player_id = obj_stage_main;
	            //TODO: more accurate hitboxes, with only 64 size again, but then sometimes wont hit...
	            //		actually need to do hitbox before the articles moves?! so check one frame early?
	            //		or workaround: just check for overlap & deal dmg directly?
	        }
        }
    }
}

#define create_tetromino(typ, rot, solidArtic)
var piece = 
{
	typ : typ,
	centerX : spawnX,//not really center, but top left corner(?)
	centerY : spawnY,
	rotation : rot,
	articles : [4],
}
	
for(var i = 0; i < 4; i++)
{
    var squareArticle = noone;
    if(solidArtic)
    	squareArticle = instance_create(0, 0, "obj_stage_article_solid", 1);
	else
    	squareArticle = instance_create(0, 0, "obj_stage_article", 2);
    piece.articles[i] = setupArticle(squareArticle, spawnX + floor(pieces[typ, rot][i] % 4),
													spawnY + floor(pieces[typ, rot][i] / 4), typ, solidArtic);
}

//if(solidArtic)
//	rotate(piece, 0, false);//TODO: initially rotate it so it can spawn more often? nvm need 2 extra rows on top + try them if fail here
if(intersects(piece, 0, 0, piece.rotation))
{
	DoGameOver(false);
	return noone;
}
return piece;


#define setupArticle(squareArticle, spawnGrid_x, spawnGrid_y, typ, solidArtic)
{
	var worldXY = gridToWorld(spawnGrid_x, spawnGrid_y);
    squareArticle.x = worldXY[0];
    squareArticle.y = worldXY[1];
    squareArticle.gridX = spawnGrid_x;
    squareArticle.gridY = spawnGrid_y;
    squareArticle.typCol = typ;
    
    if(solidArtic)
    	squareArticle.image_index = typ;
    else
    	squareArticle.image_index = typ + 7;
	squareArticle.orgImageIndex = squareArticle.image_index;

    return squareArticle;
}

#define updateGhostPiece()
ghostCurr.typ = pieceCurr.typ;
ghostCurr.rotation = pieceCurr.rotation;
ghostCurr.centerX = pieceCurr.centerX;
ghostCurr.centerY = pieceCurr.centerY;
for(var i = 0; i < 4; i++)
	setupArticle(ghostCurr.articles[i], ghostCurr.centerX + floor(pieces[ghostCurr.typ, ghostCurr.rotation][i] % 4),
										ghostCurr.centerY + floor(pieces[ghostCurr.typ, ghostCurr.rotation][i] / 4), ghostCurr.typ, false);
//TODO: seperate functions for type, pos, rot

#define DoGameOver(destroyPieceCurr)
gameOver = true;
gameOverClearTimer = 0;
fullScreenAnim = true;
fullScreenTimer = 0;
fullScreenSprite = sprite_get("gameOver");
gameOverI = height-1;
currentPiecesOnBoard = 0;
//hide ghost piece
for(var i = 0; i < array_length_1d(ghostCurr.articles); i++)
	instance_destroy(ghostCurr.articles[i]);
ghostCurr = noone;
if(pieceCurr != noone && destroyPieceCurr)
{
	for(var i = 0; i < array_length_1d(pieceCurr.articles); i++)
		instance_destroy(pieceCurr.articles[i]);
	pieceCurr = noone;
}
pieceHeld = noone
highestPieceY = height;
aiMoveTimer = 0;
aiRotTimer = 0;
aiMoveCorrectTimer = 0;
aiRotCorrectTimer = 0;
aiHoldTimer = 0;
aiHardDropTimer = 0;
aiExtraThinkTimeTimer = 0;
sound_play(sound_get("ko_gong"), 0, 0, 1, 1);
sound_play(sound_get("ko_vo"), 0, 0, 1, 1);
if(is_aether_stage() || debugControl)
{
	//set_player_stocks(1, get_player_stocks(1) - 1);
	
	with(oPlayer)
	{
	    if(player == other.playerInControl && (is_aether_stage() || other.debugControl))
	    {
	        /*invincible = false;
	        invince_time = 0;
	        visible = true;
			create_deathbox(x, y, 256, 256, 1, true, 0, 2, 2);*/
	    	//y = -10000; //why doesnt work at top? instead do it on appropriate hud
	    	
	    	y = 10000;
	    	if(other.totalPlayers == 1)
	    		x = 650+view_get_xview()-160;
	    	if(other.totalPlayers == 2)
	    		x = 533+view_get_xview()-160;
	    	if(other.totalPlayers == 3)
	    		x = 425+view_get_xview()-160;
	    	if(other.totalPlayers == 4)
	    		x = 300+view_get_xview()-160;
	    }
	}
	
	if(get_player_stocks(1) <= 1 && !isPractise)
		gameOverReal = true;
}

#define gridToWorld(grid_x, grid_y)
var worldX = (grid_x + 5) * 64 + 32;
var worldY = (grid_y - 12) * 64 + 80;
return [worldX, worldY];
    
//#define worldToGrid(world_x, world_y)
//return;

#define drawDebugAtGrid(xPos, yPos, s, ind)
var worldXY = gridToWorld(xPos, yPos);
drawDebugAt(worldXY[0], worldXY[1], s, ind);

#define drawDebugAt(xPos, yPos, s, ind)
debugX[ind] = xPos;
debugY[ind] = yPos;
debugString[ind] = s;

#define ds_list_contains(list, n)
var loop = 0;
repeat (ds_list_size(list)) if (list[|loop++] == n) return true;
return false;

#define calcBestPosRot()
{
	botTestRot = botRot < array_length_1d(pieces[pieceCurr.typ]);
	botTestPos = botPos < width+3;
	
	if(!botTestRot)
	{
		botFoundMove = true;
		botChooseResult();
		return true;
	}
	
	if(resetSim)
	{
		resetSimulation(botPos, botRot);
		resetSim = false;
	}
	
	if(botTestRot)
	{
		var safety = 0;
		while(intersectsSim(pieceCurr.typ, botRot, botPos, pieceCurr.centerY) && safety < 100)
		{
			if(botTestPos)
				botPos++;
			else if(botTestRot)
			{
				botRot++;
				botPos = -3;
			}
			
			botTestRot = botRot < array_length_1d(pieces[pieceCurr.typ]);
			botTestPos = botPos < width+3;
	
			botFoundMove = false;
			if(!botTestRot)
			{
				botFoundMove = true;
				botChooseResult();
				return;//break;
			}
	
			safety++;
			//print("A rot: " + string(botRot) + ", pos: " + string(botPos) + " (" + string(botTestPos) + " / " + string(botTestRot) + ")");
		}
		if(safety > 99)
			print("ERROR");//TODO: even if use less could still be laggy... on big board may need to loop 6+ times?
			
		if(safety != 0)
		{
			resetSimulation(botPos, botRot);
			resetSim = false;
		}
		
		
		simulateHeightAndHoles();
		simStartIndex--;
		
		var simDone = heightToCheck == heightToCheckTotal;
		if(simDone)
		{
			currHeight = height - currHeight - breaks;
			
			var result = 
			{
				height : currHeight,
				holes : currHoles,
				pos : botPos,
				rot : botRot,
			}
			ds_list_add(botSimResults, result);
			//print("FOUND: " + string(botDesPos) + " " + string(botDesRot) + " & " + string(minHeight) + " " + string(minHoles));
		}
		//print("simDone: " + string(simDone) + " = height: " + string(currHeight) + ", holes: " + string(currHoles));
	}
	
	resetSim = heightToCheck == heightToCheckTotal;
	heightToCheck = max(heightToCheck - loops, heightToCheckTotal);
	
	if(!resetSim)
		return;
		
	botFoundMove = false;
	if(botTestPos)
		botPos++;
	else if(botTestRot)
	{
		botRot++;
		botPos = -3;
	}
	else
	{
		botFoundMove = true;
		botChooseResult();
	}
	
	//if(botFoundMove) print("found: " + string(botDesPos) + " " + string(botDesRot));
	//print("B rot: " + string(botRot) + ", pos: " + string(botPos) + " (" + string(botTestPos) + " / " + string(botTestRot) + ")");
}

#define resetSimulation(pos, rot)
{
	rr = rot;
	xx = pos;
	yy = max(0, highestPieceY-5);
	while(!intersectsSim(pieceCurr.typ, rot, pos, yy))
		yy++;
	yy--;
	
    breaks = 0;
	currHeight = height;
	currHoles = 0;
	filled = array_create(height);
	for (var y = 0; y < height; y++)
		filled[@y] = array_create(width, false);
	simStartIndex = height-1;
	heightToCheckTotal = max(0, highestPieceY-4);
	heightToCheck = simStartIndex - loops + 1;
	//print("from " + string(heightToCheckTotal) + " to " + string(heightToCheck));
}

#define simulateHeightAndHoles()
{
	for(var i = simStartIndex; i >= heightToCheck; i--)
	{
		simStartIndex = i;
		isFull = true;
		var prevHoles = currHoles;
		for(var j = 0; j < width; j++)
		{
			var occupied = field[j, i] != 0;
			if(!occupied)
				for(var ii = 0; ii < 4; ii++)//TODO: this is probably wrong?!
					if(floor(pieces[pieceCurr.typ, rr][ii] / 4) + yy == i && floor(pieces[pieceCurr.typ, rr][ii] % 4) + xx == j)
                    {
                        occupied = true;
                        break;
                    }

            if(occupied)
            {
                if(i < currHeight)
                    currHeight = i;

				if(!filled[i][j])
                {
                    filled[@i][@j] = true;
                    for(var k = i + 1; k < height; k++)
                    {
                        if(!filled[k][j])
                        {
                            filled[@k][@j] = true;
                            currHoles++;
                        }
                    }
                }
			}
			else
				isFull = false;
		}
		if(isFull)
		{
			breaks++;
			currHoles = prevHoles;
		}
		//print(string(i) + " => " + string(currHeight) + " / " + string(currHoles));
	}
}

#define resetBot()
{
	ds_list_clear(botSimResults);
	botFoundMove = false;
	aiMoveTimer = 0;
	aiRotTimer = 0;
	aiMoveCorrectTimer = 0;
	aiRotCorrectTimer = 0;
	aiHoldTimer = 0;
	aiHardDropTimer = 0;
	aiExtraThinkTimeTimer = 0;
	aiExtraThinkTimeDelay = (random_func_2(0, aiExtraThinkTimeDelayMax+1, true) + aiExtraThinkTimeDelayMin) * (currentPiecesOnBoard / min(currentPiecesOnBoard, aiPieceOnBoardMax));
	botDesPos = noone;
	botDesRot = noone;
	botPos = -3;
	botRot = 0;
	minHeight = height;
	minHoles = width * height;
}

#define botChooseResult()
{
	var range = ds_list_size(botSimResults);
	for(var i = 0; i < range; i++)
	{
	    var j = random_func_2(i, range, true);
	    var temp = botSimResults[| i];
	    botSimResults[| i] = botSimResults[| j];
	    botSimResults[| j] = temp;
	}
	
	var bestResult = noone;
	for(var i = 0; i < range; i++)
	{
		var currResult = botSimResults[| i];
		if(bestResult == noone || bestResult.holes > currResult.holes || (bestResult.holes == currResult.holes && bestResult.height > currResult.height))
			bestResult = currResult;
	}
	minHeight = bestResult.height;
	minHoles = bestResult.holes;
	botDesPos = bestResult.pos;
	botDesRot = bestResult.rot;
}

#define DoBotMoves()
{
	var doCorrectMove = botFoundMove;
	if(doCorrectMove)
	{
		aiExtraThinkTimeTimer++;
		if(aiExtraThinkTimeTimer < aiExtraThinkTimeDelay)
			doCorrectMove = false;
	}
	
	if(doCorrectMove)
	{
		var botCurrPos = pieceCurr.centerX;
		var botCurrRot = pieceCurr.rotation;
		var horDelta = botDesPos - botCurrPos;
		var rotDelta = botDesRot - botCurrRot;
		
		//TODO: also do this if move is just bad / next one better
		if(minHoles > lastHoles && canSwap) //hold if move would make it worse
		{
			aiHoldTimer++;
			if(aiHoldTimer < aiHoldDelay)
				return;
			
			jump_down = true;
			jump_down_last = false;
			lastHoles = 0;
			resetBot();
			sound_play(sound_get("hold"), 0, 0, 1, 1);
			aiHoldTimer = 0;
			aiHoldDelay = random_func_2(0, aiHoldDelayMax+1, true) + aiHoldDelayMin;
			return;
		}
		
		if(rotDelta == 0 && horDelta == 0)
		{
			aiHardDropTimer++;
			if(aiHardDropTimer < aiHardDropDelay)
				return;
			
			hardDrop();
			lastHoles = minHoles;
			resetBot();
			aiHardDropTimer = 0;
			aiHardDropDelay = random_func_2(1, aiHardDropDelayMax+1, true) + aiHardDropDelayMin;
			return;
		}
		
		aiMoveCorrectTimer++;
		aiRotCorrectTimer++;
	
		if(rotDelta != 0 && aiRotCorrectTimer >= aiRotCorrectDelay)
		{
			if(rotDelta > 0)
		    	rotate(pieceCurr, 1, false);
			else
		    	rotate(pieceCurr, -1, false);
		    	
			aiRotCorrectTimer = 0;
			aiRotCorrectDelay = random_func_2(2, aiRotCorrectDelayMax+1, true) + aiRotCorrectDelayMin;
		}
		if(horDelta != 0 && aiMoveCorrectTimer >= aiMoveCorrectDelay)
		{
			if(horDelta > 0)
		    	tryToMove(1,0);
			else
		    	tryToMove(-1,0);
		    	
			aiMoveCorrectTimer = 0;
			aiMoveCorrectDelay = random_func_2(3, aiMoveCorrectDelayMax+1, true) + aiMoveCorrectDelayMin;
		}
		
		//print("holes " + string(lastHoles) + " to " + string(minHoles));
		//print(string(botDesPos) + ", " + string(botDesRot) + " & " + /*string(botPos) + ", " + string(botRot) + " / " +*/ string(minHeight) + ", " + string(minHoles));
	}
	else
	{
		aiMoveTimer++;
		aiRotTimer++;
	
		if(aiMoveTimer >= aiMoveDelay)
		{
			var right = true;
			if(random_func_2(0, 2, true) == 0)
				right = false;
			if(right == true)
			    tryToMove(1,0);
			else
			    tryToMove(-1,0);
				
			aiMoveTimer = 0;
			aiMoveDelay = random_func_2(1, aiMoveDelayMax+1, true) + aiMoveDelayMin;
		}
		
		if(aiRotTimer >= aiRotDelay)
		{
			var right = true;
			if(random_func_2(2, 2, true) == 0)
				right = false;
			if(right == true)
		    	rotate(pieceCurr, -1, false);
			else
		    	rotate(pieceCurr, 1, false);
				
			aiRotTimer = 0;
			aiRotDelay = random_func_2(3, aiRotDelayMax+1, true) + aiRotDelayMin;
		}
	}
}

#define AnimateSkybox()
{
	//bg2Dir += (random_func_2(get_gameplay_time(), 2, false) - 1) * 2;//get_gameplay_time()
	//bg3Dir += (random_func_2(get_gameplay_time()+1, 2, false) - 1) * 2;
	bg2Dir += 0.1;
	bg3Dir -= 0.1;
	var bg2DirX = dsin(bg2Dir);
	var bg2DirY = dcos(bg2Dir);
	var bg3DirX = dsin(bg3Dir);
	var bg3DirY = dcos(bg3Dir);

	set_bg_data(2, BG_LAYER_AUTOSCROLL_X, bg2DirX * bg2ScrollSpd);
	set_bg_data(2, BG_LAYER_AUTOSCROLL_Y, bg2DirY * bg2ScrollSpd);
	set_bg_data(3, BG_LAYER_AUTOSCROLL_X, bg3DirX * bg3ScrollSpd);
	set_bg_data(3, BG_LAYER_AUTOSCROLL_Y, bg3DirY * bg3ScrollSpd);
}

//https://tetris.wiki/Scoring#Recent_guideline_compatible_games
#define UpdateScoreOnFreeze(piece)
{
	fullClear = false;
	if(clearedRows != 0)
	{
		fullClear = true;
		for(var i = height-1; i >= 0; i--) 
		{
			for(var m = 0; m < width; m++) 
			{
				if (field[m, i] != 0 && !field[m, i].cleared) 
				{
					fullClear = false;
					break;
				}
			}
		}
	}
	
	//https://tetris.fandom.com/wiki/T-Spin
	var tspin = false;
	if(piece.typ == 5)
	{
		if(lastPieceMovementWasRotate)
		{
			var filledCells = 0;
			if(piece.centerX >= 0 && piece.centerX < width-1 && piece.centerY < height && field[piece.centerX, piece.centerY] != 0)
				filledCells++;
			if(piece.centerX + 2 >= 0 && piece.centerX + 2 < width-1 && piece.centerY < height && field[piece.centerX + 2, piece.centerY] != 0)
				filledCells++;
			if(piece.centerX >= 0 && piece.centerX < width-1 && piece.centerY + 2 < height && field[piece.centerX, piece.centerY + 2] != 0)
				filledCells++;
			if(piece.centerX + 2 >= 0 && piece.centerX + 2 < width-1 && piece.centerY + 2 < height && field[piece.centerX + 2, piece.centerY + 2] != 0)
				filledCells++;
				
			if(filledCells > 2)
				tspin = true;
		}
	}
	
	if(tspin)
	{
		//minis give less, but unsure how they are detected
		if(clearedRows == 0)
		{
			score += (lastPieceRotationUsedWallKick ? 100 : 400) * level ;
			hudTextTspinString = lastPieceRotationUsedWallKick ? "T-Spin Mini!" : "T-Spin!";
		}
		if(clearedRows == 1)
		{
			score += (lastPieceRotationUsedWallKick ? 200 : 800) * level * (lastClearDifficult ? 1.5 : 1);
			hudTextTspinString = lastPieceRotationUsedWallKick ? "T-Spin Mini Single!" : "T-Spin Single!";
		}
		if(clearedRows == 2)
		{
			score += (lastPieceRotationUsedWallKick ? 400 : 1200) * level * (lastClearDifficult ? 1.5 : 1);
			hudTextTspinString = lastPieceRotationUsedWallKick ? "T-Spin Mini Double!" : "T-Spin Double!";
		}
		if(clearedRows == 3)
		{
			score += 1600 * (lastClearDifficult ? 1.5 : 1);
			hudTextTspinString = "T-Spin Tripple!";
		}
			
		hudTextTspinTimer = 0;
		sound_play(sound_get("special"), 0, 0, 1, 1);//"tactics"
	}
	else if(fullClear)
	{
		if(clearedRows == 1)
			score += 800 * level;
		if(clearedRows == 2)
			score += 1200 * level;
		if(clearedRows == 3)
			score += 2000 * level;
		if(clearedRows == 4)
			score += 3200 * level;
			
		if(clearedRows != 0)
		{
			sound_play(sound_get("perfect"), 0, 0, 1, 1);
			fullScreenAnim = true;
			fullScreenTimer = 0;
			fullScreenSprite = sprite_get("fullClear");
		}
	}
	else
	{
		if(clearedRows == 1)
			score += 100 * level;
		if(clearedRows == 2)
			score += 300 * level;
		if(clearedRows == 3)
			score += 500 * level;
		if(clearedRows == 4)
		{
			score += 800 * level * (lastClearDifficult ? 1.5 : 1);
			
			fullScreenAnim = true;
			fullScreenTimer = 0;
			fullScreenSprite = sprite_get("tetris");
		}
	}
	
	var fallDist = piece.centerY - lastPieceY;
	score += fallDist * (piece.articles[0].hardDropped ? 2 : 1);//doesnt actually work with soft drop, do it separately
	score += combo * level * 50;
	
	var dropCleared = clearedRows != 0;
	if(dropCleared || tspin)
		combo++;
	else
		combo = 0;
	lastDropCleared = dropCleared;
	
	if(lastClearDifficult && ((tspin && clearedRows > 0) || clearedRows == 4 || fullClear))
		hudTextBtbTimer = 0;
	if(clearedRows != 0)
		lastClearDifficult = tspin || clearedRows == 4 || fullClear;
	
	if(combo > 1)
	{
		hudTextComboString = string(combo) + " Combo!";
		hudTextComboTimer = 0;
	}
	
	linesCleared += clearedRows;
	if(linesCleared >= 10)
	{
		linesCleared = 0;
		LevelUp();
		sound_play(sound_get("save"), 0, 0, 1, pitch);
	}
	
	if(dropCleared || tspin)
	{
		var pitch = ease_linear(1, 2, max(0, combo-1), 16);
		if(clearedRows == 1)
			sound_play(sound_get("single"), 0, 0, 1, pitch);
		if(clearedRows == 2)
			sound_play(sound_get("double"), 0, 0, 1, pitch);
		if(clearedRows == 3)
			sound_play(sound_get("triple"), 0, 0, 1, pitch);
		if(clearedRows == 4)
			sound_play(sound_get("tetris"), 0, 0, 1, pitch);
	}
}

#define ResetLevel()
{
	level = 1;
	score = 0;
	fallDelay = 60;
}

//https://tetris.wiki/Marathon
//https://gamedev.stackexchange.com/questions/159835/understanding-tetris-speed-curve
#define LevelUp()
{
	if(zenMode)
		return;
	level = min(level+1, 30);
	var delay = power(0.8-((level-1)*0.007), level-1);
	//TODO: this isnt correct? just use table for now
	if(level == 1)
		delay = 0.01667;
	else if(level == 2)
		delay = 0.021017;
	else if(level == 3)
		delay = 0.026977;
	else if(level == 4)
		delay = 0.035256;
	else if(level == 5)
		delay = 0.04693;
	else if(level == 6)
		delay = 0.06361;
	else if(level == 7)
		delay = 0.0879;
	else if(level == 8)
		delay = 0.1236;
	else if(level == 9)
		delay = 0.1775;
	else if(level == 10)
		delay = 0.2598;
	else if(level == 11)
		delay = 0.388;
	else if(level == 12)
		delay = 0.59;
	else if(level == 13)
		delay = 0.92;
	else if(level == 14)
		delay = 1.46;
	else if(level == 15)
		delay = 2.36;
	else if(level == 16)
		delay = 3.91;
	else if(level == 17)
		delay = 6.61;
	else if(level == 18)
		delay = 11.43;
	else
		delay = 20;
	fallDelay = round(1/delay);
	fallDelay = max(fallDelay, 1);
	//TODO: can't fall more than 1 cell per frame atm... so above lvl 13 broken
}

#define handleMusic()
{
	//music_fade( 0.1, 0.025 ); //TODO: fade other one before that + short delay for respawn
	var lastStock = false;
	for(var i = 1; i < 5; i++)
	{
		if(is_player_on(i) && get_player_stocks(i) <= 1)
		{
			lastStock = true;
			break;
		}
	}
			
	if(lastStock)
		music_play_file("music_loop5");
}

#define isRivalsGameOver()
{
	if(hasTimer && get_game_timer() <= 0)
		return true;
	
	if(totalPlayers == 1)
		return false;
		
	if(usesTeams)
	{
		for(var i = 0; i < array_length(teamStocks); i++)
			teamStocks[i] = 0;
			
		for(var i = 1; i < 5; i++)
		{
			if(!is_player_on(i))
				continue;
			
			teamStocks[get_player_team(i)-1] += get_player_stocks(i);
		}
	}
	else
	{
		for(var i = 1; i < 5; i++)
		{
			if(!is_player_on(i))
				continue;
			
			teamStocks[i-1] = get_player_stocks(i);
		}
	}
	
	var teamsAlive = 0;
	for(var i = 0; i < array_length(teamStocks); i++)
		if(teamStocks[i] > 0)
			teamsAlive++;
		
	return teamsAlive <= 1;
}

#define getInitialRotation()
{
	var initRot = 0;
	if(special_down)
		initRot++;
	if(attack_down)
		initRot--;
	if(initRot < 0)
		initRot = 3;
	if(initRot == 1)
		special_down_last = true;
	else if(initRot == 3)
		attack_down_last = true;
	return initRot;
}
