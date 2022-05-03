//article1_update - runs every frame the article exists

/*STATE LIST

- 0 Freshly spawned
- 1 Idle
- 2 Dying
- 3 Beam
*/

//Are there too many articles? If so, I should die
with (asset_get( "obj_article2" )) {
    if (replacedcount == maxarticles && player == other.player) {
        shoulddie = true;
    }
}

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}

//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2
if (player_id.killarticles && state != 2){
    state = 2;
    state_timer = 0;
}

//State buffering

if (buffertimer < 20){
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

//State 0: Freshly spawned
if (state == 0){
    /*if (state_timer == 0) {
        replacedcount = player_id.replacedcount;  
        player_id.replacedcount += 1;
    }*/
    spr_dir = 1;
    if shoulddie{
        state = 2;
        state_timer = 0;
    }
    if (state_timer == 0) {
        sound_play( sound_get( "bubble_spawn" ));
    }
    if (state_timer == 1) {
        create_hitbox( AT_NSPECIAL_2, 1, x + 2 * spr_dir, y  - 34);
    }
    //Go to idle after 19 frames
    if (state_timer >= 30){
        state = 1;
        state_timer = 0;
    }
}

//State 1: Idle
if (state == 1) {
    /*if (state_timer mod idle_anim_rate == 0){
        create_hitbox( AT_NSPECIAL_2, 2, x + 1 * spr_dir, y  - 34);
    }*/
    //Die if should die
    if shoulddie{
        state = 2;
        state_timer = 0;
    }
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    if (state_timer == die_time) {
        state = 2;
        state_timer = 0;
    }
    with (pHitBox) {
        if (attack == AT_FSPECIAL_AIR && hbox_num == 1) {
            if (place_meeting(x, y, other) ) {
                with (player_id) {
                    set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED, -11);
                }
                player_id.should_swing = true;
                other.state = 2;
                other.state_timer = 0;
            }
        }
    }
}

//State 2: Dying
if (state == 2) {
    if (state_timer == 0) {
        sound_play( sound_get( "bubble_pop" ));
    }
    if (state_timer == 16){
        player.killarticles = false;
        player_id.replacedcount -= 1;
        instance_destroy();
        exit;
    }
}

//State 3: Plasma Bubble Spawn
if (state == 3) {
    spr_dir = 1;
    if shoulddie {
        state = 5;
        state_timer = 0;
    }
    if (state_timer == 6) {
        sound_play( asset_get( "sfx_absa_cloud_crackle" ));
    }
    //Go to idle after 19 frames
    if (state_timer >= 45){
        state = 4;
        state_timer = 0;
    }
}

//State 4: Plasma Bubble Idle
if (state == 4) {
    //Die if should die
    if shoulddie{
        state = 5;
        state_timer = 0;
    }
    //Accept buffered state
    if (bufferedstate > 0){
        state = bufferedstate;
        state_timer = 0;
        bufferedstate = 0;
    }
    if (state_timer == plasma_die_time) {
        state = 5;
        state_timer = 0;
    }
    if (state_timer mod idle_anim_rate == 0){
        create_hitbox( AT_NSPECIAL_2, 2, x + 1 * spr_dir, y  - 34);
    }
    with (pHitBox) {
        if (attack == AT_FSPECIAL_AIR && hbox_num == 1) {
            if (place_meeting(x, y, other) ) {
                with (player_id) {
                    set_window_value(AT_FSPECIAL_AIR, 4, AG_WINDOW_VSPEED, -11);
                }
                player_id.should_swing = true;
                other.state = 2;
                other.state_timer = 0;
            }
        }
    }
}

//State 5: Plasma Bubble Dying
if (state == 5) {
    if (state_timer == 0) {
        sound_play( asset_get( "sfx_absa_cloud_placepop" ));
    }
    if (state_timer == 19) {
        player.killarticles = false;
        player_id.replacedcount -= 1;
        instance_destroy();
        exit;
    }
}


//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)

//Sprite and animation handling

//Assign each state both a sprite it should have and a way it should animate
switch(state){
    case 0:
        new_sprite = sprite_get("bubbleattack");
        animation_type = 1;
        break;
    case 1:
        new_sprite = sprite_get("bubbleidle");
        animation_type = 1;
        break;
    case 2:
        new_sprite = sprite_get("bubblepop");
        animation_type = 1;
        break;
    case 3:
        new_sprite = sprite_get("plasmaspawn");
        animation_type = 2;
        break;
    case 4: 
        new_sprite = sprite_get("plasma");
        animation_type = 1;
        break;
    case 5: 
        new_sprite = sprite_get("plasmadespawn");
        animation_type = 2;
        break; //Since all of these guys are just kinda
    case 6: //in a row, without any "break;" lines to
    case 7: //stop their execution, they'll all default
    case 8: //to state 9's behavior. Read up on those
    case 9: //switch-case statements, y'all, they're handy
}

//Increment image_index based on the animation type assigned, above, to the state
switch(animation_type){
    
    case 0: //Increment image_index every frame
        image_index++;
    case 1: //Increment image_index at the rate determined by idle_anim_rate
        if (state_timer mod idle_anim_rate == 0){
            image_index++;
        }
        break;
    case 2: //Increment image_index at the rate determined by die_anim_rate
        if (state_timer mod die_anim_rate == 0){
            image_index++;
        }
        break;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

//Make time progress
state_timer++;

//hitbox hit
if (state == 1) {
    with (asset_get("pHitBox")) {
        if (player_id == other.player_id) {
            if (attack == AT_DSPECIAL && place_meeting(x, y, other.id)) {
                other.state = 3;
                other.state_timer = 0;
            }
        }
        if (player_id != other.player_id) {
            if (place_meeting(x, y, other.id)) {
                if (type == 1) {
                    other.state = 2;
                    other.state_timer = 0;
                }
                if (type == 2) {
                    destroyed = true;
                }
            }
        }
    }
}