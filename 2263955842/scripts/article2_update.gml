//article2_update
// NSPECIAL YIN YANG
var bounce = false;

//#region//hud draw stuff ------------------------------------------------------
if (w_bar_draw < w_bar)
{
	w_bar_draw += w_bar / 20;
	if (w_bar_draw > w_bar)
	{
		w_bar_draw = w_bar
	}
}

if (h_bar_draw < h_bar)
{
	h_bar_draw += h_bar / 20;
	if (h_bar_draw > h_bar)
	{
		h_bar_draw = h_bar
	}
}

if (draw_alpha < 1)
{
	draw_alpha += 1 / 20;
}
//#endregion


if(!hitstop and !is_hold){ //only animate yinyang if not in hitstop
	vsp = prev_vsp;
	hsp = prev_hsp;
	image_index += image_spd;
	if(hitstun > 0){
		vsp += yinyang_hitstun_gravity;
	} else  {
		vsp += yinyang_gravity;
	}
	if(!yinyang_is_grounded or !yinyang_can_be_grounded){
		hsp *= (1 - yinyang_air_friction);
	} else {
		hsp *= (1 - yinyang_ground_friction);
	}
	//#region//Terrain bounce code -------------------------------------------------
	/*
	if(vsp > 0 and (place_meeting(x, y+vsp, asset_get("par_jumpthrough")) and !free or place_meeting(x, y+vsp, asset_get("par_block")))){
		if(vsp > -yinyang_ground_threshold and vsp < yinyang_ground_threshold and yinyang_can_be_grounded){
			
			vsp = 0;
			if(!yinyang_is_grounded){
				sound_play(sound_get("yybounce"))
			}
			yinyang_is_grounded = true;
			
		} else {
			vsp = -prev_vsp*(1-yinyang_vertical_bounce_decay);
			sound_play(sound_get("yybounce"))
		}
		
		if(yinyang_should_decay_with_bounces and (!yinyang_is_grounded or !yinyang_can_be_grounded)) remaining_bounce_count--;
		if(yinyang_has_min_bounce and vsp < yinyang_min_bounce_height) vsp = -yinyang_min_bounce_height;
	} else if(vsp < 0) {
		yinyang_is_grounded = false;
	}
	
	if(place_meeting(x+hsp, y, asset_get("par_block"))){
		hsp*= -1*(1-yinyang_horizontal_bounce_decay);
		bounce = true;
	}*/
	if (place_meeting(x,y + vsp,asset_get("par_block")))
	{
	    vsp = -vsp;
	    bounce = true;
	}
	if (place_meeting(x + hsp,y,asset_get("par_block")))
	{
	    hsp = -hsp;
	    bounce = true;
	}
	
	
	
	//#endregion
	
	//#region//camera bounce code --------------------------------------------------
	
	var height = view_get_hview()/2;
	var	width = view_get_wview()/2;
	var cam_y = get_instance_y(asset_get("camera_obj"));
	var cam_x = get_instance_x(asset_get("camera_obj"));
	//print(cam_x)
	
	/*
	if(x < cam_x - width or x > cam_x + width){
		if(x < cam_x - width){
			x = cam_x - width;
		} else {
			x = cam_x + width;
		}
		hsp*= -1*(1-yinyang_horizontal_bounce_decay);
		if(yinyang_should_decay_with_bounces) remaining_bounce_count--;
		sound_play(sound_get("yybounce"))
	}
	if(y < cam_y - height){
		vsp = -vsp;
		if(yinyang_should_decay_with_bounces) remaining_bounce_count--;
		sound_play(sound_get("yybounce"))
		if(y < cam_y - height){
			y = cam_y - height;
		} else {
			y = cam_y + height
		}
		
	}
	*/
	
	while (y - ray < cam_y - height)
	{
	    y += 1;
	    
	     if (vsp < 0)
	    {
	        vsp = abs(vsp);
	        bounce = true;
	    }
	}
	
	while(y + ray > cam_y + height)
	{
	    y -= 1;
	    
	    if(vsp > 0)
	    {
	        vsp = -abs(vsp);
	        bounce = true;
	    }
	}
	while(x - ray < cam_x - width)
	{
	    x += 1;
	    
	    if (hsp < 0)
	    {
	        hsp = abs(hsp);
	        bounce = true;
	    }
	}
	    
	while(x + ray > cam_x + width)
	{
	    x -= 1
	    
	    if (hsp > 0)
	    {
	        hsp = -abs(hsp);
	        bounce = true;
	    }
	}
	
		
		//#endregion
	
		prev_vsp = vsp;
		prev_hsp = hsp;
		hitstun--;
		if (life <= 30 && life != 0){
			life++;
		}
} else {
	if(instance_exists(active_hitbox)){
		active_hitbox.destroyed = true;
	}
	vsp = 0;
	hsp = 0;
}



