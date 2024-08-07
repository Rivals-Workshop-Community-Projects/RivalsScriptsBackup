//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around
if(!instance_exists(self)) exit
if (pseudo_melee_hitbox)
{
  player_id.has_hit = has_hit;
  player_id.has_hit_player = has_hit_player;
  
  if (in_hitpause)
  {
    hitbox_hitstop = player_id.hitstop;
    if (hitbox_hitstop <= 0) in_hitpause = false;
  }
  
  if !(instance_exists(owner) and owner != noone) or !(owner.state == PS_ATTACK_AIR or owner.state == PS_ATTACK_GROUND){
  	if(attack == AT_FSPECIAL and hbox_num == 1){
  		spawn_rail();
  	}
    instance_destroy()
    exit
  }
	// x = floor(owner.x + abs(x_pos)*owner.spr_dir + owner.hsp)
	// y = floor(owner.y + y_pos + owner.vsp)
  
	in_hitpause = owner.hitstop > 0
  
}

//flips projectile sprite on parry
// draw_xscale = spr_dir;

if(hitbox_hitstop > 0) hitbox_hitstop--
in_hitpause = hitbox_hitstop > 0

switch (attack)
{
  case AT_FSPECIAL:
  	
    if(hbox_num == 1){
			image_angle = spr_dir*point_direction(0,0, dcos(mist_angle), -dsin(mist_angle))
			
			proj_angle = image_angle
			image_xscale = spr_dir*hbox_width/200
			
			image_yscale = hbox_height/200
			draw_xscale = image_xscale
			draw_yscale = image_yscale
	
			if(hitbox_timer == length and lvl > 0){
				spawn_rail();
			}
    }
    if(hbox_num == 2){
    	image_angle = spr_dir*point_direction(0,0, dcos(mist_angle), -dsin(mist_angle));
    	
    	proj_angle = image_angle;

			image_xscale = spr_dir*hbox_width/200;
			image_yscale = hbox_height/200;
			draw_xscale = image_xscale;
			draw_yscale = image_yscale;
    }
  break;

}
if(attack == player_id.coin_atk){
	
	if(player_id.state_cat == SC_HITSTUN and !switched_owner){
		switched_owner = true;
		was_parried = true;
		player = player_id.last_player;
	}
	
	if(upgrade_cooldown > 0) upgrade_cooldown--;
	if(!upgrade_cooldown and player_id.gs[3] and !hit_gs and player_id.gs[6] < player_id.gs[7]){
		var me = collision_circle(player_id.gs[0], player_id.gs[1], 70, self, false, false);
		if(me == self.id){
			if(player_id.gs[7] < 2) player_id.gs[7]++;
			
			// sound_play(asset_get("sfx_ice_nspecial_armor"), false, noone, 1, 1.5);
			sound_play(asset_get("sfx_buzzsaw_hit"), false, noone, 1, 1.5);
			spawn_hit_fx(x,y,player_id.dstrong_explosion_hfx)
			
			player_id.gs[4] = 1;
			player_id.gs[5] = player_id.gs_state_end[1]-8;
			hit_gs = true
			hitbox_hitstop = 5;
			damage = max(1, damage-1);
		}
	}
	if(vsp < 1 and !through_platforms) through_platforms = 1
	
	if(bounced){
		bounced_hit_timer++
		if(bounced_hit_timer == bounced_hit_delay){
			if(instance_exists(bounced_player_id)) can_hit[bounced_player_id.player] = 1;
			fx_created = false
		}
	}
	
	// print_vars()
	var plt = instance_place(x, y, plats)
  if (place_meeting(x, y+2, solids) or (!through_platforms and plt and (get_instance_y(plt)+5 >= (y - vsp*(vsp>0)) ))){


	  vsp = min(old_vsp*-1*0.85, -2);
	  if(plt) y = get_instance_y(plt)-8
  	var vol = clamp(abs(vsp/20), 0, 0.15);
  	var pitch = clamp(1/vol, 1, 2);
  	sound_play(asset_get("sfx_absa_cloud_placepop"), false, noone, vol, 1/vol)
	}
	// print(vsp)
	old_vsp = vsp
	
	//Animation
	if(hitbox_timer < 8){
		image_index = (player_id.game_time*0.2) % 2
	}else{
		if(bounced){
			var init_img = 7;
			var img_num = 7;
			image_index = init_img + (player_id.game_time*0.4)%img_num;
		}else{
			var init_img = 3;
			var img_num = 4;
			image_index = init_img + (player_id.game_time*0.4)%img_num;
		}
	}
}
#define print_vars
/// print_vars(instance = self)
{
    //prints the variables in the given instance, or in whatever instance ran the function.
    var instance = argument_count > 0 ? argument[0] : self;
    with (instance) {
        var names = variable_instance_get_names(self);
        var str = "";
        var lb = "
    ";
        for (var i = 0; i < array_length_1d(names); i++) {
            var val_to_add = string(variable_instance_get(self, names[i]));
        str += names[i] + ': ' + (string_length(val_to_add) > 100 ? "!!value ommitted due to size!!" : val_to_add) + ';'+lb
        
        }
        var str_length = string_length(str);
        var it = 1;
        var max_pages = ceil(str_length/4096);
        for (var i = 1; i < str_length; i+=4096) {
            get_string(`variables pg ${it++}/${max_pages}`, string_copy(str,i,4096));
        }
    }
}

