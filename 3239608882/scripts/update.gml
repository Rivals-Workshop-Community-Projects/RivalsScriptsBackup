
//bio
// update.gml
with (asset_get("oPlayer")){
    if (state == PS_RESPAWN){
        bio = false;
        bio_TIMER = 0;
}
}



// update.gml

with (asset_get("oPlayer")) {
	if (bio && bio_ID == other.id) {
		// decreases the timer by 1 each frame
		// replace -= with += if you don't want the status effect to wear off so it counts up repeatedly instead of counting down
		bio_TIMER -= 1;
		
		// delete this line if you don't want the status effect to do damage
		// replace the 60 with how many frames there should be between ticks of damage, e.g. 60 = 1 damage per second
		// replace the 1 with how many damage you want the player to take each tick of damage
		if (bio_TIMER % 15 == 0) take_damage(player, other.player, 1);
		
		// delete this line if you don't want the status effect to wear off when the timer reaches zero
		if (bio_TIMER == 0) bio = false;
	}
}

if (attack == AT_FSPECIAL and window == 3 && window_timer == 0) //will o wisp
{
   spawn_hit_fx( x - (0 * spr_dir), y - 2, pulse);
}

if (attack == AT_DSPECIAL and window == 4 && window_timer == 0) //foul play
{
   spawn_hit_fx( x + (20 * spr_dir), y + 15, foul);
}

if (can_trick >= 0 and free == false)
{
	can_trick -= 1;
}

if (state == PS_WALL_JUMP and can_trick >= 0)
{
	can_trick -= 1;
}

if (can_trick < 0)
{
	can_trick = 0;
}

if (can_trick > 1)
{
	can_trick = 1;
}


