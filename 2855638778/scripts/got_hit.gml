// https://www.youtube.com/watch?v=iUXY-KMSrdU


// how much buff to lose
var bufflose = round(enemy_hitboxID.damage * 0.5);

// lose some buff if you get hit while it's active
if (buff_active) {

	buff_cur_timer = buff_cur_timer - (bufflose * 12);

	// cant be below 0
	if (buff_cur_timer < 0) {
		buff_cur_timer = 0;
	}

}

// soldier can use uspec again after getting hit
// ... but it also removes him from the parachute state
move_cooldown[AT_USPECIAL] = 1;	
para_should_undeploy = true;

// exit "blast jump" state upon getting hit
blastjump_should_undeploy = true;

// a way for soldier to take full rocket damage if it got parried
// no longer relevant since the parry is just extended stun now
/*
if (was_parried) {
	if (attack == AT_FSPECIAL || attack == AT_DSTRONG) {
		take_damage(player, player, 6);
	}
}
*/
