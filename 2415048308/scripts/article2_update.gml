//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 
- 4 
- 5 
- 6 
- 7 
- 8 
- 9 Attack

*/



//Are there too many articles? If so, I should die



//Get hurt by opponents' hitbox (NOTE: does not work properly with maxarticles > 1)

with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) && other.player_id != player_id){
        hitpause = true;    //Player freeze frames
        hitstop = 10;       //Player freeze frames, cont.
        var damage_taken = damage;
        with other{
        	if (damage_taken >= 8){
        	state = 9;
        	state_timer = 0;
        	}
        }
    }
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)

if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256);
	shoulddie = true;
}

if (state == 0){
	sprite_index = sprite_get("robodummyspawn");
	image_index += 12 / 60;
	if free == true{
		instance_destroy();
		exit;
	}
	if (state_timer == 28){
		state = 1;
		state_timer = 0;
	}
}

if (state == 1){
	sprite_index = sprite_get("robodummy");
	idle_timer ++;
	if (idle_timer >= 900 && free == false){
		state = 3;
		state_timer = 0;
	}
	if (vsp < 8){
		vsp ++;
	}
}

if (state == 2){
	if (state_timer == 1){
		create_hitbox( AT_NSPECIAL, 2, x + 30*spr_dir, y - 40 ). can_hit_self = true;
	}
	spawn_hit_fx(x + 30*spr_dir, y - 50,302);
	if (state_timer == 3){
		state = 1;
		state_timer = 0;
	}
	idle_timer ++;
}

var dummy_vsp = vsp;
with asset_get("pHitBox"){
	projectile_vsp = dummy_vsp;
}

if (state == 3){
	sprite_index = sprite_get("robodummydespawn");
	image_index += 12 / 60;
	if (state_timer == 16){
		instance_destroy();
		exit;
	}
}

if (state == 4){
	sprite_index = sprite_get("robodummy_fly");
	image_index += 12 / 60;
	if (state_timer == 36){
		state = 1;
		state_timer = 0;
	}
	if (vsp != -9){
		vsp --;
	}
	idle_timer ++;
	if (state_timer == 1){
	create_hitbox( AT_USPECIAL, 2, x + 20*spr_dir, y - 16 );
	}
}

if (state == 9){
	if (state_timer == 1){
		//fucking die
		spawn_hit_fx(floor(x),floor(y),302);
		sound_play(asset_get("sfx_shovel_hit_light1"));
		instance_destroy();
		exit;
	}
}



//Make time progress
state_timer++;