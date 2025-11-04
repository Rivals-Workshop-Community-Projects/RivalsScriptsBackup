//article1 update

/*STATE LIST

- 0 Spawned
- 1 Idle
- 2 Dying
- 3 Bite
- 4 Explode
- 5 Killed
- 6 
- 7 Big Explosion
- 8 Launched

*/

if (init == 0){
    init = 1;
    
	//kill minion if a new one is spawned
    with (asset_get("obj_article1")){
        if (id != other.id && player_id == other.player_id){
					if (state != 2){ 
						sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
						state = 2; // die
						state_timer = 0; 
					}
        }
    }
}

if (
		(player_id.attack == AT_USPECIAL || player_id.attack == AT_USPECIAL_GROUND) 
		&& player_id.window == 1 
		&& (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND)
	 ) 
{
	sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
	state = 2; // die
	state_timer = 0; 
}

//gravity
if (free && vsp < 10){
	/*
		if state == 8 {
			vsp += .45;
		}
	
		else {
			vsp += .5;
		}
	*/

	vsp += .5;
	
}

state_timer++;

// // STATE 0 - SPAWNED

var spawn_time = 25;
if (state == 0){ 
	player_id.killarticles = false;
	player_id.minion_poisoned = false;
	sprite_index = sprite_get("minion");
	minion_poisoned = false;
	spr_dir = player_id.spr_dir;
    image_index = 0 + state_timer * 5 / spawn_time;
	hsp = 0;
	
	//go down
	/*if (!position_meeting(x, y+1, asset_get("par_block"))&&!position_meeting(x,y+1,asset_get("par_jumpthrough"))){
		y++; //go 1 pixel down
	}*/
	//play sound
    if (state_timer == floor(spawn_time*.15)){
		sound_play(asset_get("sfx_plant_ready"));
	}
    if (state_timer == spawn_time){
        state = 1; //go to idle
        state_timer = 0; //reset timer manually
    }
}

// // STATE 1 - IDLE
player_id.minion_active = true;
var idle_time = 40; //how long one idle animation loop is
if (state == 1){ //idle
	if (free) {
			state = 8;
			state_timer = 0;
	}
	//if (!(player_id.attack == AT_FSPECIAL || player_id.attack == AT_NSPECIAL)) {
			hit_detection();
	//}
	if (!minion_poisoned) {
		hsp = walkspeed*spr_dir;
	}
	else {
		hsp = (walkspeed+1)*spr_dir;
	}
	if (!collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_block"), 0, 1)
	&& !collision_line(x+16*spr_dir, y-16, x+16*spr_dir, y+16, asset_get("par_jumpthrough"), 0, 1)
	&& !free){
		hsp *= -1;
		spr_dir *= -1;
	}
	if hit_wall {
		hsp *= -1;
		spr_dir *= -1;
    }
	/*
	with (oPlayer){
		with (other.id){
	        var teammate = get_player_team(get_instance_player(other));
	        if (teammate != get_player_team (player) && place_meeting(x, y, other)){
						state = 3;
						state_timer = 0;
	        }
	    }
	}
*/

if can_hit_owner {
	player_id.minion_can_hit_owner = true;
}
else {
	player_id.minion_can_hit_owner = false;
}
/*
	with (oPlayer){
		with (other.id){
			var teammate = get_player_team(get_instance_player(other));

			//if ((can_hit_owner || teammate != get_player_team(player)) && place_meeting(x, y, other)) {
				//state = 3;
				//state_timer = 0;
			//}
		}
	}
	*/
	
	//Loop animation
		image_index = 5 + state_timer * 4 / idle_time;

	//that's:
	//starting animation frame +
	//current time *
	//number of anim frame in the duration /
	//time it takes
	
	//Remove if hit by Clairen field
	if (position_meeting(x,y, asset_get("plasma_field_obj"))){
		state = 2; //die
		state_timer = 0; //reset timer manually
		sound_play(asset_get("sfx_absa_cloud_crackle"));
		sound_play(asset_get("sfx_clairen_hit_med"));
		spawn_hit_fx( x, y, 124 );
	}
	
	
	//idle looping
    if (state_timer == idle_time){
        state_timer = 0; //reset timer manually
		image_index = 5; //reset anim frame manually too
		idle_cycle = idle_cycle+1; //MAX IDLE LOOPS
    }
	
	if player_id.attack = AT_DSPECIAL_2 && !free && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR) {
		state_timer = 0;
		state = 4;
  }
	
}

