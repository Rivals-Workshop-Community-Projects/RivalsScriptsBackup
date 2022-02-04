/*
if (player_id.drawTextbox) {
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	
	var textx = x - 160;
	var texty = y + 60;
	
	var facex = x - 330;
	var facey = y + 145;
	
	var textScale = 2;
	
	draw_sprite(sprite_get("sans_textbox"), 0, x, y);
	
	draw_text_transformed_colour(textx - 60, texty, "*", textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	
	draw_text_transformed_colour(textx, texty, player_id.currentText[0], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	draw_text_transformed_colour(textx, texty + 60, player_id.currentText[1], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	draw_text_transformed_colour(textx, texty + 120, player_id.currentText[2], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	
	draw_sprite_ext(sprite_get("sans_face"), player_id.currentText[3], facex, facey, 2, 2, 0, c_white, 1);
}
*/

if (player_id.sansSpeak) { //if true will draw sans battle sprite and speech bubble when he is speaking
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	
	var bubblex = x + 150;
	var bubbley = y + 100;
	
	var textx = bubblex + 50;
	var texty = bubbley + 15;
	
	var textScale = 0.8;
	var bubbleScale = 1.2;
	
	var xOffset = 0;
	if (player_id.scriptText[7] == 50) {
		xOffset = player_id.scriptText[8];
	}
	
	var introalpha = 1;
	if !((player_id.scriptText[7] == 1) && (player_id.scriptText[8] > player_id.textboxTime)) { //intro fade stuff + remove speech bubble
		if (player_id.scriptText[7] != 2) {
			if !(player_id.scriptText[7] == 10 || player_id.scriptText[7] == 120 || player_id.scriptText[7] == 11) { //remove speech bubble
				draw_sprite_ext(sprite_get("speech_bubble1"), 0, bubblex + xOffset, bubbley, bubbleScale, bubbleScale, 0, c_white, 1);
			}
		}
	} else {
		introalpha = clamp(player_id.textboxTime/15, 0, 1);
	}
	
	
	
	if (player_id.scriptText[7] == 2) && (player_id.textboxTime >= 60) {
		draw_sprite_ext(sprite_get("speech_bubble2"), 0, bubblex + 16, bubbley, bubbleScale, bubbleScale, 0, c_white, 1);
	}
	
	draw_text_transformed_colour(textx + xOffset, texty, player_id.scriptText[0], textScale, textScale, 0, c_black,c_black,c_black,c_black,1);
	draw_text_transformed_colour(textx + xOffset, texty + 25, player_id.scriptText[1], textScale, textScale, 0, c_black,c_black,c_black,c_black,1);
	draw_text_transformed_colour(textx + xOffset, texty + 50, player_id.scriptText[2], textScale, textScale, 0, c_black,c_black,c_black,c_black,1);
	draw_text_transformed_colour(textx + xOffset, texty + 75, player_id.scriptText[3], textScale, textScale, 0, c_black,c_black,c_black,c_black,1);
	
	if (player_id.typeSpecialAttack) { //red text
		if (player_id.scriptText[8] == 1) {
			var counter = player_id.typeSpecialAttackCounter;
			var yMod = 50;
			var xMod = 0;
			var text = string_copy("special attack", 1, counter);
			draw_text_transformed_colour(textx + xMod, texty + yMod, text, textScale, textScale, 0, c_red,c_red,c_red,c_red,1);
		}
		
		if (player_id.scriptText[8] == 2) {
			var counter = player_id.typeSpecialAttackCounter;
			var yMod = 0;
			var xMod = 86.5;
			var text = string_copy("special", 1, counter);
			draw_text_transformed_colour(textx + xMod, texty + yMod, text, textScale, textScale, 0, c_red,c_red,c_red,c_red,1);
			
			if (counter >= 8) {
				var yMod2 = 25;
				var xMod2 = 0;
				var text2 = string_copy("attack", 1, counter - 8);
				draw_text_transformed_colour(textx + xMod2, texty + yMod2, text2, textScale, textScale, 0, c_red,c_red,c_red,c_red,1);
			}
		}
		
		if (player_id.scriptText[8] == 3) {
			var counter = player_id.typeSpecialAttackCounter;
			var yMod = 75;
			var xMod = 80;
			var text = string_copy("use it", 1, counter);
			draw_text_transformed_colour(textx + xMod, texty + yMod, text, textScale, textScale, 0, c_red,c_red,c_red,c_red,1);
		}
		
		if (player_id.scriptText[8] == 4) {
			var counter = player_id.typeSpecialAttackCounter;
			var yMod = 50;
			var xMod = 0;
			var text = string_copy("special attack", 1, counter);
			draw_text_transformed_colour(textx + xMod, texty + yMod, text, textScale, textScale, 0, c_red,c_red,c_red,c_red,1);
		}
		
		if (player_id.scriptText[8] == 5) {
			var counter = player_id.typeSpecialAttackCounter;
			var yMod = 25;
			var xMod = 0;
			var text = string_copy("special attack", 1, counter);
			draw_text_transformed_colour(textx + xMod, texty + yMod, text, textScale, textScale, 0, c_red,c_red,c_red,c_red,1);
		}
	}
	
	if (player_id.sansAttackIndex < 24) {
		var animTime = 80; //number of frames to loop idle anim
	} else {
		var animTime = 300;
	}
	
	var sinVar = dsin((((timer mod animTime)/animTime)-0.5)*2 * 180);
	var sinVar2 = dsin((((timer mod (animTime/2))/(animTime/2))-0.5)*2 * 180);
	var cosVar = dcos((((timer mod animTime)/animTime)-0.5)*2 * 180);
	var cosVar2 = dcos((((timer mod (animTime/2))/(animTime/2))-0.5)*2 * 180);
	
	
	var headx = x;
	var heady = y + 90;
	
	var bodyx = x;
	var bodyy = heady + 106;
	
	var legsx = x;
	var legsy = bodyy + 76;
	
	
	if (player_id.state != 2) && (player_id.state != 4) {
		if (player_id.sansAttackIndex < 24) || (player_id.sansAttackIndex == 69) {
			headx += 3 * sinVar;
			heady += 1.5 * sinVar2;
			bodyx += 4 * sinVar;
			bodyy += 2 * sinVar2;
		} else {
			heady += 3 * sinVar2;
			bodyy += 2 * sinVar2;
		}
	}
	
	if !((player_id.scriptText[7] == 2) && (player_id.textboxTime < 30)) && (player_id.sansAttackIndex < 25 || player_id.sansAttackIndex >= 68) {
		draw_sprite_ext(sprite_get("sans_legs"), player_id.scriptText[6], legsx, legsy, 2, 2, 0, c_white, introalpha);
		draw_sprite_ext(sprite_get("sans_torso"), player_id.scriptText[5], bodyx, bodyy, 2, 2, 0, c_white, introalpha);
		draw_sprite_ext(sprite_get("sans_face"), player_id.scriptText[4], headx, heady, 2, 2, 0, c_white, introalpha);
	}
	
	
	if (player_id.sweatLevel >= 1) && (player_id.sansAttackIndex < 25) {
		draw_sprite_ext(sprite_get("sans_sweat"), player_id.sweatLevel - 1, headx, heady, 2, 2, 0, c_white, introalpha);
	}
}

