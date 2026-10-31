state_timer++;
timer_freeze--

//state 0 - grow
if(state == 0){
	if(state_timer == 10){
    	state = 1;
    	article_animation_frame = 0;
	}
	sprite_index = sprite_get("grass_sprout");
    article_animation_speed = 0.2;
}

//state 1 - idle
if(state == 1){
	hit_detection();
	sprite_index = sprite_get("grass");
	if(timer_freeze <= 0){
		image_index += 0.15
	}
}

//State 2 - die
if(state == 2){
	if (state_timer == 1){
		sound_play(sound_get("item_pluck"))
	}
	if(state_timer == 4){
		switch(item) {
			default: case 0: //Raddish
				var raddish1 = create_hitbox(AT_JAB, 1, x, y); //when you do that, the id of the hitbox will be written in the var
				raddish1.player = hitplayer; //raddish's player variable is replaced by this hitbox's variable
				//raddish1.spr_dir = toss_direction;
				raddish1.hsp = toss_direction*4
				raddish1.kb_angle = 90 - toss_direction*40
				var vegetable = random_func(6, 10, true);
				switch(vegetable){
					case 5://Pepper
					case 6:
						raddish1.sprite_index = sprite_get("pepper");
					break;
					case 7://Raddish
					case 8:
						raddish1.sprite_index = sprite_get("radish");
					break;
					case 9://Garlic
						raddish1.sprite_index = sprite_get("garlic");
					break;
				}
				sound_play(sound_get("item_toss"))
			break;
			case 1: //Bomb
				var bomb = instance_create(x, y-20, "obj_stage_article", 4);
					bomb.hitplayer = hitplayer;
					bomb.chsp = toss_direction*6;
					bomb.cvsp = -8;
					//bomb.spr_dir = toss_direction;
					sound_play(sound_get("item_toss"))
			break;
			case 2: //Pow
				var powblock = instance_create(x, y-20, "obj_stage_article", 2);
					powblock.hitplayer = hitplayer;
					sound_play(sound_get("item_toss"))
			break;
			case 3: //Stopwatch
				var stop = instance_create(x, y-20, "obj_stage_article", 3);
					stop.hitplayer = hitplayer;
			break;
			case 4: //Rocket
				var rocket = instance_create(x, y-20, "obj_stage_article", 5);
					rocket.hitplayer = hitplayer;
			break;
			case 5: //Heart Radish
				var heart = instance_create(x, y-20, "obj_stage_article", 9);
					heart.chsp = toss_direction*3;
					heart.cvsp = -4;
					sound_play(sound_get("item_toss"))
			break;
		}
	}
	if (state_timer == 17){
	    state = 3;
	    state_timer = 0;
	}
	sprite_index = sprite_get("grass_pluck");
    image_index += 0.2;
}

//State 3 - wait for respawn
if(state == 3){
	if(state_timer == 350){
		state = 0;
		state_timer = 0;
		var xchanger = -100 + (random_func(0, 200, true));
		x = xchanger + initialx;
		var itemnum = (random_func(1, 110, true));
		if(itemnum >= 100){
			item = 5;
		}
		else if (itemnum >= 95){
			item = 4;
		}
		else if(itemnum >= 85){
			item = 3;
		}
		else if(itemnum >= 65){
			item = 2;
		}
		else if(itemnum >= 40){
			item = 1;
		}
		else{
			item = 0;
		}
	}
	hitplayer = 0;
	sprite_index = asset_get("empty_sprite");
	image_index = 0;
}

//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

state = 2;
state_timer = 0;
hitplayer = hit_player_num;
 
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
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
//hsp = lengthdir_x(orig_knock, kb_dir);
//vsp = lengthdir_y(orig_knock, kb_dir);
if(kb_dir > 110 and kb_dir < 250){
	toss_direction = -1
} else if (kb_dir < 70 or kb_dir > 290) {
	toss_direction = 1;
} else {
	toss_direction = 0;
}
 
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
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (type != 2)
        //&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
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