//collision_line() but it returns the point it collided with.
//Function written by YellowAfterLife
//https://yal.cc/gamemaker-collision-line-point/
#define collision_line_point
/// collision_line_point(x1, y1, x2, y2, obj, prec, notme)
var x1 = argument0, y1 = argument1, x2 = argument2, y2 = argument3, obj = argument4, prec = argument5, notme = argument6;
{
	var rr, rx, ry;
	rr = collision_line(x1, y1, x2, y2, obj, prec, notme);
	rx = x2;
	ry = y2;
	if (rr != noone) {
	    var p0 = 0;
	    var p1 = 1;
	    repeat (ceil(log2(point_distance(x1, y1, x2, y2))) + 1) {
	        var np = p0 + (p1 - p0) * 0.5;
	        var nx = x1 + (x2 - x1) * np;
	        var ny = y1 + (y2 - y1) * np;
	        var px = x1 + (x2 - x1) * p0;
	        var py = y1 + (y2 - y1) * p0;
	        var nr = collision_line(px, py, nx, ny, obj, prec, notme);
	        if (nr != noone) {
	            rr = nr;
	            rx = nx;
	            ry = ny;
	            p1 = np;
	        } else p0 = np;
	    }
	}
	var r;
	r[0] = rr;
	r[1] = rx;
	r[2] = ry;
	return r;
}

#define spawn_ground_gold(x1, y1, dir)
{
	var hhfx = spawn_hit_fx(x1, y1, player_id.slash_ground_big_hfx);
	hhfx.draw_angle = dir;
	hhfx.spr_dir = 1;
}

#define get_normal_dir(x1, y1)

var rr_x = 0;
var rr_y = 0;
if(!position_meeting(x1-1, y1, solids)){
	rr_x += -1;
}
if(!position_meeting(x1+1, y1, solids)){
	rr_x += 1;
}
if(!position_meeting(x1, y1-1, solids)){
	rr_y += -1;
}
if(!position_meeting(x1, y1+1, solids)){
	rr_y += 1;
}
return point_direction(0,0,rr_x, rr_y);

#define spawn_rail()

with player_id {
	if(instance_exists(grind_article)) instance_destroy(grind_article);
	grind_article = instance_create(other.x, other.y, "obj_article1");
	var grind = grind_article;
}

var closest_point_x = x+ -spr_dir*hbox_width*dcos(proj_angle)/2;
var closest_point_y = y+ spr_dir*hbox_width*dsin(proj_angle)/2;

var farthest_point_x = x+ spr_dir*hbox_width*dcos(proj_angle)/2;
var farthest_point_y = y+ -spr_dir*hbox_width*dsin(proj_angle)/2;

if(!position_meeting(closest_point_x, closest_point_y, solids)){
	var close_to_far = collision_line_point(closest_point_x, closest_point_y, farthest_point_x, farthest_point_y, solids, false, true);
	if(close_to_far[0] != noone){
		var normal_dir = get_normal_dir(close_to_far[1], close_to_far[2]);
		close_to_far[3] = normal_dir
		spawn_ground_gold(close_to_far[1], close_to_far[2], close_to_far[3])
		// grind.entry_point = close_to_far;
	}
}
if(!position_meeting(farthest_point_x, farthest_point_y, solids)){
	
	var far_to_close = collision_line_point(farthest_point_x, farthest_point_y, closest_point_x, closest_point_y, solids, false, true);
	if(far_to_close[0] != noone){
		var normal_dir = get_normal_dir(far_to_close[1], far_to_close[2]);
		far_to_close[3] = normal_dir
		spawn_ground_gold(far_to_close[1], far_to_close[2], far_to_close[3])
		// grind.exit_point = far_to_close;
	}
}
// spawn_hit_fx(closest_point_x, closest_point_y, HFX_GEN_OMNI)
// spawn_hit_fx(farthest_point_x, farthest_point_y, HFX_GEN_SPIN)

grind.spr_dir = spr_dir;
grind.lvl = lvl;
grind.tangent_angle = tangent_angle;
grind.normal_ang = image_angle-90;
grind.article_angle = mist_angle;
grind.image_angle = image_angle;
grind.article_width = player_id.mist_distance[lvl-1];
grind.article_height = 28;

grind.image_xscale = grind.article_width/450;
grind.image_yscale = 1;