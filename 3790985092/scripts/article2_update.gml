//article2_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned

*/



//Are there too many articles? If so, I should die
if (replacedcount > maxarticles) {
    shoulddie = true;
}
if (state_timer >= die_time) {
    shoulddie = true;
}



//if not on the ground, remove ink
if ( ( !place_meeting(x, y,asset_get("par_block") ) && !place_meeting(x, y, asset_get("par_jumpthrough") ) || (place_meeting(x, y-16,asset_get("par_block")) ) ) && state_timer >= 2) {
    shoulddie = true;
}



//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 2) ) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
    shoulddie = true;
}



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2
if (shoulddie) {
    player_id.killarticles = false;
    instance_destroy();
    exit;
}


//State buffering
if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}




//State 0: Freshly spawned
if (state == 0) {
    if (place_meeting( x, y, asset_get( "obj_article2" ) ) ) {
        with (obj_article2) {
            if (player_id == other.player_id) {
                state_timer = 0;
                instance_destroy();
                exit;
            }
        }
    }
    if (state_timer > 0) {
        if (num_sprite mod 3 == 0) {
            sprite_index = sprite_get("ink_tileA");
        } else if (num_sprite mod 3 == 1) {
            sprite_index = sprite_get("ink_tileB");
        } else {
            sprite_index = sprite_get("ink_tileC");
        }
    }
}



//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)



//Make time progress
state_timer++;