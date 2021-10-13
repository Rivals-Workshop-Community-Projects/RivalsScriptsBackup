//die house on die
if holding_house_is {
	holding_house_id.state = 3;
	holding_house_id.state_timer = 0;
	holding_house_id = noone;
}

if instance_exists(grabbed_player_obj) {
	grabbed_player_obj.visible = true;
	grabbed_player_obj = noone;
}

with(obj_article1) {
	if player_id == other.id {
		player_die = true;
		state = 5;
		state_timer = 0;
	}
}
with(obj_article2) {
	if player_id == other.id {
		state = 5;
		state_timer = 0;
	}
}
if boosting_minions {
	boosting_minions = false;
}