if (player_id.sansGravityDraw) { //sans sprites for gravity attacks
	var moveDistX = 340;
	var moveAlpha = 1;
	var totalTime = player_id.sansGravityMoveTime;
	var gravityTimer = undefined;
	
	if (player_id.sansGravityDrawFinal) {
		var moveModX = moveDistX;
		gravityTimer = player_id.attack_timer;
		moveAlpha = clamp(gravityTimer/totalTime, 0, 1);
	} else if (player_id.state_timer < totalTime) {
		if (!player_id.wasTalking) {
			var moveModX = moveDistX;
			gravityTimer = player_id.state_timer;
			moveAlpha = clamp(gravityTimer/totalTime, 0, 1);
		} else {
			gravityTimer = player_id.state_timer;
			var moveModX = ease_cubeOut(0, moveDistX, gravityTimer, totalTime);
		}
	} else {
		var gravityTimer = player_id.state_timer;
		var moveModX = moveDistX;
	}
	
	var gravXMod = 0;
	var gravYMod = 0;
	var gravSpd = player_id.sansGravityDrawSpeed*6;
	
	if (player_id.sansGravityDir == undefined) {
		var handSprite = sprite_get("hand_up");
		var handTimer = 0;
	} else {
		switch (player_id.sansGravityDir) {
			case 0:
			var handSprite = sprite_get("hand_left");
			gravXMod = ease_backInOut(0, -5, clamp(player_id.sansGravityDrawTimer, 0, gravSpd), gravSpd, 10);
			break;
			
			case 1:
			var handSprite = sprite_get("hand_right");
			gravXMod = ease_backInOut(0, 5, clamp(player_id.sansGravityDrawTimer, 0, gravSpd), gravSpd, 10);
			break;
			
			case 2:
			var handSprite = sprite_get("hand_up");
			gravYMod = ease_backIn(0, -5, clamp(player_id.sansGravityDrawTimer, 0, gravSpd), gravSpd, 10);
			break;
			
			case 3:
			var handSprite = sprite_get("hand_down");
			gravYMod = ease_backIn(0, 15, clamp(player_id.sansGravityDrawTimer, 0, gravSpd), gravSpd, 5);
			break;
		}
		//print_debug(string(player_id.sansGravityDrawTimer) + ", " + string(gravSpd))
		
		var handTimer = floor(player_id.sansGravityDrawTimer/player_id.sansGravityDrawSpeed);
		handTimer = clamp(handTimer, 1, 5);
	}
	var gravAnimTime = 80;
	var gravSinVar = dsin((((timer mod gravAnimTime)/gravAnimTime)-0.5)*2 * 180);
	var gravSinVar2 = dsin((((timer mod (gravAnimTime/2))/(gravAnimTime/2))-0.5)*2 * 180);
	headx += 2 * gravSinVar;
	heady += 1.2 * gravSinVar2;
	
	if (player_id.sansGravityEndTimer > 0) {
		moveAlpha = clamp(1 - (player_id.sansGravityEndTimer/40), 0, 1);
	}
	
	if (player_id.survivalMode) && (player_id.state == 6) {
		moveModX = moveDistX;
	}
	
	draw_sprite_ext(handSprite, handTimer, x - moveModX, y + 168, 2, 2, 0, c_white, moveAlpha);
	draw_sprite_ext(sprite_get("sans_face"), player_id.sansGravityFaceIndex, x - 8 - moveModX + headx + gravXMod, y + 90 + heady + gravYMod, 2, 2, 0, c_white, moveAlpha);
	if (player_id.sweatLevel > 0) {
		draw_sprite_ext(sprite_get("sans_sweat"), player_id.sweatLevel - 1, x - 8 - moveModX + headx + gravXMod, y + 90 + heady + gravYMod, 2, 2, 0, c_white, moveAlpha);
	}
}

