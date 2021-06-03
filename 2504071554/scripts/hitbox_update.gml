//hitbox_update.gml
if (attack == AT_DSPECIAL && hbox_num == 2 && hitbox_timer == 69) destroyed = 1;

if(player_id.attack == AT_NSPECIAL && hbox_num == 2){
	if(has_hit){
		blades = false;
		destroy_hitboxes();
	}
}