//article1_update

/*
if (init == 0) { //i dont remember what this does
    init = 1;
}
*/
#macro ATK_KR 0
#macro ATK_BLUE 1
#macro ATK_ORANGE 2

#macro BS_IDLE 0
#macro BS_HOLD 1

if !("shauntSans" in sansID) {
    sansID = player_id;   
} //should never happen but just incase

switch(state) {
    case BS_IDLE:
    	//sprite_index = spr_bone[boneType];
        if (hitstop > 0) exit;
        enemy_can_hit = true;
        hsp = old_hsp;
        vsp = old_vsp;
        //is_hittable = true;
        if (anim_timer mod 3 == 0) {
            image_index++;   
        }
        anim_timer++;
        old_hsp = hsp;
        old_vsp = vsp;
        hit_detection();
        //supersonicnk strikes again
        //was bashing my head on a wall trying to write my own hit detect code before
        //realizing supersonic already made a template thats way better
    break;
    
    case BS_HOLD:
    	despawn_timer = 0;
        enemy_can_hit = false;
        hit_detection();
        if !(sansID.state == clamp(sansID.state, 5, 6) && sansID.attack == AT_DSPECIAL) {
            state = BS_IDLE;
        } //go back to idle as a failsafe
    break;
}

with (asset_get( "plasma_field_obj" )) {
    with (other.id) {
        var _team = get_player_team( get_instance_player( other ));
        if (_team != get_player_team( player )
        && point_distance(
        x + 10 * spr_dir,
        y,
        get_instance_x( other ),
        get_instance_y( other )
        ) < 128) {
            instance_destroy(); 
            exit;
        }
    }
}

if (bone_hit_timer mod 2 && state != BS_HOLD) {
	//only reason im handling the damage stuff in a hitbox and not right here is
	//that bosses didnt get picked up and it bothered the shit out of me
	var hbox = create_hitbox(AT_FSPECIAL, 5, x, y);
	//take this information my child
	hbox.hsp = hsp;
	hbox.vsp = vsp;
	hbox.boneType = boneType;
	hbox.sansID = sansID;
}

/*
var sfx_dmg = sound_get("sfx_soul_damage");

with (asset_get("oPlayer")){

    //var blueMoving = ((abs(movementCheck_X - x) > 0.1) || (abs(movementCheck_Y - y) > 0.1));

    //probably best to just make a list of safe states that count as "not moving"
    var blueMoving = !(state == PS_PARRY_START || state == PS_PARRY || state == PS_IDLE || 
    	state == PS_CROUCH || state == PS_SPAWN || state == PS_RESPAWN || state == PS_DEAD ||
    	state == PS_LAND || state == PS_PRATLAND || state == PS_LANDING_LAG ||
    	state == PS_PRATFALL);
    var deadState = (state == PS_DEAD || state == PS_RESPAWN);
    var isJab = ((state == PS_ATTACK_GROUND || state == PS_ATTACK_AIR) && attack == AT_JAB);

    if (other.bone_hit_timer mod 2 && other.state != BS_HOLD && instance_place(x,y, other) 
    && get_player_team(get_instance_player(other.sansID)) != get_player_team(player)){
    	switch(other.boneType) {
    	    case ATK_BLUE: //you should put your controller down, NOW
    	        if (blueMoving && !isJab && !invincible) { krDamage(sfx_dmg, 1); }
    	        //print_debug("movementCheck_X = " + string(movementCheck_X));
    	        //print_debug("x = " + string(x));
    	    break;
    	    
    	    case ATK_ORANGE: //start running
    	        if (!blueMoving && !invincible) { krDamage(sfx_dmg, 1); }
    	    break;
    	    
    	    default:
    	        if (!deadState) krDamage(sfx_dmg, 0);
    	    break;
    	}
    }
    //if (movementCheck_X != x) { movementCheck_X = x; }
    //if (movementCheck_Y != y) { movementCheck_Y = y; }
}
*/

if (place_meeting(x,y + vsp,asset_get("par_block"))){ 
    vsp = -vsp;
    old_vsp = vsp;
    //print_debug("how");
}
if (place_meeting(x + hsp,y,asset_get("par_block"))) { 
    hsp = -hsp;
    old_hsp = hsp;
    //print_debug("how");
}
var sec = 60;
var despawn_time = (10*sec)
//var failsafe_time = (10*sec);

