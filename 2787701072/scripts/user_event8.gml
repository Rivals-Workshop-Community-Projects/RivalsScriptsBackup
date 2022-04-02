//user_event8

//spawn second goose
var goose_active = false;
with obj_article3 {
	if variable_instance_exists(id, "is_goose") && is_goose == true {
		goose_active = true;
	}
}

if !goose_active && !goose_died {
	var inst = instance_create(x - 20 + 40*(spr_dir == -1), y+2, "obj_article3");
		inst.player_id = id;
		inst.state = PS_SPAWN
		inst.spr_dir = spr_dir
	
	goose_id = inst;
}