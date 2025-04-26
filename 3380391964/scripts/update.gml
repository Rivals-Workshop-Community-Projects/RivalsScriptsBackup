//update

if (state == PS_WALL_JUMP) {
    move_cooldown[AT_FSPECIAL] = 1;
    move_cooldown[AT_NSPECIAL] = 1;
    move_cooldown[AT_USPECIAL] = 1;
	uspecialjump = -5;
	}
	
if !free {
	shelltimer2 = 0;
	uspecialjump = -5;
	move_cooldown[AT_DSPECIAL] = 0;
	move_cooldown[AT_NSPECIAL] = 0;
	nyarglebargle = 2;
}

//Check if an uspecial hammer is out
var AHammerThereIs = false;

with (pHitBox) {
	if (orig_player == other.id) {
		if attack == AT_NSPECIAL && hbox_num == 2 {
			player_id.victim_x = victim_x;
			player_id.victim_y = victim_y;
		}
		if attack == AT_USPECIAL {
			AHammerThereIs = true;
		}
	}
}

if !((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_NSPECIAL) {
	victim = 0;
	targetfound = false;
	targetfoundTimer = 0;
	victim_x = 0;
	victim_y = 0;
}

if AHammerThereIs{
   	hammerOut = true;
}	else hammerOut = false;