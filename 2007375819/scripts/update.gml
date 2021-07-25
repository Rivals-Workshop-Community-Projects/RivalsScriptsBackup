//update

//Check if a Blueytank is out (thanks muno for the help!!!!!!!!!)
var ATankThereIs = false;

with(asset_get("obj_article1")){
    if(player_id == other.id){
        ATankThereIs = true;
    }
}

if ATankThereIs{
   	minionOut = true;
}

else { minionOut = false; }


if prev_state == PS_RESPAWN && state_timer == 0 && dennis == 0 {
	spawn_hit_fx( x, y, DennisHeadOut);
	dennis = 1;
}

if !(attack == AT_TAUNT || attack == AT_TAUNT_2) && (taunt_pressed) {
	if state == PS_ATTACK_AIR && bofa = false {
		sound_play(sound_get("discordping"));
		bofa = true;
	}
	if state == PS_ATTACK_GROUND && chungus = false {
		sound_play(sound_get("steamalert"));
		chungus = true;
	}
}

if funnyfish > 0 {
	funnyfish--;
}

//Up special fuel things
if !free && burnerFuel < 100 {
    burnerFuel += 4;
	move_cooldown[AT_USPECIAL] = 0;
	}

if state == PS_WALL_JUMP && state_timer == 1 && burnerFuel < 100 {
    burnerFuel = 100;
	move_cooldown[AT_USPECIAL] = 0;
	}
	
if state == PS_HITSTUN && burnerFuel < 100 {
    burnerFuel += 10;
	move_cooldown[AT_USPECIAL] = 0;
	}