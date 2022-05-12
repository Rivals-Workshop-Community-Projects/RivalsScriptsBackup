//Make the sprite move.
if (player_id.move_cooldown[AT_NSPECIAL] <= 30)
	player_id.move_cooldown[AT_NSPECIAL] = 30;

oldvsp = clamp(oldvsp, 2, 99);

if (place_meeting(x, y, asset_get("plasma_field_obj"))) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    instance_destroy(); exit;
}

if (gravitytimer < 20)
	gravitytimer ++;

switch(state)
{
    case 0:// spawn
        if(!hitstop)
        {
            hit_detection();
            if (get_gameplay_time() % 4 == 0 && hbox_owner != -1)
            {   
                fx = spawn_hit_fx(x, y, diceFX);
                fx.image_blend = get_player_hud_color(hbox_owner);
            }
            if(lifetime > 25 || hbox_owner != -1) ignores_walls = false else lifetime++;
            //gravity
            if (free) {
            	if (gravitytimer < 20)
                	vsp += 0.9;
                else
                	vsp += 0.35;
            }

			if (hit_wall) 
            {
            	sound_play(sound_get("DS_dice"),false,noone,(oldhsp/8),0.95);
                x -= hsp;
				hsp = -oldhsp;
				spr_dir = -spr_dir;
			}
            else oldhsp = hsp;
			
            //bouncing
            if (!free) {
            	sound_play(sound_get("DS_dice"),false,noone,(oldvsp/12),0.95);
                vsp = -oldvsp;
                y --;
                bounces -= 1;
                if(bounces == 0)
                {   state = 2; state_timer = 0; }
            }
            else
                oldvsp = vsp*0.8;
        }

        if (y > room_height + 50 || x < -50 || x > room_width + 50)
        {
            instance_destroy();
            exit;
        }
        image_index = (state_timer/5);
        if(state_timer > 30) state_timer = 0;
        if(hitstop == 0 && hbox_owner != -1)
        {
            dicebox = create_hitbox(AT_NSPECIAL, 3, floor(x+hsp), floor(y+vsp));
            if(hbox_owner != player_id.player)
            {
                dicebox.can_hit_self = true;
                dicebox.can_hit[hbox_owner] = false;
            }
        }
        break;
    case 2://blink.
            fx = spawn_hit_fx(x,y,144);
            instance_destroy(); exit;
        break;
    case 3://blink.
    		image_index = 0;
            vsp  *= 0.9;
            hsp  *= 0.9;
            if(state_timer >= 20) { state = cardValue!=0?4:5; state_timer = 0; }
            if (state_timer == 2) sound_play(sound_get("DS_dice"),false,noone,1,1.25);
        break;
    case 4://explosion!
        //SDCH
        switch(cardValue)
        {
            case 1: 
                sound_play(asset_get("sfx_buzzsaw_hit"));
                for(i = 0; i < 4; i++)
                {
                    tempProj = create_hitbox(AT_FSPECIAL, 5, x, y);
                    tempAngle = 90-i*90;
                    tempProj.proj_angle = tempAngle;
                    tempProj.hsp = cos(tempAngle/180*-3.14)*6;
                    tempProj.vsp = sin(tempAngle/180*-3.14)*6;
                    tempProj.hit_flipper = 3;
                    if(hbox_owner != player_id.player)
                    {
                        tempProj.can_hit_self = true;
                        tempProj.can_hit[hbox_owner] = false;
                    }
                }
                for(i = 0; i < 4; i++)
                {
                    tempProj = create_hitbox(AT_FSPECIAL, 4, x, y);
                    tempAngle = 45-i*90;
                    tempProj.proj_angle = tempAngle;
                    tempProj.hsp = cos(tempAngle/180*-3.14)*5;
                    tempProj.vsp = sin(tempAngle/180*-3.14)*5;
                    tempProj.hit_flipper = 3;
                    if(hbox_owner != player_id.player)
                    {
                        tempProj.can_hit_self = true;
                        tempProj.can_hit[hbox_owner] = false;
                    }
                }
            break;
            case 2: 
		        spawn_hit_fx(x, y, club_explosion);
                nspecHitbox = create_hitbox(AT_DSPECIAL, 6, x, y);
                sound_play(asset_get("sfx_abyss_explosion_big"));
                if(hbox_owner != player_id.player)
                {
                    nspecHitbox.can_hit_self = true;
                    nspecHitbox.can_hit[hbox_owner] = false;
                }
            break;
            case 3: 
		        spawn_hit_fx(x, y, big_explosion);
                nspecHitbox = create_hitbox(AT_DSPECIAL, 5, x, y)
                nspecHitbox.hbox_owner = hbox_owner;
                sound_play(asset_get("sfx_coin_collect"));
                if(hbox_owner != player_id.player)
                {
                    nspecHitbox.can_hit_self = true;
                    nspecHitbox.can_hit[hbox_owner] = false;
                }
                break;
        }
        instance_destroy(); exit;
        break;
    case 5:
        if(state_timer % 10 == 1 || state_timer == 1) {
        	spawn_hit_fx(x-12+(random_func(2,24,true)), y-12+(random_func_2(2,24,true)), spade_explosion);
        	nspecHitbox=create_hitbox(AT_DSPECIAL, 1, x, y);
            if(hbox_owner != player_id.player)
            {
                nspecHitbox.can_hit_self = true;
                nspecHitbox.can_hit[hbox_owner] = false;
            }
        	sound_play(asset_get("sfx_abyss_hazard_burst"),false,noone,0.6,2);
        }
        if(state_timer == 30) 
        {
            spawn_hit_fx(x, y, spade_explosion);
        	nspecHitbox=create_hitbox(AT_DSPECIAL, 4, x, y);
            if(hbox_owner != player_id.player)
            {
                nspecHitbox.can_hit_self = true;
                nspecHitbox.can_hit[hbox_owner] = false;
            }
            sound_play(asset_get("sfx_abyss_hazard_burst"));
            instance_destroy();
            exit;
        }
        break;
}

if(!hitpause)
state_timer ++;

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
sound_play(hbox.sound_effect);
sound_play(sound_get("DS_dice"),false,noone,0.8,1.15);
fx = spawn_hit_fx(floor((x+hbox.x)/2),floor((y+hbox.y)/2),hbox.hit_effect);
fx.pause = 8;
fx.depth = -99;
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
hbox_owner = hbox.player;
if(bounces <= 3)
    bounces = 3;
 
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

        if(attack == AT_DAIR && player == other.player_id.player)
            dairHitPlayer = true;
        }
    }
}
else if hbox.type == 2 
{
    if !(hbox.enemies == 1 && hbox.unbashable && hbox.plasma_safe)
    {
        hbox.destroy_fx = 1;
        hbox.destroyed = true;
    }   
    if(hbox.attack == AT_FTHROW && hbox.player_id == player_id)
    {
        with(obj_article2)
        {
            hit_timer = 20; 
            die_time = state_timer + 15;    
            hsp = bounceHsp * spr_dir;
            vsp = bounceVsp;
        }
    }
}

// This puts the ARTICLE in hitpause.
hitstop = floor(desired_hitstop); 

//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.8 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 5 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
if(hsp!= 0) spr_dir = -clamp(floor(hsp*100),-1,1);
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (player_equal && (attack != AT_NSPECIAL || attack == AT_NSPECIAL && hbox_num != 3) || !player_equal) //uncomment to prevent the article from being hit by its owner.
        && (hbox.kb_value*(hbox.kb_scale+0.1) != 0)
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
if num == 0 return;
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
ds_list_destroy(hitbox_list);