//
with (obj_stage_article) {
	if (get_article_script(id) == 94) {
        other.timer = timer;
    }
}

dodgeTimer++;

if (place_meeting(x, y, pHitBox)) && (timer >= 20) && (player_id.menuIndex == 1) && (hit_cooldown == 0) { //sans got hit
	has_been_hit = true;
	hit_cooldown = 20;
}

if hit_cooldown > 0 {
	hit_cooldown--;
}

if has_been_hit {
	switch weapon {
		case 0: //knife
		player_id.menuIndex = 5;
		player_id.menuIndexTimer = 0;
		dodgeState = 1;
		dodgeTimer = 0;
		has_been_hit = false;
		drawAttackFx = true;
		break;
		
		case 1: //gun
		player_id.attacks_left--;
		has_been_hit = false;
		if player_id.attacks_left == 0 {
			player_id.menuIndex = 5;
			player_id.menuIndexTimer = 0;
			dodgeState = 1;
			dodgeTimer = 0;
			has_been_hit = false;
			drawAttackFx = true;
		}
		break;
	}
}

//print_debug(string(dodgeState))
if (endAnims) {
	endTimer++;
	switch endAnimIndex {
		case 0: //speech 1
		if (endTimer == 1) {
			player_id.sansSpeak = true;
			player_id.sansSpeakScript = player_id.killSpeech1;
			textInit();
		}
		if (player_id.state_timer == 1) {
			endAnimIndex++;
			endTimer = 0;
		}
		break;
		
		case 1: //kill anim
		if (endTimer == 1) {
			player_id.drawAttackFx = true;
			player_id.drawAttackFxOffset = -230;
			player_id.attackFxTimer = 0;
			sound_play(sound_get("knife_swipe"), false, 0)
		}
		
		if (endTimer == 90) {
			endAnimIndex++;
			endTimer = 0;
		}
		break;
		
		case 2: //999999999999
		if (endTimer == 1) {
			endModX = 60;
			sound_play(sound_get("damage"));
			drawDamage = true;
		}
		
		if (endTimer mod 10 == 0) && (endModX != 0) {
			endModX -= 10 * sign(endModX);
			endModX *= -1;
		}
		
		if (endTimer == 200) {
			endAnimIndex++;
			endTimer = 0;
			drawDamage = false;
		}
		break;
		
		case 3:
		if (endTimer == 40) {
			player_id.sansSpeak = true;
			player_id.sansSpeakScript = player_id.killSpeech2;
			textInit();
		}
		
		if (player_id.textboxIndex == 12) {
			endTimer2++;
			if (endTimer2 mod 100 == 20) {
				hsp = -6;
			} else {
				hsp *= 0.95;
			}
		}
		break;
	}
} else {
	switch dodgeState {
		case 0: //nothing
		if (player_id.sansAttackIndex == 25) {
			player_id.drawZs = true;
		}
		
		break;
		
		case 1: //move out
		player_id.drawZs = false;
		hsp = -7;
		
		if (dodgeTimer > 30) {
			dodgeState++;
			dodgeTimer = 0;
		}
		break;
		
		case 2: //stand still, dodge
		hsp = 0;
		if (dodgeTimer > 60) && (player_id.sansAttackIndex != 25) {
			dodgeState++;
			dodgeTimer = 0;
		}
		
		if (player_id.sansAttackIndex == 25) {
			endAnims = true;
			dodgeTimer = 0;
		}
		break;
		
		case 3: //move back
		hsp = 7;
		
		if (dodgeTimer > 30) {
			dodgeState++;
			dodgeTimer = 0;
		}
		break;
		
		case 4: //stand still
		hsp = 0;
		if (dodgeTimer == 1) {
			dodgeState++;
			dodgeTimer = 0;
		}
		break;
	}
	
	if (player_id.menuIndex == 6) {
		plzkillme = true;
	}
}
if player_id.attack_bar_type == 0 {
	var bar_active_time = 300;
} else if player_id.attack_bar_type == 1 {
	var bar_active_time = 600;
}
if (player_id.attackMarkerx > bar_active_time) || (plzkillme) {
    instance_destroy();
}

#define textInit
player_id.speechTime = 0; //number of frames elapsed into speech
player_id.textboxIndex = 0; //text box number
player_id.textboxTime = 0; //number of frames elapsed into textbox
player_id.textboxTextNum = 0; //text symbol index per textbox.
player_id.lineIndex = 0; //line number
player_id.lineTime = 0; //number of frames elapsed into line, resets after new line
player_id.lineTextNum = 0; //text symbol index per line.
player_id.textboxPauseTimer = 0; //pauses in textbox speech.
player_id.scriptText[0] = "";
player_id.scriptText[1] = "";
player_id.scriptText[2] = "";
player_id.scriptText[3] = "";