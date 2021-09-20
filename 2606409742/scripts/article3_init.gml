// weapon damage alert

sprite_index = asset_get("empty_sprite");

state = 0;
state_timer = 0;

draw_alpha = 0;
spear_num = 1;
if player_id.cur_spear spear_num = player_id.cur_spear;
else{
	with pHitBox if player_id == other.player_id && "is_spear" in self other.spear_num = image_index;
	with obj_article2 if player_id == other.player_id other.spear_num = fake_image_index;
}
message_type = 0; // 0: "badly damaged" / 1: "broke"

depth = -6;
x = player_id.x;
y = player_id.y - 86;

with obj_article3 if self != other && player_id == other.player_id && state < 2{
	state = 2;
	state_timer = 0;
}