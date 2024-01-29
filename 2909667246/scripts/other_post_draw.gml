if ("villager_bury" not in self) exit;

if ("villager_bury" in other_player_id && villager_bury && villager_bury_id == other_player_id){
	draw_sprite_ext(other_player_id.villager_bury_sprite,0,x,y,2,2,0,c_white,1);
}