if (state == 8){

	//if (!(player_id.attack == AT_FSPECIAL || player_id.attack == AT_NSPECIAL)) {
			hit_detection();
	//}

	poisoned_timer++;
	//print(poisoned_timer);

	if poisoned_timer == 150 && !(minion_poisoned) {
		minion_poisoned = true;
		player_id.minion_poisoned = true;
		spawn_hit_fx( x, y, 116 );
		sound_play(asset_get("mfx_star"));
	}
	
	if (minion_poisoned) {
			sprite_index = sprite_get("markedminionspin"); 
	}
	else {
		sprite_index = sprite_get("minionspin");
	}
	//idle_time = 4000;

	image_index = 0 + state_timer * 4 / 12;

		if (!free) || (hit_wall) { 
		if (minion_poisoned) {
			state = 7;
			state_timer = 0; 
		}
		else {
			create_hitbox(AT_JAB, 5, x + 2, y - 5);
			sound_play(asset_get("sfx_abyss_seed_explode"));
			player_id.minion_active = false;    
			spawn_hit_fx( x, y - 5, 117 );
			instance_destroy();
			exit;
		}
	}

	if player_id.attack = AT_DSPECIAL_2 && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR) {
		state_timer = 0;
		state = 4;
  }

	if (state_timer % 3 == 0) {
			instance_create(x, y, "obj_article2");
	}
}

if (state == 1 || state == 8) {
  with (oPlayer){
		with (other.id){
	    var teammate = get_player_team(get_instance_player(other));
	      if (teammate != get_player_team(player) 
					&& place_meeting(x, y, other) 
					&& other.state != PS_AIR_DODGE 
					&& other.state != PS_ROLL_BACKWARD 
					&& other.state != PS_ROLL_FORWARD
					&& other.state != PS_TECH_GROUND
					&& other.state != PS_TECH_BACKWARD
					&& other.state != PS_TECH_FORWARD
					&& other.state != PS_WALL_TECH) {
					if (minion_poisoned) {
						state = 7;
						state_timer = 0; 
					}
					else {
						create_hitbox(AT_JAB, 5, x + 2, y - 5);
						sound_play(asset_get("sfx_abyss_seed_explode"));
						player_id.minion_active = false;    
						spawn_hit_fx( x, y - 5, 117 );
						instance_destroy();
						exit;
					}
	      }
	    }
	}
}


// // MAX IDLE LOOPS
var idle_max = 12; 
if (idle_cycle == idle_max && state == 1) && !minion_poisoned {
	state = 2; 
	state_timer = 0; 
	sound_play(asset_get("sfx_bubblepop"), false, noone, 1, 1.1);
}

// // STATE 2 - DYING
if (state == 2){
	player_id.minion_active = false;
	hsp = 0;    
	spawn_hit_fx( x, y, 14 );
    instance_destroy();
    exit;
}
/*
// // STATE 3 - BITE
if (state == 3){
		if (minion_poisoned) {
			state = 7;
			state_timer = 0; 
		}
		else {
			sound_play ( asset_get("sfx_crunch"));
			sound_play(asset_get("sfx_abyss_seed_explode"));
			spawn_hit_fx( x, y - 5, 117 );
			spawn_hit_fx( floor(x), floor(y), 117 );
			create_hitbox(AT_JAB, 7, x, y);
			player_id.minion_active = false;
			hsp = 0;    
			instance_destroy();
			exit;
		}
	}
*/
// // STATE 4 - EXPLODE
if (state == 4){

	if (minion_poisoned) {
		sprite_index = sprite_get("poisonminion"); 
	}
	else {
		sprite_index = sprite_get("minion");
	}
	image_index = 9;
	hsp = 0;
	vsp += .5;
	
	if (state_timer <= 5) { 
		vsp = -5;
	}
	
	if (state_timer = 15) { 
		if (minion_poisoned) {
			state = 7;
			state_timer = 0; 
		}
		else {
			create_hitbox(AT_JAB, 5, x + 2, y - 5);
			sound_play(asset_get("sfx_abyss_seed_explode"));
			player_id.minion_active = false;    
			spawn_hit_fx( x, y - 5, 117 );
			instance_destroy();
			exit;
		}
	}
}

var oth = instance_place(x, y, asset_get("pHitBox"));
//print("State: " + string(state));