// To prevent the use of the attack while the orb is present
player_id.move_cooldown[AT_NSPECIAL] = 120;

hit_detection();

if(bounce){
	if(yinyang_should_decay_with_bounces) remaining_bounce_count--;
	if(remaining_bounce_count < 3){
		sound_play(sound_get("yybounce_almost"))
	} else {
		sound_play(sound_get("yybounce"))
	}
	bounce = false;
}

//move hitbox along with the article
if(instance_exists(active_hitbox)){
	active_hitbox.x = x+hsp;
	active_hitbox.y = y+vsp;
}




if(life > 30){
	if(hitstop <= 0 and !instance_exists(active_hitbox) and yy_hit_lockout == 0){
		active_hitbox = create_article_hitbox(AT_NSPECIAL, 1, x, y);
	}
}

if(yy_hit_lockout > 0){
	yy_hit_lockout--;
}

if(hitstun >= 0){
	image_spd = .5;
} else {
	if(yinyang_is_grounded){
		if(abs(hsp) > 1){
			image_spd = abs(hsp)/10;
		} else {
			image_spd = 0;
		}
	} else {
		image_spd = max((abs(vsp) + abs(hsp))/20, .2);
	}
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
        ) < 210) {
        
        remaining_bounce_count = 0;
        
        }
    }
}

if(remaining_bounce_count <= 0 or y > room_height or (yinyang_has_lifetime and life >= yinyang_max_lifetime) or (yinyang_decays_with_damage and yinyang_damage >= yinyang_max_damage) or life <= 0){
	
	sound_play(asset_get("sfx_shovel_hit_light2")) // can be changed
    spawn_hit_fx( x, y, effect_destroy )
	
	if(instance_exists(active_hitbox)){
		active_hitbox.destroyed = true;
	}
	instance_destroy(self);
}







///     article[index]_update.gml
 
//Put this code at the bottom of the file.
#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;

with (hbox.player_id){
	sound_play(hbox.sound_effect);
	spawn_hit_fx(other.x+hbox.hit_effect_x,other.y+hbox.hit_effect_y,hbox.hit_effect);
}
 
//NSpecial Lockout
//This should prevent Reimu from redirecting the orb when the opponent hits hit.

if hit_player_obj != player_id {
    player_id.move_cooldown[AT_NSPECIAL_2] = 90;
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
else orig_knock = hbox.kb_value + (yinyang_damage + hbox.damage) * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);

if(yinyang_should_take_damage && hbox.player != player_id.player){
    yinyang_damage += hbox.damage
}

last_hit_player = hbox.player;

yy_hit_lockout = hitstop + 60;

if(yinyang_should_decay_with_bounces) remaining_bounce_count--;
if(remaining_bounce_count < 3){
	sound_play(sound_get("yybounce_almost"))
} else {
	sound_play(sound_get("yybounce"))
}

if(!yinyang_should_take_knockback){
	orig_knock = spd;
} 
hsp = lengthdir_x(orig_knock, kb_dir);
vsp = lengthdir_y(orig_knock, kb_dir);
prev_hsp = hsp;
prev_vsp = vsp;
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free) 
        && (!player_equal || player_id == other.player_id && attack != AT_DSPECIAL)
        //\\&& (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
if(yinyang_should_hit_self) hbox.can_hit_self = true;
if(yinyang_should_pass_ownership) hbox.player = last_hit_player;
hbox.my_yinyang = self;
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
 

