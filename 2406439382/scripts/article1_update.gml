//article1_update

var prop = player_id;
with (player_id)
{
    if !(has_rune("N"))
    {
        move_cooldown[AT_NSPECIAL] = 40;
    }
    else
    {
        var num = 0;
        with (obj_article1)
        {
            if (player_id == prop)
            {
                num += 1;
            }
        }
        
        if (num >= 2)
        {
            move_cooldown[AT_NSPECIAL] = 40;
        }
    }
}
if (old_state != state)
{
    old_state = state;
    
    state_time = 0;
}

switch(state)
{
    case -1://spawning
        if (step == 60)
        {
            state = 0;
        }
    
    break;
    case 0://idle
        if (state_time > 30){
            hit_detection();
        }

        image_index += idle_spd;
        
        if (state_time > 60)
        {
            with (oPlayer)
            {
                if (other.player_id != self) and (state_cat == SC_HITSTUN) and (state_timer > 4) and (last_attack != AT_NSPECIAL)
                {
                    if (collision_circle(other.x,other.y,30 * other.size ,self,false,false))
                    {
                        other.state = 2;
                    }
                }
            }
        }
        
        
        if (state_time == 60 * 14)
        {
            state = 1;
        }
        
        var seija_url = player_id.url;
        if (!cant_be_hit)
        {
            var _team = get_player_team(player_id.player);
            var hitboxHit = noone;
            with pHitBox {
                if (((player_id != other.player_id) and ( type == 2)) or (((player_id.url = seija_url) and (attack == AT_FSPECIAL)) or ((player_id = other.player_id) and (attack == AT_USPECIAL)))){
                    if( collision_circle(other.x,other.y,30,self,false,false)){
                        if(hitboxHit == noone || hitboxHit.hit_priority < hit_priority){
                            hitboxHit = id;
                        }
                    }   
                }
            }
            if(hitboxHit != noone){
                
                var was_switched = false;
                var got_uspe = false
                
                if (hitboxHit.type == 1 )
                {
                    if (hitboxHit.attack == AT_FSPECIAL) and (get_char_info( hitboxHit.player, INFO_STR_NAME) =="Seija Kijin")
                    {
                        sound_play(sound_get("switch"));
                        sided = -sided;
                        
                        cant_be_hit = 20;
                        
                        var was_switched = true;
                    }
                    else
                    {//if (hitboxHit.player_id != player_id)
                    
                     state = 3;
                    
                        if (hitboxHit.player_id == player_id) and (hitboxHit.attack == AT_USPECIAL)
                        {
                            var got_uspe = true;
                            
                            state = 4;
                            
                            
                            with (player_id)
                            {
                                if (free)
                                {
                                    attack_end();
                                    set_attack(AT_USPECIAL_2)
                                    pHurtBox.sprite_index = sprite_get("uspecial_endlag_hit_hurt")
                                }
                            }
                        }
                       
                        
                        cant_be_hit = 20;
                        
                        with(player_id)
                        {
                            var eff = spawn_hit_fx( other.x , other.y - 8, doll_eyes_effect );
                            eff.depth = other.depth - 1;
                            eff.spr_dir = 1;
                        }
                    }
                    
                    
                    
                    hitstop = max(round(hitboxHit.hitpause + hitboxHit.extra_hitpause), 0);
                
                    with hitboxHit{
                    	if (type == 1)// not hitpause if projectile
                    	{
                            player_id.hitpause = true;
                            if (was_switched) or (got_uspe)
                            {
                                player_id.hitstop_full = max(round(hitpause), 0);
                            }
                            else
                            {
                                player_id.hitstop_full = 40 
                            }
                            player_id.hitstop = player_id.hitstop_full;
                            player_id.old_hsp = player_id.hsp;
                            player_id.old_vsp = player_id.vsp;
                    	}
                        player_id.has_hit = true;
                        
                        //if (was_switched) or (got_uspe)
                        {
                            spawn_hit_fx(other.x, other.y, hit_effect);
                            sound_play(sound_effect);
                        }
                        
                    }
                }
                /*
                else
                {
                    if (!hitboxHit.transcendent)
                    {
                        hitboxHit.destroyed = true;
                    }
                }
                */
            }
           
        }
        else
        {
            cant_be_hit -= 1
        }

    break;
    case 1: // leaving
        if (scale == 1)
        {
            sound_play(sound_get("doll_leaving"))
        }
        if (scale > 0)
        {
            scale -= 0.05;
        }
        else
        {
            destroyed = true;
        }
    break;
    case 2:// attack
    /*
        if (state_time == 1)
        {
            with(player_id)
            {
                sound_play(sound_get("doll_triggered"));
            }
        }
        */
       // if (state_time == 9)
        {
            with (player_id)
            {
                sound_play(sound_get("doll_scream"))
                var hitb = create_hitbox( AT_NSPECIAL, 3, other.x, other.y );
                if (other.sided = -1)
                {
                    hitb.kb_angle = 270;
                }
                
                var effe = spawn_hit_fx(other.x, other.y, curse_effect); // curse_effect
                effe.draw_angle = 90 - other.sided * 90;
            }
            destroyed = true;
        }
        image_index = 0;
    break;
    case 3:
    switch(state_time)
    {
        case 1:
            sound_play(sound_get("doll_hurt"));
        break;
        case 40:
            state = 1;
        break;
    }
    break;
    case 4:
        if (state_time == 6)
        {
            state = 2;
        }
    
    break;
}

if (step == 60 * 21)
{
  //  state = 1;
}



// CLAIREN FIELD
with (asset_get( "plasma_field_obj" )) {
        with (other.id) {
            var _team = get_player_team( get_instance_player( other ));
            if (_team != get_player_team( player )
            && point_distance(
            x + 10 * spr_dir,
            y,
            get_instance_x( other ),
            get_instance_y( other )
            ) < 30) {
               state = 1;
            }
        }
    }



state_time += 1;
step += 1;

if (destroyed)
{
    instance_destroy(self);
}





#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

var _team = get_player_team( get_instance_player( hit_player_num ));

if (hit_player_obj != player_id && _team != get_player_team( player_id.player ) && hbox.type == 1){
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
    
    state = 1;
    state_time = 0;
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