if (player_id.attack = AT_FSPECIAL) { 

	if place_meeting(x, y, player_id) && (player_id.window = 1) {
		player_id.on_minion = true;
	}
	else {
		player_id.on_minion = false;
	}

	if (place_meeting(x, y, player_id) && ((player_id.window = 1 && player_id.window_timer == 6) || player_id.window > 1) && player_id.window != 4 && player_id.window != 5 && !(hit_by_fspecial)) {
		hit_by_fspecial = true;
		player_id.on_minion = false;
		player_id.cancel_pratfall = true;
		player_id.grabbedid = noone;
		
		/*
		if minion_poisoned {
			create_hitbox(AT_JAB, 6, x + 2, y - 5);
			spawn_hit_fx( x, y - 5, 119 );
		}
		else {
			create_hitbox(AT_JAB, 5, x + 2, y - 5);
			spawn_hit_fx( x, y - 5, 117 );
		}*/
		create_hitbox(AT_JAB, 9, x, y);
		spawn_hit_fx( x, y - 5, 116 );
		sound_play(asset_get("sfx_leafy_hit2"));
		//player_id.minion_active = false;    
		player_id.window = 6;
		player_id.window_timer = 0;
		player_id.vsp = -12;
		player_id.hsp = 8*player_id.spr_dir;
		player_id.djumps = 0;
		//player_id.minion_active = false;  
		//hsp = 0;  
		//instance_destroy();
		//exit; 
	}
}
else {
	player_id.on_minion = false;
}

// STATE 7 - BIG EXPLOSION

if (state == 7) {
	
		create_hitbox(AT_JAB, 6, x + 2, y - 5);
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
		sound_play(asset_get("sfx_abyss_seed_explode"));  
		spawn_hit_fx( x, y - 5, 119 );
		player_id.minion_active = false;  
		hsp = 0;    
		instance_destroy();
		exit;
}

if player_id.attack = AT_FTILT && (player_id.window == 2 && player_id.window_timer == 1) { 
	/*	spr_dir *= -1;*/
	if (spr_dir != player_id.spr_dir) {
		sound_play(asset_get("sfx_leaves"));
	}
	spr_dir = player_id.spr_dir;
}

if (player_id.attack = AT_NSPECIAL) && (state == 1 || state == 8) { 
	var tha = instance_place(x, y, asset_get("pHitBox"));
	if (place_meeting(x, y, oth) && tha.player_id == player_id){
		minion_poisoned = true;
		player_id.minion_poisoned = true;
		spawn_hit_fx( x, y, 116 );
		sprite_index = sprite_get("poisonminion");
		sound_play(asset_get("sfx_abyss_seed_explode"));
  		//destroyed = true;
	}
}
/*
if (instance_place(x, y, player_id.webzone) != noone) { 
	var tha = instance_place(x, y, player_id.webzone);
	if (place_meeting(x, y, oth) && tha.player_id == player_id){
		minion_poisoned = true;
		player_id.minion_poisoned = true;
		sprite_index = sprite_get("poisonminion");
  		destroyed = true;
	}
}
*/

/*
if player_id.attack = AT_USPECIAL && player_id.window == 2{ 
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
		state = 2;
}
*/

if player_id.killarticles = true {
		sound_play(asset_get("sfx_syl_nspecial_flowerhit"));
		state = 2;
}

//delete if out of bounds
if (y < 0 || y > room_height) {
	player_id.minion_active = false;
    instance_destroy();
    exit;
}

if (x < 0 || x > room_width) {
	player_id.minion_active = false;
    instance_destroy();
    exit;
}

//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
//print(hbox);
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;


with (oPlayer){
		with (other.id){
	    var teammate = get_player_team(get_instance_player(other)); 
	      if (teammate != get_player_team(hit_player_num)) && hit_player_obj != player_id {
					can_hit_owner = true;
	      }
				else {
					can_hit_owner = false;
				}
	    }
	}
 //print(can_hit_owner);
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;

            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles. //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
hsp = 0;
vsp = 0;
spr_dir = hbox.spr_dir;

orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
//print (kb_dir);
if !free && kb_dir == 270 {
	kb_dir = 90;
}
//print (kb_dir);

hsp = lengthdir_x(orig_knock*1.75, kb_dir);
vsp = lengthdir_y(orig_knock*1.75, kb_dir);
 
//Default hit stuff
sound_play(hbox.sound_effect);
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.hit_angle = other.kb_dir;
    temp_fx.kb_speed = other.orig_knock;
}

			//spawn_hit_fx(x, y, 14);
			//sound_play(asset_get("sfx_blow_medium1"));
			//hsp = lengthdir_x(hbox.kb_value, hbox.kb_dir);
			//vsp = lengthdir_y(hbox.kb_value, hbox.kb_dir);



 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
		
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
				&& !(player == other.player_id.player && (attack == AT_NSPECIAL || attack == AT_FSPECIAL));

        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.

           //itstun = 5;
           //itstun_full = hitstun;
           //itpause = true;         // Player freeze frames
            //tstop = 10;            // Player freeze frames, continued
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management

with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);

