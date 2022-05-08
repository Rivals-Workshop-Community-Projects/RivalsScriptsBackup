if(get_gameplay_time()%6 == 0){
    image_index++;
}
life++;
if(state == 1){
    sprite_index = sprite_get("wall_spawn");
    if(life == 26){
        life = 0;
        state = 2;
        sprite_index = sprite_get("wall_loop");
    }
} else if(state == 2){
    ignores_walls = false;
    can_be_grounded = true;
    vsp = 0;
    if(life > 60){
    	vsp = 1;
    }
    var proj_size = 0;
    var proj_y = 0;
    with(pHitBox){
        if(type == 2 and player != other.player and !plasma_safe and place_meeting(x, y, other)){
        	if(orig_player == other.player and attack == AT_NSPECIAL){
            
        	} else {
        		destroyed = true;
        	}
        } else if (player == other.player and attack == AT_NSPECIAL and place_meeting(x, y, other) and "upgraded_shadowball" not in self){
            proj_size = hbox_num;
            proj_y = y;
            destroyed = true;
        }
    }
    if(proj_size != 0){
        sound_play(sound_get("shadowupgrade"));
        with(player_id){
            spawn_hit_fx(floor(other.x), floor(proj_y), curse);
            var bunga = create_hitbox(AT_NSPECIAL, proj_size+1, floor(other.x), floor(proj_y));
            bunga.upgraded_shadowball = true;
            bunga.length = bunga.length*.7;
            bunga.shadowball_size = proj_size;
        }
    }
    
    
    if(free){
        with oPlayer{
            if(place_meeting(x, y+4, other) and other.y >= y){
                other.vsp = 2;
            }
        }
    }
    if(life == 600){
        life = 0;
        state = 4;
        image_index = 0;
        sprite_index = sprite_get("wall_despawn");
    }
    hit_detection();
    
    if(y > room_height+120) instance_destroy(self);
    
} else if (state == 3){
    sprite_index = sprite_get("wall_break");
    if(hitstop <= 0){
        var temp_angle = kb_dir;
        var force = 20
        with(player_id){
        
            var eye_hitbox = create_hitbox(AT_FSPECIAL, 3, fspecial_wall.x, fspecial_wall.y+68);
            eye_hitbox.hsp = lengthdir_x( force, temp_angle );
            eye_hitbox.vsp = lengthdir_y( force, temp_angle );
            eye_hitbox.spr_dir = sign(eye_hitbox.hsp);
            if(eye_hitbox.spr_dir  == 0){
                eye_hitbox.spr_dir = 1;
            }
            eye_hitbox.proj_angle = sign(eye_hitbox.hsp)*darctan2(abs(eye_hitbox.vsp), abs(eye_hitbox.hsp))
            eye_hitbox.player = other.player_who_hit_wall;
            
            temp_angle+=-spr_dir*5;
            eye_hitbox = create_hitbox(AT_FSPECIAL, 3, fspecial_wall.x, fspecial_wall.y+82);
            eye_hitbox.hsp = lengthdir_x( force, temp_angle );
            eye_hitbox.vsp = lengthdir_y( force, temp_angle );
            eye_hitbox.spr_dir = sign(eye_hitbox.hsp);
            if(eye_hitbox.spr_dir  == 0){
                eye_hitbox.spr_dir = 1;
            }
            eye_hitbox.proj_angle = sign(eye_hitbox.hsp)*darctan2(abs(eye_hitbox.vsp), abs(eye_hitbox.hsp))
            
            eye_hitbox.player = other.player_who_hit_wall;
            temp_angle+=spr_dir*10;
            eye_hitbox = create_hitbox(AT_FSPECIAL, 3, fspecial_wall.x, fspecial_wall.y+54);
            eye_hitbox.hsp = lengthdir_x( force, temp_angle );
            eye_hitbox.vsp = lengthdir_y( force, temp_angle );
            eye_hitbox.spr_dir = sign(eye_hitbox.hsp);
            if(eye_hitbox.spr_dir  == 0){
                eye_hitbox.spr_dir = 1;
            }
            eye_hitbox.proj_angle = sign(eye_hitbox.hsp)*darctan2(abs(eye_hitbox.vsp), abs(eye_hitbox.hsp))
            eye_hitbox.player = other.player_who_hit_wall;
            
        
            spawn_hit_fx(fspecial_wall.x+spr_dir*8, fspecial_wall.y+68, shatter);
        }
		with(oPlayer){
			if(place_meeting(x, y+5, other) and !free and other.y >= y){
				free = true;
				state = PS_PRATFALL;
			}	
		}
        
        instance_destroy(self);
    }
} else if (state == 4){
    hit_detection();
    if(life == 16){
        instance_destroy(self);
    }
}