// orig_player_id.move_cooldown[AT_FSPECIAL] = 10;

if (sansID.was_parried || despawn_timer >= despawn_time) {
    //print_debug("DED")
    instance_destroy(); 
    exit; 
}

bone_hit_timer++;
despawn_timer++;

#define krDamage(sfx, dmgType)

sound_play(sfx);
if (dmgType) { take_damage(player, get_instance_player(other.sansID), 1); }
else {
    sansKR++;
    sansKR_timer = 0;
    sansKR_player = get_instance_player(other.sansID);
}

// Supersonic Hit Detection Template

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
kb_dir = get_hitbox_angle(hbox);
sansID = hbox.player_id; //sans robbing other sans in broad daylight
despawn_timer = 0;

switch(hbox.attack){
	case AT_JAB:
	if(hbox.hbox_num == 1) kb_dir = (kb_dir < 90 ? 0 : 180);
	else kb_dir = (kb_dir < 90 ? 55 : 125);
	break;
	case AT_FTILT:
	kb_dir = (kb_dir < 90 ? 30 : 150);
	break;
	case AT_UTILT: case AT_UAIR:
	kb_dir = 90;
	break;
	case AT_DTILT:
	break;
	case AT_DATTACK:
	if(hbox.hbox_num == 7) kb_dir = (kb_dir < 90 ? 45 : 135);
	else kb_dir = (kb_dir < 90 ? 0 : 180);
	break;
	case AT_FSTRONG: case AT_FAIR:
	kb_dir = (kb_dir < 90 ? 0 : 180);
	break;
	case AT_USTRONG:
	break;
	case AT_DSTRONG:
	break;
	case AT_NAIR:
	kb_dir = (kb_dir < 90 ? 40 : 140);
	break;
	case AT_BAIR:
	kb_dir = (sansID.spr_dir == 1 ? 200 : 330);
	break;
	case AT_DAIR:
	if(hbox.hbox_num == 2) kb_dir = (kb_dir > 90 ? 60 : 120);
	break;
}

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
if hbox.force_flinch orig_knock = 0.2; //comment out this line for grounded articles.
else orig_knock = (hbox.kb_value + hbox.damage * hbox.kb_scale * 0.05) * kb_adj;
orig_knock = max(bone_speed, orig_knock)

switch(hbox.attack) {
    case AT_DSPECIAL:
        switch(hbox.hbox_num) {
            case 1:
                with (hit_player_obj) { soul_id = "bone"; } 
                state = BS_HOLD;
                x = hit_player_obj.x+hit_player_obj.spr_dir*60;
				y = hit_player_obj.y-(hit_player_obj.char_height/2)-6;
                hsp = 0;
                vsp = 0;
                with (hit_player_obj) {
                    //hitstop = 0;
                    //destroy_hitboxes();
                    window = 4;
                    window_timer = 0;
                }
                //print_debug("lol");
            break;
            case 2:
                state = BS_IDLE;
                state_timer = 0;
                spr_dir = hit_player_obj.spr_dir;
                old_hsp = lengthdir_x(bone_speed, kb_dir);
                old_vsp = lengthdir_y(bone_speed, kb_dir);
                with (hit_player_obj) {
                    //hitstop = 0;
                    //destroy_hitboxes();
                    soul_id = noone; 
                }
                //print_debug("lmao");
            break;
        }
    break;
    default:
        old_hsp = lengthdir_x(orig_knock, kb_dir);
        old_vsp = lengthdir_y(orig_knock, kb_dir);
    break;
}

hitstop = floor(desired_hitstop); 

if article_should_lockout hit_lockout = hbox.no_other_hit;
 
sound_play(hbox.sound_effect);
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
    
    var isSans = !("shauntSans" not in player_id)
    var player_equal = player == get_instance_player(other.sansID);
    var team_equal = get_player_team(player) == get_player_team(get_instance_player(other.sansID));
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (isSans) //can be knocked around and stolen by other sans
        && (player_equal || other.enemy_can_hit)
        && !("sansID" in self)
        //&& (player_equal || other.enemy_hittable)
        //&& !(player_equal && attack == AT_FSPECIAL && type == 1) // for fspec followup. not an ideal check, but setting variables on melee hitboxes gets messy
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
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