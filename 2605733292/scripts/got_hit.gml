//got_hit.gml

if (attack == AT_USPECIAL){
	//state = PS_PRATFALL
	//state_timer = 0
}

move_cooldown[AT_FSPECIAL] = 0;

spawn_essence_from_rune_o = random_func( 0, 4, true );

if (isCurrSleeping){
	//print("was hit by a sleeping attack: " + string(hitBySleepingAttack));
	//print("is curr sleeping: " + string(isCurrSleeping));
	
	shouldWakeUp = true;
}

//helltroll
if (has_rune("O")){
	if (spawn_essence_from_rune_o == 1){
		if (essences_in_use !=  essences_max_limit){
			sound_play(sfx_ability_drop);
			spawn_hit_fx( x, y - 70, 304 );
			var abilityStar = instance_create(x + 0 * spr_dir, y - 70, "obj_article1");
			abilityStar.state = 5
			abilityStar.should_spawn_hitbox = true;
			abilityStar.hitbox_exists = true;
			create_hitbox(AT_EXTRA_2, 1, x, y - 70);
			with (star) {
				if (player_id != other.id) continue; //skip this article if the ids do not match.
					if (obj_article1.spawned_by_rune_o == true){
						//videogaming = 1
						//vsp = 69
					}
			}
		}
	}
}