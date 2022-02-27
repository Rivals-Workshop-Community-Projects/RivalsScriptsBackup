//hitbox_update

if (attack == AT_NSPECIAL && hbox_num == 1){
	through_platforms = 30;
	if (hitbox_timer <= 8) {
	x = player_id.x+(30*spr_dir)+(hitbox_timer*4*spr_dir);
	}
	else {
		x = player_id.x+(30*spr_dir)+(hitbox_timer*6*spr_dir);
	}
	y = player_id.y;
}
if (attack == AT_UTHROW && hbox_num == 1){
	through_platforms = 30;
	if (hitbox_timer <= 8) {
	y = player_id.y-(30)-(hitbox_timer*5);
	}
	else {
		y = player_id.y-(30)-(hitbox_timer*7);
	}
	x = player_id.x-14*spr_dir;
}
if (attack == AT_FTHROW && hbox_num == 1){
	through_platforms = 30;
	if (hitbox_timer <= 8) {
	x = player_id.x-(2*spr_dir)+(hitbox_timer*4*spr_dir);
	y = player_id.y-(10)-(hitbox_timer*4);
	}
	else {
		x = player_id.x-(2*spr_dir)+(hitbox_timer*5*spr_dir);
		y = player_id.y-(10)-(hitbox_timer*5);
	}
}
if (attack == AT_NTHROW && hbox_num == 1){
	through_platforms = 30;
	if (hitbox_timer <= 8) {
	x = player_id.x-(2*spr_dir)+(hitbox_timer*4*spr_dir);
	y = player_id.y+(10)+(hitbox_timer*4);
	}
	else {
		x = player_id.x-(2*spr_dir)+(hitbox_timer*5*spr_dir);
		y = player_id.y+(10)+(hitbox_timer*5);
	}
}
if (attack == AT_DTHROW && hbox_num == 1){
	through_platforms = 30;
	if (hitbox_timer <= 8) {
	y = player_id.y+(30)+(hitbox_timer*5);
	}
	else {
		y = player_id.y+(30)+(hitbox_timer*7);
	}
	x = player_id.x-20*spr_dir;
}

if (attack == AT_NSPECIAL || attack == AT_UTHROW || attack == AT_FTHROW || attack == AT_DTHROW || attack == AT_NTHROW){
	if (!free || player_id.state_cat == 4 || was_parried){
    self.destroyed = true;
	}
	
	player_id.diagx = x;
	player_id.diagy = y;
}