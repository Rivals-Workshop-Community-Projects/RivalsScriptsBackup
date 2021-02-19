if (attack == AT_NSPECIAL && my_hitboxID.hbox_num == 1){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
    }
}

if (attack == AT_NSPECIAL && my_hitboxID.hbox_num == 3){
    if (window == 2 && grabbedid == noone && hit_player_obj == ionized){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
    }
}
if (attack == AT_NSPECIAL && my_hitboxID.hbox_num == 2){
	ionized = noone;
	ion_timer = 0;
}

if (my_hitboxID.attack == AT_FSPECIAL && ionized == noone){
	ionized = hit_player_obj;
	ion_timer = 60;
	instance_create( ionized.x - 30, ionized.y - 30 - ionized.char_height, "obj_article2" );
}

if (my_hitboxID.attack == AT_DSPECIAL && ionized == noone){
	ionized = hit_player_obj;
	ion_timer = 100;
	instance_create( ionized.x - 30, ionized.y - 30 - ionized.char_height, "obj_article2" );
}

if (my_hitboxID.attack == AT_USPECIAL && ionized == noone){
	ionized = hit_player_obj;
	ion_timer = 80;
	instance_create( ionized.x - 30, ionized.y - 30 - ionized.char_height, "obj_article2" );
}


if (attack == AT_USPECIAL && my_hitboxID.hbox_num == 1){
    if (window == 2 && grabbedid == noone){
        hit_player_obj.grabbed = 1;
        grabbedid = hit_player_obj;
	grabbedid.ungrab = 0;
    }
}