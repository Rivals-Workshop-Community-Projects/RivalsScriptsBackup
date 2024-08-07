//hit_player.gml

if (my_hitboxID.orig_player_id != self) exit; //this line makes it so only hitboxes that belong to tester work with hit_player

user_event(hit_player_event);
