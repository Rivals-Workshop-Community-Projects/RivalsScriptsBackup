//drop house
if holding_house_is {
    holding_house_id.state = 3
    holding_house_id.state_timer = 0;
    holding_house_id = noone;
}
if instance_exists(grabbed_player_obj) {
    grabbed_player_obj.visible = true;
}