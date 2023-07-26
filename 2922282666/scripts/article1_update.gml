if(state_timer >= 70 && state < 4)
{
    image_index = (image_mult*4);
    state_timer = 0;
}
else
{
    image_mult = 0;
    image_index = (image_mult*4)+((state_timer > 30?floor((state_timer-30)/10):0));
}
if(player_id.strong_charge != 0 && (player_id.attack == AT_FSPECIAL) && (player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.window == 1)
{
    depth = player_id.depth-2;
    if(get_gameplay_time() % 5 == 0 )
    {
        var i1 = 0;
        repeat(2)
        {
            fx = spawn_hit_fx(x,y, fx_powerup);
            fx.draw_angle = random_func(i1*2,360,true);
            fx.depth = player_id.depth-1;
            i1++;
        }
    }
} 
depth = player_id.depth+2;
if(state_timer == 0) image_timer = 0;
if(state >= 3)
{
    player_id.move_cooldown[AT_FSPECIAL] = 2;
    player_id.move_cooldown[AT_DSPECIAL] = 2;
    player_id.move_cooldown[AT_NSPECIAL] = 2;
}
if(state != 0 && state != 4 && player_id.attack != AT_DSPECIAL)
    hit_detection();
switch(state)
{
    case 0: //follow
            spr_dir = player_id.spr_dir;
            x = floor(lerp(x,player_id.x-(45*player_id.spr_dir), 0.15));
            y = floor(lerp(y,player_id.y-50+10*sin(state_timer/20), 0.15));
        break;
    case 1: //shoot
            var movemult = .075;
            hsp *= 0.95-movemult;
            vsp *= 0.95-movemult;
            if((abs(hsp) > 7 || abs(vsp) > 7)) 
            {
                hbox = create_hitbox(AT_NSPECIAL,(vsp>2?2:1), floor(x), floor(y));
                if(vsp<-1) hbox.kb_angle = 90;
                hbox = create_hitbox(AT_NSPECIAL,(vsp>2?2:1), floor(x+hsp), floor(y+vsp));
                if(vsp<-1) hbox.kb_angle = 90;
                image_alpha = 0;
            }
            else image_alpha = 1;

            if(place_meeting(x+hsp,y,asset_get("par_block"))) hsp = -hsp*0.8;
            if(place_meeting(x,y+vsp,asset_get("par_block"))) vsp = -vsp*0.8;
        break;
    case 2: //charge
            switch(player_id.attack)
            {
                case AT_FSPECIAL:
                var pos_x = -20;
                var pos_y = -45;
                break;
                case AT_DSPECIAL:
                var pos_x = 0;
                var pos_y = -100;
                player_id.hud_offset = 60;
                depth = player_id.depth-10;
                break;
            }
            x = floor(lerp(x,player_id.x+(pos_x*player_id.spr_dir), 0.2));
            y = floor(lerp(y,player_id.y+pos_y+10, 0.2));
            if (player_id.state != PS_ATTACK_AIR && player_id.state != PS_ATTACK_GROUND)
                state = 0;
        break;
    case 3: //explosion
            depth = player_id.depth-10;
            hsp *= 0.8;
            vsp *= 0.8;
            player_id.move_cooldown[AT_NSPECIAL] = 40;
            //exploding
            if(state_timer == 1)
            {
                spawn_hit_fx(x,y,196);
                sound_play(asset_get("sfx_abyss_portal_spawn"),false, noone, 1, 1);
            }
            if(state_timer < 45)
            {
                with(oPlayer)
                {
                    if(self != other.player_id)
                    {
                        if(collision_circle(other.x,other.y,100,self,false,false) && state != PS_HITSTUN)
                        {
                            hsp *= 0.8;
                            vsp *= 0.8;
                            x = floor(lerp(x,other.x, 0.05));
                            if(free) y = floor(lerp(y,other.y+20, 0.05));
                        }
                    }
                }
            }
            else {state = 4; state_timer = 0;}
        break;
    case 4: //broken
            hsp *= 0.8;
            vsp *= 0.8;
            //exploding
            if(state_timer < 20)
            {
                if(state_timer == 1) sound_play(asset_get("sfx_pillar_crumble"),false, noone, 1, 1.5);
                image_index = 12+(state_timer)/5;
            }
            else 
            {
                if(state_timer > 80)
                {
                    image_index = 16+(state_timer-80)/5;
                    x = floor(lerp(x,player_id.x-(45*player_id.spr_dir), 0.015));
                    y = floor(lerp(y,player_id.y-50+10*sin(state_timer/20), 0.015));
                }
                else
                    image_index = 15;
            }

            if(state_timer >= 100)
            { state = 0; state_timer = 0;}
        break;
}
image_timer ++;
state_timer ++;


#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the hitbox that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.

player_obj = player_id;
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Gets hit by lasers in the otherhand
with(hbox)
{
    with(other) if(hit_player_obj != player_obj)
    {{
        //Default hit stuff
        sound_play(hbox.sound_effect);
        spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
        
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
        else
            destroyed = true;

        // This puts the ARTICLE in hitpause.
        // If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
        // or comment out the line below.
        hitstop = floor(desired_hitstop); 

        //Hit Lockout
        if article_should_lockout hit_lockout = hbox.no_other_hit;
        
        //Default Hitstun Calculation
        hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
        hitstun_full = hitstun;
        
        state = 4;
        state_timer = 0;
    }}
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
        // && (!player_equal )) //uncomment to prevent the article from being hit by its owner.
        // && ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || team_equal) ) || !player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//You probably don't have to do anything to this function.
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