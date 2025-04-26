//article1_update


image_index += article_anim_speed;
lifetime++;



//Jar Explodes when Samson hits it with Dspecial
if place_meeting(x, y, pHitBox)
{
    with (pHitBox)
    {
        if ((player_id.attack == AT_DSPECIAL and pHitBox.hbox_num == 3) || (player_id.attack == AT_DSPECIAL_AIR and pHitBox.hbox_num == 3)) and (variable_instance_exists(player_id, "jar"))
        {
            if place_meeting(x, y, other) and player_id.jar.jar_health != 0
            {
               with (player_id)
               {
                   create_hitbox(AT_NSPECIAL, 3, jar.x, jar.y-50);
                    sound_play( sound_get( "sfx_jarexplosion" ) );
                    spawn_hit_fx( jar.x, jar.y+8, hit_fx_create( sprite_get( "honeyboom" ), 40 ) );
                    spawn_hit_fx( jar.x, jar.y-30, 110);
                    shake_camera( 8, 10 );
                    instance_destroy(jar);
                    jar_is_out = false;
                              if phone_cheats[CHEAT_JAR] == 0
                      {    move_cooldown[AT_NSPECIAL] = 250
                            nspecial_cool = 250;
                       }
                    instance_destroy(plunger);
                    create_hitbox( AT_DSPECIAL, 4, x+(87*spr_dir), y );
                    create_hitbox( AT_DSPECIAL, 5, x-(5*spr_dir), y );
                    sound_play(sound_get("megaboom"));
                    plungerboom = true;
                    smallhoneyshock.destroyed = true;
                    othersmallhoneyshock.destroyed = true;
               }

            }


        }

    }


}


if can_hit == 1 and jar_health > 0 and manual_boom != 1
{hit_detection();}

if lifetime == 10 && rune_behavior == false
{can_hit = 1;}

if free{
	if jar_falling_hitbox != noone{
		jar_falling_hitbox.x = x;
		jar_falling_hitbox.y = y;
		if jar_falling_hitbox.has_hit{
			vsp = -3;
			instance_destroy(jar_falling_hitbox)
			jar_falling_hitbox = noone;
			rune_behavior = false;
			can_hit = 1;
		}
	}
	with(player_id)

{move_cooldown[AT_NSPECIAL] = 999;}

}
else{
	instance_destroy(jar_falling_hitbox)
	jar_falling_hitbox = noone;
	rune_behavior = false;
	can_hit = 1;
}
with(player_id)

{move_cooldown[AT_NSPECIAL] = 0;}

if (jar_health <= 0)
{
    with(player_id)
    {              if phone_cheats[CHEAT_JAR] == 0
        {    move_cooldown[AT_NSPECIAL] = 250
    nspecial_cool = 250;
        }
        }
thar_he_blows = 1
can_hit = 0;
boomtimer += has_rune("L")? 1:0.02;
sprite_index = asset_get("empty_sprite");
}


//Gravity
if (vsp != 0 and !free) || free 
{vsp += 0.4;}


//Ground Friction
if(!free){
	if(!hitstop){
		if(hsp != 0){
			if(hsp > 0){
			hsp -= 0.2;
			}if(hsp < 0){
			hsp += 0.2;
			}if(hsp > 0 && hsp < .2){
				hsp = 0;
			}if(hsp < 0 && hsp > -0.2){
				hsp = 0;
				}
			}
		}
}



if !free 
{
        grounded++
       
}
else {grounded = 0;}





  if (place_meeting(x + hsp, noone, asset_get("par_block"))){
    hsp = -hsp
  }



//Dies via death (Bottom blastzone)
if (y >= (get_stage_data(SD_Y_POS) + get_stage_data(SD_BOTTOM_BLASTZONE) )) {
        with(player_id)
    {
          if phone_cheats[CHEAT_JAR] == 0
        {    move_cooldown[AT_NSPECIAL] = 250
    nspecial_cool = 250;
        }

    jar_is_out = false;
    }
        should_die = true;
}

if (x < 0 || x > room_width){
	with (player_id){
              if phone_cheats[CHEAT_JAR] == 0
        {    move_cooldown[AT_NSPECIAL] = 250
    nspecial_cool = 250;
        }
    jar_is_out = false;
	}
        should_die = true;
}

if(position_meeting(x,y,asset_get("plasma_field_obj")))
{
    with(player_id)
    {
        
          if phone_cheats[CHEAT_JAR] == 0
        {    move_cooldown[AT_NSPECIAL] = 250
    nspecial_cool = 250;
        }
    jar_is_out = false;
    }
        should_die = true;
       
}


 




//Makes a noise + effect when hitting the ground
if grounded == 1
{sound_play( sound_get( "sfx_jarimpact" ) );
spawn_base_dust(x, y, "land");

}

//Samson's Manual Deonation
if manual_boom == 1 
{jar_manual_boom();}


//Death by hitting it too much
if boomtimer == 1 
{
    with(player_id)
    {
    jar_is_out = false;
    }
    create_hitbox(AT_NSPECIAL, 3, x, y-50);
    sound_play( sound_get( "sfx_jarexplosion" ) );
    spawn_hit_fx( x, y+8, hit_fx_create( sprite_get( "honeyboom" ), 40 ) );
    shake_camera( 8, 10 );
    should_die = true;
}

if should_die {
    with(player_id)
    {
    jar_is_out = false;
    }
    instance_destroy() // Destroys the current instance.
    exit // optional. Makes the script stop at this point. Useful if you can't put this at the very bottom.
}


// Keeps MUG sprite forward
if (sprite_index == sprite_get("mugmoment") and spr_dir == -1) 
{
    spr_dir = 1;
}



//Put this code at the bottom of the file.
#define on_hit(hbox)
{if hbox.damage < jar_health 
{sound_play( sound_get( "jarhit_weak" ) );}
else 
{sound_play( sound_get( "jarhit_strong" ) );}


jar_health = jar_health - hbox.damage
 

}

//Default hit stuff
sound_play(hbox.sound_effect);
spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y - 43, 303)  
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
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
hitstun_full = hitstun/2;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
hsp = (lengthdir_x(orig_knock, kb_dir));
vsp = (lengthdir_y(orig_knock, kb_dir));
            
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
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
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);

#define spawn_base_dust
///spawn_base_dust(x, y, name, ?dir)
//This function spawns base cast dusts. Names can be found below.
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
    default: 
    case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
    case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
    case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
    case "doublejump": 
    case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
    case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
    case "land": dlen = 24; dfx = 0; dfg = 2620; break;
    case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
    case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
    case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;


#define jar_manual_boom()
create_hitbox(AT_NSPECIAL, 3, x, y-50);
sound_play( sound_get( "sfx_jarexplosion" ) );
spawn_hit_fx( x, y+8, hit_fx_create( sprite_get( "honeyboom" ), 40 ) );
shake_camera( 8, 10 );
should_die = true;
with(player_id)
    {
jar_is_out = false;
          if phone_cheats[CHEAT_JAR] == 0
        {    move_cooldown[AT_NSPECIAL] = 250
    nspecial_cool = 250;
        }
    }