if (attack == AT_USPECIAL) {
    usedUspecial = false;
    if(canSpawnUSpecialFX){
        spawn_hit_fx(x, y, uspecialcancel);
        canSpawnUSpecialFX = false;
    }
    
}

if move_cooldown[AT_USPECIAL] != 0{
	move_cooldown[AT_USPECIAL] = 0;
	usedUspecial = false;
	}
	
//reconsider dying

var temp_angle = get_hitbox_angle(enemy_hitboxID);
var force = enemy_hitboxID.kb_value + enemy_hitboxID.kb_scale;

if(force >= 9 && temp_angle >= 20 && temp_angle <= 50){
    reconsider = true;
} else {
    reconsider = false;
}

//Homing debuff removal

 if (hit_player_obj == hexDebuffID) && (enemy_hitboxID.type == 1) && (enemy_hitboxID.damage >= 10){
	 hexDebuffID.debuff = false;
     hexDebuffID.debuff_id = noone;
     hexDebuffID = noone;
	 spawn_hit_fx(hit_player_obj.x, hit_player_obj.y, uspecialcancel2);
	 sound_play(sound_get("removed"));
	 }
