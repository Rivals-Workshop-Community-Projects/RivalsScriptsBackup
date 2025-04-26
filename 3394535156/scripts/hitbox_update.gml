// hitbox_update.gml
#macro POWDER_CASCADE 0
#macro POWDER_BLACK 1
#macro POWDER_CLUSTER 2
#macro POWDER_SPARKLER 3

if attack == AT_NSPECIAL and hbox_num == 6 {
	if hitbox_timer mod 4 == 0 {
		spawn_hit_fx(x,y,player_id.cascade_trail_vfx)
	}
	
	var block = asset_get("par_block")
	var left = !place_meeting(x-10, y, block)
	var right = !place_meeting(x+10, y, block)
	if (place_meeting(x,y,block) and (left or right)) {
		if left and !right {
			x-=2
		}
		else {
			x+=2
		}
	}
	
	if spr_dir == -1 draw_xscale = -1;
	
	if point_distance(0,0,hsp,vsp) > 0 proj_angle = point_direction(0,0,hsp,vsp) - (180 * (draw_xscale == -1))
	
	if !free and (place_meeting(x+hsp, y+vsp+1, asset_get("par_block")) or place_meeting(x+hsp, y+vsp+1, asset_get("par_jumpthrough"))) {
		destroyed_next = true;
		var i = 1;
		sound_play(player_id.cascadeExplodeSFX, false, noone, 1, 1)
		
		var off_ledge = false;
		var arr = player_id.cascade_flames;
		for (var c = 0; c < 4; c++) {
			if player_id.cascade_flames[c].active {
				arr = player_id.cascade_flames_2
				break;
			}
		}
		
		repeat (2) {
			var position = (i == -1);
			//print(position)
			arr[ position ].active = true;
			arr[ position ].x = x + (30 * i)
			arr[ position ].y = y
			arr[ position ].can_hit_self = can_hit_self;
			arr[ position ].can_hit = original_can_hit
			var snap_threshold = 0;
			with arr[position] {
				while (!place_meeting(x,y,asset_get("par_block")) and !place_meeting(x,y,asset_get("par_jumpthrough"))) {
					y += 1
					snap_threshold++;
					
					if snap_threshold == 20 {
						off_ledge = true;
						arr[ position ].active = false;
						break;
					}
				}
			}			
			arr[ position ].spr_dir = -i
			arr[ position ].state_timer = 0;

			i = -1;
		}
	}
}