#define get_out_of_wall_player()
var tempInc = 1;

    while (place_meeting(x, y, other)) {
           
        if (!place_meeting((x + tempInc), y, other)){
            x += tempInc
        }else if (!place_meeting((x - tempInc), y, other)){
            x += (-tempInc)
        }else if (!place_meeting(x, (y - tempInc), other)) {
            y += (-tempInc)
        }
        else if (!place_meeting(x, (y + tempInc), other))
            y += tempInc
        else if place_meeting(x, y, other)
        {
            if (!place_meeting((x + tempInc), (y + tempInc), other))
            {
                x += tempInc
                y += tempInc
            }
            if (!place_meeting((x - tempInc), (y - tempInc), other))
            {
                x += (-tempInc)
                y += (-tempInc)
            }
            if (!place_meeting((x + tempInc), (y - tempInc), other))
            {
                x += tempInc
                y += (-tempInc)
            }
            if (!place_meeting((x - tempInc), (y + tempInc), other))
            {
                x += (-tempInc)
                y += tempInc
            }
        }
        tempInc += 1
    }
    if(place_meeting(x, bbox_top-4, other)){
        if(bbox_top <= other.bbox_bottom and bbox_bottom > other.bbox_bottom){

            vsp = -vsp;
        }
    }
#define wall_jump_player()

if (has_rock == 0 && (jump_pressed || ((select == 7 || select == 10) && jump_down)) && has_walljump && (can_wall_jump or state == PS_DOUBLE_JUMP and state_timer < 8) && (!hitpause) && (!wrapped))
{
    var y_reach = 40
    var walljump_check = 0;
    if (collision_rectangle((x - 32), (y - 22), (x - 18), (y - y_reach), other, 0, 1) && left_down)
    {
        spr_dir = 1
        if(state == PS_DOUBLE_JUMP){
            djumps--;
            sound_stop(djump_sound);
            with (asset_get("new_dust_fx_obj")) {
                if player == other.player  && dust_fx == 2 {
                    dust_length = 0;
                }
            }
        }
        set_state(PS_WALL_JUMP)
        hsp = 0
        vsp = 0
        walljump_check = 0
        while (!place_meeting(((x - 1) - walljump_check), y, other))
        {
            walljump_check++
            if (walljump_check == 32)
            {
                walljump_check = 0
                break
            }
            else
                continue
        }
        x -= walljump_check
    }
    if (collision_rectangle((x + 18), (y - 22), (x + 32), (y - y_reach), other, 0, 1) && right_down)
    {
        spr_dir = -1
        if(state == PS_DOUBLE_JUMP){
            djumps--;
            sound_stop(djump_sound);
            with (asset_get("new_dust_fx_obj")) {
                if player == other.player  && dust_fx == 2 {
                    dust_length = 0;
                }
            }
        }
        set_state(PS_WALL_JUMP)
        hsp = 0
        vsp = 0
        walljump_check = 0
        while (!place_meeting(((x + 1) + walljump_check), y, other))
        {
            walljump_check++
            if (walljump_check == 32)
            {
                walljump_check = 0
                break
            }
            else
                continue
        }
        x += walljump_check
    }
}

if (trin == 999)
{
    if place_meeting((x + sign(hsp)), y, other)
    {
        if (state_cat == SC_HITSTUN)
        {
            if (abs(hsp) > 5)
                hsp *= -0.8
            else
                hsp *= -1
            if (free == 1 && tech_counter <= 20 && hitpause == 0 && has_rock == 0 && can_wall_tech && (!bubbled))
            {
                spr_dir = sign(hsp);
                set_state(PS_WALL_TECH);
                vsp = 0
                hsp = 0
            } else {
                sound_play(asset_get("sfx_bounce"));
            }
        }
        up_wall = 1
    }
}

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
sound_play(hbox.sound_effect);
spawn_hit_fx(x+hbox.hit_effect_x,y+hbox.hit_effect_y,hbox.hit_effect);
 
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
 
state = 3;
life = 0;
kb_dir = get_hitbox_angle(hbox);
if(hbox.attack == AT_DAIR){
    kb_dir = -90;
} else if (hbox.attack == AT_JAB or hbox.attack == AT_DATTACK or hbox.attack == AT_FAIR or hbox.attack == AT_NAIR){
    kb_dir = hbox.spr_dir > 0 ? 0 : 180;
}
var temp_angle = kb_dir;
var force = 20
sound_play(sound_get("shatter"));
if(hbox.player != player_id.player){
    player_id.fspecial_hard_cd = true;
    player_id.move_cooldown[AT_FSPECIAL] = 300;
    player_id.move_cooldown[AT_FSPECIAL_AIR] = 300;
} else {
	
    player_id.move_cooldown[AT_FSPECIAL] = 60;
    if(player_id.move_cooldown[AT_FSPECIAL_AIR] < 60){
    	player_id.fspecial_hard_cd = true;
    	player_id.move_cooldown[AT_FSPECIAL_AIR] = 60;
    }
}
player_who_hit_wall = hbox.player
with(player_id){
    //spawn_hit_fx(fspecial_wall.x+spr_dir*8, fspecial_wall.y+68, shatter);
}

/*//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
  */          
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var standing_on_wall = false;
    var wall = other;
    with(hbox.player_id){
        if(!free and y <= wall.y){
            standing_on_wall = true;
        }
    }
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free) && (!standing_on_wall)
        //&& (!hbox.type == 2) //uncomment to prevent the article from being hit by its owner.
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
            if filters(hbox) and hbox.type != 2{
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
                if filters(hbox) and hbox.type != 2 {
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