/*-- OLD REIMU CODE
if (w_bar_draw < w_bar)
{
	w_bar_draw += w_bar / 20;
	if (w_bar_draw > w_bar)
	{
		w_bar_draw = w_bar
	}
}

if (h_bar_draw < h_bar)
{
	h_bar_draw += h_bar / 20;
	if (h_bar_draw > h_bar)
	{
		h_bar_draw = h_bar
	}
}

if (draw_alpha < 1)
{
	draw_alpha += 1 / 20;
}


// To prevent the use of the attack while the orb is present
player_id.move_cooldown[AT_NSPECIAL] = 250;

var bounce = false;
var damageless_bounce = false;
image_index += image_spd;

if (has_rune("M"))
{
	var target = noone;
	with(oPlayer)
	{
		if (get_player_team(self) != get_player_team(other.player_id))
		{
			if (collision_circle(x,y,350,other, false,true))
			{
				target = self;
			}
		}
		
	}
	
	var max_acc = spd;
	
	if (target != noone)
	{
		var ang = find_angle(x,y,target.x,target.y - 60);
		
		var acc = 0.2
		hsp += lengthdir_x(acc,ang);
		if (abs(hsp) > max_acc)
		{ 
			hsp = max_acc * sign(hsp)
						
		}
		vsp += lengthdir_y(acc,ang);
		if (abs(vsp) > max_acc)
		{ 
			vsp = max_acc * sign(vsp)
						
		}
	}

}


if (is_hold)
{
    hitstop = 10;
    
    can_be_hit_timer = 0;
}


if (can_be_hit_timer == 0){
    var _team = get_player_team(player_id.player);
    var hitboxHit = noone;
    with pHitBox {
        if(id != other.my_hitbox) and (attack != AT_DSPECIAL){
            if(place_meeting(x, y, other)){
                if(hitboxHit == noone || hitboxHit.hit_priority < hit_priority){
                    hitboxHit = id;
                }
            }   
        }
    }
    if(hitboxHit != noone){
        
      //  spd += 2; // speeding up
      
        if (is_hold)
        {
            life = 0;
            // pratfall?
        }
      
        // follow hitbox's angle

        var hit_angle = get_hitbox_angle(hitboxHit);
        hsp = spd*dcos(hit_angle);
        vsp = -spd*dsin(hit_angle);

        can_be_hit_timer = can_be_hit_timer_ref;
        //life--;
        bounce = true;
        
        
        hitstop = max(round(hitboxHit.hitpause + hitboxHit.extra_hitpause), 0);

        with hitboxHit{
        	if (type == 1)// not hitpause if projectile
        	{
                player_id.hitpause = true;
                player_id.hitstop_full = max(round(hitpause), 0);
                player_id.hitstop = player_id.hitstop_full;
                player_id.old_hsp = player_id.hsp;
                player_id.old_vsp = player_id.vsp;
        	}
            player_id.has_hit = true;
            
            spawn_hit_fx(other.x, other.y, hit_effect);
            sound_play(sound_effect);
            
            if (other.player_id == player_id) //doesn't lose life if hit by reimu
            {
                if (attack != AT_NSPECIAL_2) // except for nspecial_2
                {
                    damageless_bounce = true;
                }
            }
            
            if (attack != AT_NSPECIAL_2)
            {
            	if (other.hit_timer < 25)
            	{
                	other.hit_timer = 25 // hit_timer_ref;
            	}
            }
            else
            {
            	if (other.hit_timer < 10)
            	{
            		other.hit_timer = 10;
            	}
            }
        }

        //if(_team != get_player_team(hitboxHit.player)){
       if (instance_exists(my_hitbox))
       {
            instance_destroy(my_hitbox);
       }
        //}
    }
}
else{
    can_be_hit_timer -= 1;
}



if (hit_timer >= 1)
{
    if (hit_timer == hit_timer_ref)
    {
        bounce = true;
    }
    hit_timer -= 1;
    
    if (hit_timer == 1)// and (!player_id.is_reimu_a)
    {
        my_hitbox = create_hitbox( AT_NSPECIAL, 1 + player_id.is_reimu_a, floor(x) + floor(hsp), floor(y) + floor(vsp));
        hit_timer = 0;
        my_hitbox.no_absorb = true;
    }
}
        /*
        with (pHitBox) { // attacking the yinyang
                with (other) {
                    var _team = get_player_team( get_instance_player( other ));
                        if (place_meeting(x,y,other)) //and (_team = get_player_team( player )) 
                        {
                            if (other != my_hitbox)
                            {
                                
                               
                            // follow hitbox's angle
                            var hit_angle = get_hitbox_angle(other);
                            hsp = lengthdir_x( spd, hit_angle );
                            vsp = -lengthdir_y( spd, hit_angle );
                            
                            // natural path
                            if (abs(vsp) >= abs(hsp))
                            {
                                vsp *= -1;
                            }
                            else
                            {
                                hsp *= -1;
                            }
                            
                            
                            life -= 1;
                            
                            bounce = true;
                            can_be_hit_timer = can_be_hit_timer_ref;
                            
                            
                            hitstop = 8;
                            
                            player_id.hitpause = true;
                            player_id.hitstop = 8;
                            player_id.hitstop_full = 8;
                            
                            player_id.old_vsp = player_id.vsp;
                            player_id.old_hsp = player_id.hsp;
                            //player_id.has_hit = true;
                            spawn_hit_fx( x, y, other.hit_effect);//get_hitbox_value( other.attack, other.hbox_num, HG_VISUAL_EFFECT ))
                            sound_play(other.sound_effect);
                            
                            // destroy hitbox if not owner
                            var _team = get_player_team( get_instance_player( other ))
                            if (_team != get_player_team( player )) 
                            {
                                hit_timer = hit_timer_ref;
                                instance_destroy(my_hitbox);
                            }
                            
                            
                            
                            exit
                            }
                        }
                }
        }*/
    