if (attack == AT_NSPECIAL and hbox_num == 1){
	
	hit_detection();
	//bounce
	 if (!free)
	 {
	 	y-=2;
	 	vsp *= 0.8;
	 }
	 
	 if cache.hitpause != -1 {
		cache.hitpause = max(0, cache.hitpause - 1);
		
		if cache.hitpause == 0 {
			cache.hitpause = -1;
			vsp = cache.vsp;
			hsp = cache.hsp;
			grav = cache.grav;
		}
	 }
	 
	 if sprite_index == sprite_get("bomb_float")  {
	 	if vsp < -14 vsp = -14
	 	
	 	if place_meeting(x,y+vsp+15,asset_get("par_block")) {
	 		// print("lol")
	 		vsp -= 1
	 		y-=2
	 	}
	 }
	 
	 var thing = point_distance(0,0,hsp,vsp) * -spr_dir * 4
	 proj_dir_storage += thing;
	 
	 switch (powder) {
	 	case POWDER_CASCADE:
	 		if hitbox_timer > length - 30 {
	 			var move_dir = point_direction(0,0,hsp,vsp)-90
	 			var amount = random_func(9, 14, true) - 7
	 			var fire_x = lengthdir_x(amount, move_dir) 
	 			var fire_y = lengthdir_y(amount, move_dir) 
	 			spawn_hit_fx(x+fire_x,y+fire_y,player_id.cascade_trail_vfx)
	 		}
			if hitbox_timer == length - 30 {
				sound_play(asset_get("sfx_burnapplied"), false, noone, 0.5, 1);
				sound_play(player_id.cascadeExplodeSFX, false, noone, 0.35, 1.65);
			}
			
			if hitbox_timer >= length {
				
			 	sound_play(player_id.cascadeEmberSFX, false, noone, 1, 1)
				var hb = create_hitbox(attack, 6, x, y)
				hb.owner = player_id
				hb.can_hit_self = was_parried or can_hit_self
				hb.can_hit = can_hit
				hb.hsp = hsp;
				hb.vsp = min(-1, vsp)
				hb.spr_dir = spr_dir
				
				var d = 0;
				var iterations = 5;
				repeat (iterations) {
					//print("lol")
					var dir = random_func(5+d, 360, false)
					var xx = lengthdir_x(20, dir)
					var yy = lengthdir_y(20, dir)
					var particle = spawn_hit_fx(x+xx,y+yy,player_id.cascade_trail_vfx)
					particle.hsp = lengthdir_x(2, dir)
					particle.vsp = lengthdir_y(2, dir)
					d += 1
				}
				spawn_hit_fx(x,y,player_id.cascade_ember_explode_vfx)
				
				destroyed = true;
			}
	 	break;
	 	case POWDER_BLACK:
	 		 if hitbox_timer >= length {
			 	destroyed = true;
			 	
				var hb = create_hitbox(attack, 2, x, y)
				hb.owner = self;
				hb.can_hit_self = was_parried or can_hit_self
				hb.can_hit = can_hit
				sound_play(player_id.bomb_explode_sound)	
				spawn_hit_fx(x,y,hit_effect)
			 }	 	
	 	break;
	 	case POWDER_CLUSTER:
	 		hit_effect = player_id.bomb_cluster_fx;
	 		if hitbox_timer >= length {
			 	destroyed = true;
			 	spawn_hit_fx(x,y,hit_effect)
			 	sound_play(sound_get("sfx_plague_cluster_buildup"), false, noone, 0.9, 1.2)
			 	with player_id {
					bomb_cluster_info.x = other.x;
					bomb_cluster_info.y = other.y;
					bomb_cluster_info.active = true;
					bomb_cluster_info.can_hit_self = other.was_parried or other.can_hit_self
					bomb_cluster_info.can_hit = other.can_hit
			 	}
			 }	 

	 		// hit_priority = 0;
	 		// with oPlayer {
	 		// 	if place_meeting(x,y,other) and other.player_id != self and bomb_state != 1 {
	 		// 		spawn_hit_fx(other.x,other.y,other.player_id.bomb_cluster_fx)
	 		// 		break;
	 		// 	}
	 		// }
	 		
	 		// if bomb_state == 1 {
	 		// 	hsp = 0;
	 		// 	vsp = 0;
	 		// 	grav = 0;
	 		// 	if bomb_explosion_timer mod 1
	 			
	 		// 	bomb_explosion_timer++;
	 		// }
	 		
	 	break;
	 	case POWDER_SPARKLER:
	 		hit_priority = 0;
	 		
	 		if hitbox_timer mod 14 == 4 {
	 			var i = 1;
	 			var offset = random_func(9, 360, false)
	 			hitbox_ref_follow = create_hitbox(AT_NSPECIAL, 3, x, y);
	 			if hitbox_timer < polite_threshold {
	 				hitbox_ref_follow.effect = 0;
	 				hitbox_ref_follow.image_xscale *= 1.25;
	 				hitbox_ref_follow.image_yscale *= 1.25;
	 			}
	 			
	 			repeat 4 {
	 				var vfx = spawn_hit_fx(x,y,player_id.bolt_vfx)
	 				var dir = ((90 * i) + 45) + offset
	 				var spd = 4;
	 				vfx.hsp = lengthdir_x(spd, dir);
	 				vfx.vsp = lengthdir_y(spd, dir);
	 				vfx.draw_angle = (90*(i-1))
	 				
	 				i += 1;
	 			}	 			
	 		}
	 		
	 		if instance_exists(hitbox_ref_follow) {
	 			hitbox_ref_follow.x = x
	 			hitbox_ref_follow.y = y
	 			hitbox_ref_follow.can_hit = can_hit
	 		}
			
			//Blastzone stuffs lol
			if (x != clamp(x, blastzone_l, blastzone_r) || y > blastzone_b || y < blastzone_t){//>
				sound_stop(sound_get("sfx_plague_sparkler_fire"));
				instance_destroy();
				exit;
			}
	 	break;
	 }
	 

	 
	 proj_angle = (floor(proj_dir_storage / 45) * 45)
}

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
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
cache.hitpause = floor(desired_hitstop + hbox.extra_hitpause); 

