
//

if inited == false {
	//this fixes the first post not being correct if there's no player 2 lol
	with (oPlayer) {
	    if is_player_on(player) {
	        other.post_target = self;
	        break;
	    }
	}
	if instance_exists(post_target) {
		inited = true;
	}
}


if (changepost == 1)
{
	obj_stage_main.post_counter++; //this helps it be more 'random', even when the player doesn't move.
	post_target = instance_furthest(x, y, asset_get("oPlayer"));
	if "miiverse_post" in post_target
		post_num = random_func_2((obj_stage_main.post_counter+post_target.x)%200,sprite_get_number(post_target.miiverse_post),true);
	else
		post_num = 0;
	drawing = random_func(0, 4, true);
	if instance_exists(post_target) changepost = 0;
	
	
}

if (x < 0 || x > room_width)
{
	//spawn new post?
	changepost = 1;	
	var newpost = instance_create(random_func(0, epicx / 2, true) + 200, random_func(0, epicy / 2, true) + 200, "obj_stage_article");
	newpost.inited = true;
	newpost.changepost = true;
	instance_destroy();
	exit;
}

if (alphamale < 1)
{
	alphamale += 0.02;
}

if (alphamale == 1)
{
	alphamale = 1;
}



