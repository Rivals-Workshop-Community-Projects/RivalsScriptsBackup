//jeb
if (hitstop <= 0){
    state_timer++;
}

image_index += anim_speed;

if (state == 2 || state == 5){
    hit_detection();
}

if (sprite_index == sprite_get("jeb_bell")){
    if (image_index >= 3){
        switch (state){
            case 2:
            sprite_index = sprite_get("jeb_open");
            image_index = 3;
            anim_speed = 0;
            if (jeb_patience <= 0){
                 if (state != 5){
                    state = 5;
                    state_timer = 0;
                    shake_camera(6, 30);
                    sound_play(sound_get("jeb_angry" + string(random_func(0, 2, true) + 1) ), false, noone, 1, 1 );
                 } 
            }
            break;
            case 5:
            if (jeb_patience <= 0){
                state = 6;
                state_timer = 0;
                sprite_index = sprite_get("jeb_angry");
                image_index = 0;
                anim_speed = 0.25;
                shake_camera(6, 45);
                sound_play(sound_get("jeb_attack"));
                sound_play(sound_get("jeb_angry3"));
            }
            break;
        }
    }
}


switch (state){
    case 1: //spawn + open
        if (state_timer == 5){
            anim_speed = 0;
        }
        if (state_timer >= 20){
            anim_speed = 0.5;
            if (state_timer == 20){
                sound_play(sound_get("jeb_open"));
                jeb_sound = sound_play(sound_get("jeb_busy"), true, noone, 0.25, 1)
            }
        }
        if (image_index >= 3 ){
            image_index = 3;
            anim_speed = 0;
            state = 2;
            state_timer = 0;
        }
    break;
    case 2: //busy + accepting scrap
    if (state_timer >= jeb_busy_timer_max){
        if (array_length(scrap_on_counter) > 0) {
            state = 3;
            state_timer = 0;
            anim_speed = 0.25;
            sprite_index = sprite_get("jeb_takescrap");
            image_index = 0;
        } else {
            state = 4;
            state_timer = 0;
            sprite_index = sprite_get("jeb_open");
            image_index = 3;
            anim_speed = 0;
        }
    }
    break;
    case 3: //taking scrap
        if (image_index >= 5 && image_index < 7){
            anim_speed = 0.5;
        }
        if (image_index >= 7 && image_index <= 11){
            anim_speed = 0.25;
        }
        if (state_timer == 12){
            sound_play(sound_get("jeb_take2"));
        }
        if (state_timer == 24){
            items_taken = true;
        }
        if (state_timer == 35){
            state = 4;
            state_timer = 0;
            sprite_index = sprite_get("jeb_open");
            image_index = 3;
            anim_speed = 0;
        }
        
    break;
    case 4: //close + despawn
        if (state_timer == 60){
            sprite_index = sprite_get("jeb_close");
            image_index = 0;
            anim_speed = 0.5;
            sound_play(sound_get("jeb_close"));
        }
        if (image_index >= 1 && sprite_index == sprite_get("jeb_close")){
            anim_speed = 0.25
        }
        if (image_index >= 4 && state_timer <= 86){
            image_index = 3;
            anim_speed = 0;
        }
        if (state_timer > 86){
            image_index = 4;
            anim_speed = 0.25;
        }
        if (state_timer == 90){
            player_id.jeb_collected = true;
            player_id.pending_quota += scrap_total;
            player_id.scrap_lifetime += scrap_total;
            player_id.jeb_cooldown = 240;
            sound_stop(jeb_sound);
            instance_destroy(self);
            exit;
        }
    break;
    case 5: //angry
        if (state_timer == 120){
            if (array_length(scrap_on_counter) > 0) {
                state = 3;
                state_timer = 0;
                anim_speed = 0.25;
                sprite_index = sprite_get("jeb_takescrap");
                image_index = 0;
            }
        }
    break;
    case 6: //attacking
    	if (jeb_has_hit && hitstop <= 0){
			jeb_has_hit = false;
		}
		if (hitstop > 0){
		    anim_speed = 0;
		} else {
		    anim_speed = 0.25;
		}
        if (state_timer >= 8 && state_timer % 4 == 0 && state_timer < 20 && hitstop <= 0){
            var tentacles = create_hitbox(AT_DSPECIAL, 2, x + 2, y + 8);
            tentacles.can_hit_self = true;
        }
        if (state_timer == 20 && hitstop <= 0){
            var tentacles = create_hitbox(AT_DSPECIAL, 3, x + 2, y + 8);
            tentacles.can_hit_self = true;
        }
        if (state_timer >= 40){
            sprite_index = sprite_get("jeb_open");
            image_index = 3;
            anim_speed = 0;
        }
        if (state_timer >= 120){
            if (array_length(scrap_on_counter) > 0) {
                state = 3;
                state_timer = 0;
                anim_speed = 0.25;
                sprite_index = sprite_get("jeb_takescrap");
                image_index = 0;
            }
        }
    break;
}

///     article[index]_update.gml
 
//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

hbox.has_hit = true;
sound_play(sound_get("jeb_bell"));
jeb_patience -= 1;

sprite_index = sprite_get("jeb_bell");
image_index = 0;
anim_speed = 0.25;

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
        && (collision_rectangle(other.x + 21, other.y + 6, other.x + 44, other.y + 21, self, true, false))
        && ( (!player_equal) || (player_equal && attack != AT_DSPECIAL_2 ) )
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