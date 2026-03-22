// called when the character gets KO'd

// Refill the cookie inventory
cookie_inventory = [0, 1, 2];

// Reset pickup visual variables to prevent an accidental popup on respawn
cookieGet = 0;
lastCookieGained = -1;


cookieAid = 0;
cookieTimer = 0;

with (pHitBox) {
	if (attack == AT_DSPECIAL && hbox_num == 1 && player_id == other.id) {
		destroyed = true;
	}
}