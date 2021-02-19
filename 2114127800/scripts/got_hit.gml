if(instance_exists(grabbedid)){
	grabbedid.state = PS_TUMBLE;
	grabbedid.wrap_time = 0;
	grabbedid = noone;
}

with obj_article1{
  if(player_id == other && state == 1){
    state_timer += 60;
  }
}

if (attack == AT_USPECIAL){
	launch_timer = 0;
}

move_cooldown[AT_USPECIAL] = 0;