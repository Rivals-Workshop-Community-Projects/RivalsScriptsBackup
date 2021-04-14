//Specials Reset

if (my_hitboxID.attack==AT_NSPECIAL) {
    move_cooldown[AT_NSPECIAL] = 0;
}
    
if (my_hitboxID.attack==AT_FSPECIAL) {
    move_cooldown[AT_FSPECIAL] = 0;
}

if (my_hitboxID.attack==AT_DSPECIAL) {
    move_cooldown[AT_DSPECIAL] = 0;
	}

//Homing Icon

if(my_hitboxID.attack==AT_FTILT){
  if(hit_player_obj.debuff == false){
        if hexDebuffID != noone and hexDebuffID != hit_player_obj
        { 
            hexDebuffID.debuff_id = noone;
            hexDebuffID.debuff = false;
        }
        hexDebuffID = hit_player_obj.id;
        hit_player_obj.debuff_id = id;
        hit_player_obj.debuff = true;
    }
}

if(my_hitboxID.attack==AT_UTILT){
  if(hit_player_obj.debuff == false){
        if hexDebuffID != noone and hexDebuffID != hit_player_obj
        { 
            hexDebuffID.debuff_id = noone;
            hexDebuffID.debuff = false;
        }
        hexDebuffID = hit_player_obj.id;
        hit_player_obj.debuff_id = id;
        hit_player_obj.debuff = true;
    }
}

if(my_hitboxID.attack==AT_UAIR){
    if(hit_player_obj.debuff == false){
        if hexDebuffID != noone and hexDebuffID != hit_player_obj
        { 
            hexDebuffID.debuff_id = noone;
            hexDebuffID.debuff = false;
        }
        hexDebuffID = hit_player_obj.id;
        hit_player_obj.debuff_id = id;
        hit_player_obj.debuff = true;
    }
}

if(my_hitboxID.attack==AT_DATTACK){
  if(hit_player_obj.debuff == false){
        if hexDebuffID != noone and hexDebuffID != hit_player_obj
        { 
            hexDebuffID.debuff_id = noone;
            hexDebuffID.debuff = false;
        }
        hexDebuffID = hit_player_obj.id;
        hit_player_obj.debuff_id = id;
        hit_player_obj.debuff = true;
    }
}
if(my_hitboxID.attack==AT_NAIR) && (my_hitboxID.hbox_num == 1 || my_hitboxID.hbox_num == 2){
  if(hit_player_obj.debuff == false){
        if hexDebuffID != noone and hexDebuffID != hit_player_obj
        { 
            hexDebuffID.debuff_id = noone;
            hexDebuffID.debuff = false;
        }
        hexDebuffID = hit_player_obj.id;
        hit_player_obj.debuff_id = id;
        hit_player_obj.debuff = true;
    }
}