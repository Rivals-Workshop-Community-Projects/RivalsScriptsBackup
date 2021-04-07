//hurt detection

/*
with pHurtBox {
    if !playerID.is_dead && place_meeting(x, y, other) {
        playerID.got_hit = true;
    }
}
*/

for (var i = 0; i < array_length(player_id.heart_ids); i++) {
	var _id = player_id.heart_ids[i];
	if _id != undefined {
		with _id {
		    if !target_id.is_dead && place_meeting(x, y, other) {
		        target_id.got_hit = true;
		    }
		}
	}
}