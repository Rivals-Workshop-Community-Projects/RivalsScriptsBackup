// code made to fix dspec parry jank

var is_shoe = false;
var shoe_moving = false;

// keep track of original owner of shoe as well as if it's moving or not
with (asset_get("pHitBox"))
{
    if (player_id == other)
    {
		if (attack == AT_DSPECIAL) {
			var is_shoe = true;
			var inst = self;
			
			if (hsp != 0) && (vsp != 0) {
				shoe_moving = true;
			}
			else {
				shoe_moving = false;
			}
		}
    }
}


