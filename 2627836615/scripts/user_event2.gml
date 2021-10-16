//Custom state conditions.
/* The inputs you can modify here are:
h_in: 1 if steering right, -1 if steering left.
v_in: 1 if accelerating.
handbrake_in: 1 if drifting.
p_in: 1 if attempting to fire a powerup.

There's also a few variables that states affect.
invincible: 1 if immune to hazards and projectiles.
intangible: 1 if you need to phase through walls. still susceptible to powerups.
inactionable: 1 if all inputs should be disabled.

these variables are set back to false after update runs, so you don't need to worry about resetting them.
*/


switch(state) {
	default: break;
	//
	//Here's a simple template for a custom state.
	//Remove the /* and */ symbols at the top and bottom of a case to un-comment it and make it run.
	//The X in "case X:" should be replaced with a "PS_" state macro that's normally used on players.
	//The states already being used are: PS_IDLE, PS_SPAWN, PS_HITSTUN, PS_PRATLAND, PS_TUMBLE, PS_DASH, PS_ATTACK_AIR,
	//PS_ROLL_FORWARD, PS_RESPAWN, PS_PRATFALL, PS_DEAD, PS_FROZEN. 

	/*
	case X: //SPIN OUT: Just spins you around for 2 seconds.
		var time_total = 120;
		
		inactionable = true;
		
		image_angle += 1;
		++state_timer;		
		if state_timer > time_total {
			state = PS_IDLE;
			state_timer = 0;
		}		

	break;
	*/

	
}