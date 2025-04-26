//state1 = just spawn
//
//spawn animation
x = player_id.x;
y = player_id.y;
timer--;
player_id.move_cooldown[AT_NSPECIAL] = 50;
if(timer == 3|| timer == 2){
	image_index += 1;
}
if(timer <= 0){
	instance_destroy();
}