nspecialcharge = 0;nspecialcharge2 = 0;nspec_timer = 0;
upb = false;move_cooldown[AT_USPECIAL] = 0;fspecialcooldown = false;

for(var i = 0; i < ds_grid_width(mud_puddles); i++){
	//if(ds_grid_get(mud_puddles,i,0) == 0)continue;
	if("hitbox_timer" in ds_grid_get(mud_puddles,i,0)){
		ds_grid_get(mud_puddles,i,0).destroyed = true;
		ds_grid_set(mud_puddles,i,0,0);
	}
}