// reimu A
/*
if (player_id.is_reimu_a) and (hit_timer == 0)
{
    if (collision_circle(x  + floor(hsp), y + floor(vsp), ray - 20,asset_get("pHurtBox"),false,true))
    {
        my_hitbox = create_hitbox( AT_NSPECIAL, 2, floor(x) + floor(hsp), floor(y) + floor(vsp))
        hit_timer = hit_timer_ref;
    }
}
*/





//
/*
if (place_meeting(x,y + vsp,asset_get("par_block")))
{
    vsp = -vsp;
    bounce = true;
}
if (place_meeting(x + hsp,y,asset_get("par_block")))
{
    hsp = -hsp;
    bounce = true;
}


var cam_x = get_instance_x(asset_get("camera_obj"))
var cam_y = get_instance_y(asset_get("camera_obj"))
var height = view_get_hview() / 2
var width = view_get_wview() / 2

while (y - ray < cam_y - height)
{
    y += 1;
    
     if (vsp < 0)
    {
        vsp = abs(vsp);
        bounce = true;
    }
}

while(y + ray > cam_y + height)
{
    y -= 1;
    
    if(vsp > 0)
    {
        vsp = -abs(vsp);
        bounce = true;
    }
}
while(x - ray < cam_x - width)
{
    x += 1;
    
    if (hsp < 0)
    {
        hsp = abs(hsp);
        bounce = true;
    }
}
    
while(x + ray > cam_x + width)
{
    x -= 1
    
    if (hsp > 0)
    {
        hsp = -abs(hsp);
        bounce = true;
    }
}
*/
//
/* border
while (y - ray < y_bar)
{
    y += 1;
    
     if (vsp < 0)
    {
        vsp = abs(vsp);
        bounce = true;
    }
}

while(y + ray > y_bar + h_bar)
{
    y -= 1;
    
    if(vsp > 0)
    {
        vsp = -abs(vsp);
        bounce = true;
    }
}
    
while(x - ray < x_bar)
{
    x += 1;
    
    if (hsp < 0)
    {
        hsp = abs(hsp);
        bounce = true;
    }
}
    
while(x + ray > x_bar + w_bar)
{
    x -= 1
    
    if (hsp > 0)
    {
        hsp = -abs(hsp);
        bounce = true;
    }
}
*/
/*
if (bounce)
{
    
    if (!damageless_bounce)
    {
        life -= 1;
        
        if (life >= 3)
        {
            sound_play(sound_get("yybounce"))
        }
        else
        {
            sound_play(sound_get("yybounce_almost"))
        }
    }
   else
   {
       sound_play(sound_get("yybounce"))
   }
}

/*
// for rune B
if (collision_rectangle(x - 1, y -1, x + 1,y + 1, asset_get("par_block"),false,true))
{
    hit_timer = 3;
}

*/
/*
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
        ) < 210) {
        
        life = 0;
        
        }
    }
}

step += 1;

if (life <= 0)
{
    sound_play(asset_get("sfx_shovel_hit_light2")) // can be changed
    spawn_hit_fx( x, y, effect_destroy )
    instance_destroy(self);
}

#define find_angle(x, y, x_to,y_to)


xd = argument2 - argument0;
yd = argument3 - argument1;

if (sign(xd) == sign(yd))
{
	if (yd != 0)
	{
		var angle = darctan(xd / yd) - 90 + (yd < 0) * 180;
	}
	else
	{
		var angle = 0;
	}
	
}
else
{
	if (yd != 0)
	{
		
		var angle = darctan(xd / yd) + 270 + 180 * (yd < 0)
	}
	else
	{
		var angle = 180 * (xd < 0);
	}
	
}
return angle;



