pandoria.affinity = 0;
move_cooldown[AT_DSPECIAL] = 0;

//destroy nspec
with(pHitBox){
	if(player_id == other && attack == AT_NSPECIAL_2 && hbox_num == 1){
		destroyed = true;
	}
}

if(pandoria.pandy_control){
    pandoria.hsp = 0;
    pandoria.state_timer = 0;
    pandoria.state = 12;
}