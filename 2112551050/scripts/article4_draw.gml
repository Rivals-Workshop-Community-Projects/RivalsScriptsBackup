var yy = y + 20;

var xx = x + 7;

var animTime = 80; //number of frames to loop idle anim
if (player_id.sansAttackIndex >= 25) {
	if (dodgeState == 0) {
		animTime = 300;
	} else if (endAnimIndex == 3) && (player_id.textboxIndex < 9 || player_id.textboxIndex == 12) {
		animTime = 400;
	} else {
		animTime = 1000000000000000000000000; //practically stationary
	}
	
	if (dodgeState == 0) && (!endAnims) {
		xx = x; //some weird offset stuff
	}
}
var sinVar = dsin((((timer mod animTime)/animTime)-0.5)*2 * 180);
var sinVar2 = dsin((((timer mod (animTime/2))/(animTime/2))-0.5)*2 * 180);
var cosVar = dcos((((timer mod animTime)/animTime)-0.5)*2 * 180);
var cosVar2 = dcos((((timer mod (animTime/2))/(animTime/2))-0.5)*2 * 180);

var headx = 3 * sinVar;
var heady = 1.5 * sinVar2;

var bodyx = 4 * sinVar;
var bodyy = 2 * sinVar2;

var faceIndex = 0;
var bodyIndex = 0;
var legsIndex = 0;

if (player_id.sansAttackIndex == 25) { //he sleep
	if (dodgeState == 0) {
		faceIndex = 4;
		bodyIndex = 0;
	} else if (dodgeState == 1) {
		faceIndex = 0;
		bodyIndex = 0;
	} else if (dodgeState == 2) {
	 	faceIndex = 3;
		bodyIndex = 1;
	}
	
	if (endAnimIndex == 1) {
		faceIndex = 6;
		bodyIndex = 1;
	}
	
	if (endAnimIndex == 2) {
		faceIndex = 6;
		bodyIndex = 3;
		legsIndex = 1;
		
		bodyy += 4;
		heady += 20;
	}
	
	if (endAnimIndex >= 3) {
		if (endTimer <= 40) {
			faceIndex = 10;
			bodyIndex = 4;
			legsIndex = 1;
		} else {
			faceIndex = player_id.scriptText[4];
			bodyIndex = player_id.scriptText[5];
			legsIndex = player_id.scriptText[6];
		}
		
		if (player_id.textboxIndex < 9) {
			bodyy += 4;
			heady += 20;
		}
	}
	
	heady += 3 * sinVar2;
	bodyy += 2 * sinVar2;
	headx = 0;
	bodyx = 0;
}

draw_sprite_ext(sprite_get("sans_legs"), legsIndex, xx + endModX, yy + 76, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("sans_torso"), bodyIndex, xx + endModX + bodyx, yy + bodyy, 2, 2, 0, c_white, 1);
draw_sprite_ext(sprite_get("sans_face"), faceIndex, xx + endModX + headx, yy - 106 + heady, 2, 2, 0, c_white, 1);

if (player_id.sweatLevel >= 1) && (!endAnims) {
	draw_sprite_ext(sprite_get("sans_sweat"), player_id.sweatLevel - 1, xx + headx, yy - 106 + heady, 2, 2, 0, c_white, 1);
}

if (drawDamage) { //damage numbers
	var DrawTimer = endTimer;
	var ymod = 15;
	
	if (DrawTimer < 10) {
		ymod = ease_sineOut(-5, -15, DrawTimer, 10);
	} else if (DrawTimer < 30) {
		ymod = ease_quadIn(-15, 10, DrawTimer - 10, 15);
	}
	
	draw_sprite(sprite_get("damage_numbers"), 0, x, y - 140 + ymod);
}