if (player_id.corridorDrawIndex == 1) {
	var gravAnimTime = 80;
	var gravSinVar = dsin((((timer mod gravAnimTime)/gravAnimTime)-0.5)*2 * 180);
	var gravSinVar2 = dsin((((timer mod (gravAnimTime/2))/(gravAnimTime/2))-0.5)*2 * 180);
	headx += 2 * gravSinVar;
	heady += 1.2 * gravSinVar2;
	
	var corTimer = floor(player_id.attack_timer/3);
	corTimer = clamp(corTimer, 1, 5);
	draw_sprite_ext(sprite_get("hand_up"), corTimer, x - 340, y + 168, 2, 2, 0, c_white, 1);
	draw_sprite_ext(sprite_get("sans_face"), 0, x - 340 - 8 + headx, y + 90 + heady, 2, 2, 0, c_white, 1);
}

if (player_id.corridorDrawIndex == 2) {
	var gravAnimTime = 80;
	var gravSinVar = dsin((((timer mod gravAnimTime)/gravAnimTime)-0.5)*2 * 180);
	var gravSinVar2 = dsin((((timer mod (gravAnimTime/2))/(gravAnimTime/2))-0.5)*2 * 180);
	headx += 2 * gravSinVar;
	heady += 1.2 * gravSinVar2;
	
	var corTimer = floor(player_id.attack_timer/3);
	if (corTimer < 6) {
		corTimer = clamp(corTimer, 1, 5);
		draw_sprite_ext(sprite_get("hand_left"), corTimer, x - 340, y + 168, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("sans_face"), 0, x - 340 - 8 + headx, y + 90 + heady, 2, 2, 0, c_white, 1);
	} else {
		var exitHsp = clamp((player_id.attack_timer - 30)*12, 0, 500);
		corTimer = clamp(corTimer - 6, 1, 5);
		draw_sprite_ext(sprite_get("hand_right"), corTimer, x - 340 - exitHsp, y + 168, 2, 2, 0, c_white, 1);
		draw_sprite_ext(sprite_get("sans_face"), 0, x - 340 - 8 + headx - exitHsp, y + 90 + heady, 2, 2, 0, c_white, 1);
	}
}


