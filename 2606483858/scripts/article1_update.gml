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



//Set killarticles to true in death.gml and all your articles will despawn. Gets reset to the false at the end of state 2


with (asset_get("pHitBox")){
    if (place_meeting(x,y,other.id) && other.player_id != player_id && !other.hit_recently){
        other.gf_hp -= 1;
        other.hitstop = 10; //Article freeze frames
        hitpause = true;    //Player freeze frames
        hitstop = 10;       //Player freeze frames, cont.
        other.hit_recently = true;
        sound_play(asset_get("sfx_blow_heavy2"));
    }
}
if(hit_recently){
	if(hit_timer >=0){
		hit_timer--;
	}
	if(hit_timer <= 0){
		hit_recently = false;
		hit_timer = 50;
	}
}
if(gf_hp <= 0 && state != 2){
	state = 2;
	state_timer = 0;
}
//State 0: Freshly spawned

if (state == 0){
    //In this example, the article moves forward for a little bit when spawned
	new_sprite = sprite_get("gf_spawn");
    //Go to idle after 40 frames
    if (state_timer >= 20){
        state = 1;
        state_timer = 0;
    }
}



//State 1: Idle

if (state == 1){
	if(!hit_recently){
		new_sprite = sprite_get("idle_gf");
	}
}

//State 2: Dying

if (state == 2){
	
	if (state_timer < 45){
		new_sprite = sprite_get("gf_bye");
		image_index += .15;
	}
	else {
		image_index += .2;
	}
	
	if(state_timer == 1){
		sound_play(asset_get("sfx_clairen_swing_med"))
	}
	if(state_timer >= 80){
        player_id.killarticles = false;
        instance_destroy();
        exit;
	}
	if(state_timer == 45){
		new_sprite = sprite_get("gf_blowup");
	}
	if(state_timer == 50){
		create_hitbox(AT_DSPECIAL, 3, x-10, y-40);
        sound_play(asset_get("sfx_abyss_explosion"));
        shake_camera(12,10);
	}
}
if (state == 3){
	new_sprite = sprite_get("taunt_gf");
	if(state_timer >= 25){
		state = 1;
		state_timer = 0;
	}
}
//Assign each state both a sprite it should have and a way it should animate

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}
//Credit to Shaunt for this code :D
//none of these bpm's are 100% accurate, but they're the best i could do
//if anyone wants to provide accruate bpm's, leave em in the steam comments/discussion page
switch (get_stage_data(SD_ID)) {
	case 1: //treetop lodge
		bpm = 147;
	break;
	case 2: //fire capital
		bpm = 137;
	break;
	case 3: //air armada
		bpm = 170;
	break;
	case 4: //rock wall
	case 23: //aether high
	case 25: //frozen gates
		bpm = 135;
	break;
	case 5: //merchant port
	case 20: //julesvale
	case 26: //training grid
		bpm = 140;
	break;
	case 7: //blazing hideout
		bpm = 144;
	break;
	case 8: //tower of heaven
	case 14: //abyss
		bpm = 131;
	break;
	case 9: //tempest peak
	case 17: // neo fire capital
		bpm = 159;
	break;
	case 10: //frozen fortress
		bpm = 139;
	break;
	case 11: //aether gates
	case 21: //troupple pond
		bpm = 151;
	break;
	case 15: //spirit tree
	case 19: //forest floor
		bpm = 167;
	break;
	case 18: //swampy estuary
		bpm = 163;
	break;
	case 24: //pridemoor keep
		bpm = 94;
	break;
}

//do y'all like workshop compatibility
//if stage doesn't have specified bpm, will default to 120
with (asset_get("obj_stage_main")){
	if (variable_instance_exists(id, "bpm")) {
		other.bpm = bpm;
	}
}

if (state != 2){
	image_index = (get_gameplay_time() * (bpm / 60)) / 12;
}

//Make time progress
state_timer++;

if(player_id.attack == AT_TAUNT && player_id.state == PS_ATTACK_GROUND && player_id.window == 1 && player_id.window_timer == 1){
	state = 3;
	state_timer = 0;
}
//Gravity
if(state != 2){
if (!free) {
    air_timer = 0;
    if (was_free == true) {
        if (y <= 720 && !has_landed) {
			  has_landed = true;
			 sound_play(asset_get("sfx_blow_heavy1"));
			 shake_camera(7, 5);
		} else {
			has_landed = false;
	}
        was_free = false;
    }
    vsp = 0;
}

if (free) {
    air_timer++;
    was_free = true;
    if (vsp < 9.9) {
        vsp = ease_sineIn(3, 10, air_timer, 15);
    }
    if (vsp >= 9.9) {
        vsp = 10;
    }
}
}
if (y >= (get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE)) && state != 2) {
    state = 2;
    state_timer = 0;
}