//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = get_hitstun_formula(hbox.damage, kb_adj, 1, hbox.damage, hbox.kb_value, hbox.kb_scale)
hitstun_full = hitstun;
            
//Default Knockback Calculation

if hbox.force_flinch
{
	orig_knock = 0.3; //comment out this line for grounded articles.
}
else 
{
	var new_kb_adj = kb_adj;
	if (ds_map_exists(player_id.bomb_kb_adj, hbox.attack)) {
		new_kb_adj = player_id.bomb_kb_adj[? hbox.attack][hbox.hbox_num-1];
	}
	
	orig_knock = get_kb_formula(0, new_kb_adj, 1, hbox.damage, hbox.kb_value, hbox.kb_scale);
}

if hbox.attack == AT_FAIR && hbox.hbox_num == 2 && hbox.player_id.url == player_id.url {
	var angle = 10;
	kb_dir = hbox.player_id.spr_dir == -1 ? 180 - angle : angle;
}
else {
	kb_dir = get_hitbox_angle(hbox)
}

cache.hsp = lengthdir_x(orig_knock, kb_dir);
cache.vsp = lengthdir_y(orig_knock, kb_dir);
cache.grav = grav
vsp = 0;
hsp = 0;
grav = 0;

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

if powder == 3 {
	hitbox_timer = max(0, hitbox_timer-10)
}
else {
	hitbox_timer = 0
}

for (var i = 0; i < 20; i++) {
	can_hit[i] = i != hbox.player_id.player;
}
can_hit_self = (hbox.player_id != player_id)

// #define on_hit2(hbox)

// with hbox {
// 	other.hitbox_timer = 0;
// 	in_hitpause = true;
	
// 	player_id.has_hit = true;
// 	player_id.old_vsp = player_id.vsp;
// 	player_id.old_hsp = player_id.hsp;
// 	player_id.hitpause = true;
// 	player_id.hitstop = get_hitstop_formula(1, damage, hitpause, hitpause_growth, extra_hitpause)
// 	player_id.hitstop_full = player_id.hitstop
// 	other.cache.hitpause = player_id.hitstop
// 	if other.grav != 0 other.cache.grav = other.grav
// 	other.vsp = 0;
// 	other.hsp = 0;
// 	other.grav = 0;
	
// 	spawn_hit_fx(other.x,other.y,hit_effect)
// 	sound_play(sound_effect)
	
// 	switch (attack) {
// 	 case AT_FAIR:
// 	 	var hsp_mult = 1;
// 	 	if hbox_num == 2
// 	 	{
// 	 		hsp_mult = 2;
// 	 		sound_play(asset_get("sfx_absa_cloud_pop"), false, noone, 0.6, 1.1)
// 	 		sound_play(asset_get("sfx_absa_harderhit"), false, noone, 1, 1.0)
// 	 		sound_play(asset_get("mfx_star"), false, noone, 0.7, 1.1)
// 	 	}
// 	 	other.cache.hsp = 14 * spr_dir * hsp_mult
// 	 	other.cache.vsp = -2
// 	 break;
// 	 default:
// 	 	var knock = get_kb_formula(100, 1, 1, damage, kb_value, kb_scale)
// 	 	var angle = get_hitbox_angle(self);
// 	 	other.cache.vsp = lengthdir_y(knock, angle)
// 	 	other.cache.hsp = lengthdir_x(knock, angle) 
// 	 break;
// 	}
// }
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
	var player_equal_ext = (attack != AT_NSPECIAL and attack != AT_FSPECIAL && player_id == other.player_id) or player_id != other.player_id;
    var player_equal = player == other.player_id.player && (attack != AT_NSPECIAL);
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && player_equal_ext
       // && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}

#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hitbox_groups[@ player-1][@ attack] = array_create(10,0);
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
        if (group == -1 || ( group != -1 && hitbox_groups[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
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
        
        if hbox == self continue;
        
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hitbox_groups[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
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
    if final_hbox.hbox_group != -1 hitbox_groups[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);
#define deep_copy
var arr = argument0;

var new_array = array_create(array_length(arr))
for (var o = 0; o < array_length(arr); o++) {
	new_array[o] = arr[o]
}

return new_array;