if (player_id.battleTextActive) { //textbox text in between attacks
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	
	var textx = x - 330;
	var texty = y + 16;
	
	var asterisky = texty + 8;
	var asteriskx = textx - 50;
	
	var textScale = 2;
	
	draw_sprite(sprite_get("battle_textbox"), 0, x, y);
	
	if (player_id.lineIndex >= 0) && (player_id.currentText[3] >= 1) {
		draw_text_transformed_colour(asteriskx, asterisky, "*", textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	}
	if (player_id.lineIndex >= 1) && (player_id.currentText[3] >= 2) {
		draw_text_transformed_colour(asteriskx, asterisky + 55, "*", textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	}
	if (player_id.lineIndex >= 2) && (player_id.currentText[3] >= 3) {
		draw_text_transformed_colour(asteriskx, asterisky + 110, "*", textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	}
	
	
	draw_text_transformed_colour(textx, texty, player_id.currentText[0], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	draw_text_transformed_colour(textx, texty + 55, player_id.currentText[1], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	draw_text_transformed_colour(textx, texty + 110, player_id.currentText[2], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
}

if (player_id.drawAttackFx) { //knife swipe
	var attackTimer = player_id.attackFxTimer;
	draw_sprite(sprite_get("knife_attack"), floor(attackTimer/5), x + player_id.drawAttackFxOffset, y + 50);
	if (floor(attackTimer/5) == 6) {
		player_id.drawAttackFx = false;
	}
}

if (player_id.drawMiss) && (player_id.sansAttackIndex < 25) { //miss text
	var missDrawTimer = player_id.missTimer;
	var ymod = 15;
	
	if (missDrawTimer < 10) {
		ymod = ease_sineOut(-5, -15, missDrawTimer, 10);
	} else if (missDrawTimer < 30) {
		ymod = ease_quadIn(-15, 10, missDrawTimer - 10, 15);
	}
	
	draw_sprite(sprite_get("miss_text"), 0, x, y + 10 + ymod);
	
	if (missDrawTimer >= 80) {
		player_id.drawMiss = false;
	}
}

if (player_id.drawZs) { //sleeping Zs
	for (var i = 0; i < 3; i++) {
		var ztimervar = zTimer[i];
		zTimer[i]++;
		
		if (ztimervar > 0) {
			draw_sprite_ext(sprite_get("Z"), 0, 60 + x + ztimervar*2, 60 + y - ztimervar*2, clamp(ztimervar/20, 0, 1), clamp(ztimervar/20, 0, 1), 0, c_white, 1);
		}
		
		if (zTimer[i] >= 150) {
			zTimer[i] = 0;
		}
		
	}
}

if (player_id.drawAttackBar) || (player_id.attackBarFade > 0) {
	var alpha = 1;
	var xScale = 0.5;
	if (player_id.attackBarFade > 0) {
		alpha = (player_id.attackBarFade/30);
		xScale = (player_id.attackBarFade/30)/2;
	}
	
	var flashIndex = 0;
	if (!player_id.attackMarkerMove) {
		flashIndex = floor(timer/5) mod 2;
	}
	switch player_id.attack_bar_type {
		case 0: //knife
		draw_sprite_ext(sprite_get("attack_bar"), 0, x + 4, y + 376, xScale, 0.5, 0, c_white, alpha);
		draw_sprite_ext(sprite_get("attack_marker"), flashIndex, x + 4 + player_id.attackMarkerx, y + 376, 0.5, 0.5, 0, c_white, alpha);
		break;
		
		case 1: //gun
		draw_sprite_ext(sprite_get("attack_bar"), 0, x + 4, y + 376, xScale, 0.5, 0, c_white, alpha);
		for (var i = 0; i < player_id.attacks_left; i++) {
			draw_sprite_ext(sprite_get("attack_marker"), flashIndex, (x - 360) + player_id.attackMarkerx + (i*100), y + 376, 0.5, 0.5, 0, c_white, alpha);
		}
		break;
	}
	
}

//every dead
if (player_id.everyoneAlivent) {
	draw_rectangle_color(0, 0, 2000, 2000, c_black, c_black, c_black, c_black, false);
}

//player kill anim
var deathX = undefined;
var deathY = undefined;
var drawDeathAnim = false;
with oPlayer {
	if (deathAnim) {
		deathX = x;
		deathY = y - 20;
		drawDeathAnim = true;
		sprite_index = asset_get("empty_sprite");
		
		var hudColour = get_player_hud_color(player);
		
		if (killTimer < 10) {
			with other {
				draw_sprite_ext(sprite_get("soul"), 0, deathX, deathY, 1, 1, 0, hudColour, 1);
			}
		} else if (killTimer < 80) {
			with other {
				draw_sprite_ext(sprite_get("soul_broken"), 0, deathX, deathY, 1, 1, 0, hudColour, 1);
			}
		} else if (killTimer < 180) {
			var hspArr = array_create(6);
				hspArr[0] = 1;
				hspArr[1] = 0;
				hspArr[2] = -1.5;
				hspArr[3] = -3.5;
				hspArr[4] = -3.1;
				hspArr[5] = -3;
			var vspArr = array_create(6);
				vspArr[0] = -3;
				vspArr[1] = -3.2;
				vspArr[2] = -3;
				vspArr[3] = -0.2;
				vspArr[4] = 2;
				vspArr[5] = 2.1;
			for (var i = 0; i < 6; i++) { //break fragments
			var otherTimer = killTimer-80;
				with other {
					draw_sprite_ext(sprite_get("heart_fragments"), floor(otherTimer/10) mod 4, deathX + (otherTimer)*hspArr[i], deathY + (otherTimer)*(otherTimer)/20 + (otherTimer)*vspArr[i], 1, 1, 0, hudColour, 1);
				}
			}
		}
	}
}

//game over
var stateTimerVar = 200;
if (player_id.state == 9) && (player_id.state_timer > stateTimerVar) {
	var goAlpha = (player_id.state_timer - stateTimerVar)/30;
	goAlpha = clamp(goAlpha, 0, 1);
	draw_sprite_ext(sprite_get("game_over"), 0, x, y + 120, 1.5, 1.5, 0, c_white, goAlpha);
}

//win screen
if (player_id.state == 10) {
	var wScale = 4;
	draw_sprite_ext(sprite_get("undertale"), 0, x, y + 120, wScale, wScale, 0, c_white, 1);
}

if (player_id.displayStats) { //end stats
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	
	var textx = x - 410;
	var texty = y + 290;
	
	var textScale = 0.75;
	
	for (var p = 0; p < 4; p++) {
		for (var i = 0; i < 8; i++) {
			draw_text_transformed_colour(textx + (p*220), texty + (i*19), player_id.endText[p,i], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
		}
	}
	
	if (player_id.survivalMode) {
		var survivalAlpha = ease_linear(0, 1, player_id.endTimer, 60);
		var survivalXMod = 0;
		if (player_id.expertMode) {
			survivalXMod = 160;
		}
		draw_text_transformed_colour(x - 410 + survivalXMod, y + 260, "Survival Mode", 1, 1, 0, c_lime,c_lime,c_lime,c_lime,survivalAlpha);
	}
	
	if (player_id.expertMode) {
		var expertAlpha = ease_linear(0, 1, player_id.endTimer, 60);
		draw_text_transformed_colour(x - 410, y + 260, "Expert Mode", 1, 1, 0, c_red,c_red,c_red,c_red,expertAlpha);
	}
	
	if (player_id.state == 10) { //win
		if (!player_id.survivalMode) && (!player_id.expertMode) { //standard mode, get code for survival mode
			var codeAlpha = ease_linear(0, 1, player_id.endTimer, 60);
			draw_text_transformed_colour(x - 410, y + 260, "Survival Mode code: ", 1, 1, 0, c_green,c_green,c_green,c_green,codeAlpha);
			draw_text_transformed_colour(x - 410 + 238, y + 260, player_id.survivalModeStr, 1, 1, 0, c_yellow,c_yellow,c_yellow,c_yellow,codeAlpha);
		}
	}
}

if (player_id.dunkedText) {
	draw_set_font(asset_get("roaMBLFont"));
	draw_set_halign(fa_left);
	
	var textx = x - 250;
	var texty = y + 300;
	
	var textScale = 2;
	
	draw_text_transformed_colour(textx, texty, player_id.scriptText[0], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
	draw_text_transformed_colour(textx, texty + 60, player_id.scriptText[1], textScale, textScale, 0, c_white,c_white,c_white,c_white,1);
}