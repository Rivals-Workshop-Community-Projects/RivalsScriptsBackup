//Update the attacks with skills attached to them.
set_attack_skill(skill_current[0]);
set_attack_skill(skill_current[1]);
set_attack_skill(skill_current[2]);
set_attack_skill(skill_current[3]);

if (attack == AT_TAUNT && respawn_taunt == 0) {
	var spawn_x = floor(x) - 64 * spr_dir;
	var i = 0;
	while(!place_meeting(spawn_x, y + 2, asset_get("par_block")) && !place_meeting(spawn_x, y + 2, asset_get("par_jumpthrough"))) {
		spawn_x += 2 * spr_dir;
		i ++;
		if (i >= 80) break;
	}
	taunt_obj = instance_create(floor(spawn_x), floor(y), "obj_article1");
	if (up_down)
    	taunt_obj.obj_type = 1;
	else if (down_down)
    	taunt_obj.obj_type = 3;
	else if (left_down || right_down)
    	taunt_obj.obj_type = 2;
	else if (shield_down)
    	taunt_obj.obj_type = 4;
    else
    	taunt_obj.obj_type = 1 + random_func(0, 4, true);
    taunt_obj.spr_dir = spr_dir;
}

#define set_attack_skill(_lwobj) 
if (_lwobj == undefined) return;

for (var i = 0; i < array_length(_lwobj.attacks); i++) {
	var att = _lwobj.attacks[i];
	
	if (att.attack_replace == attack && att.attack_replace != att.attack) {
		attack = att.attack;
		window = 1;
	}
	
	if (att.attack == attack) {
	    window = att.startup_windows[0];
	}
}