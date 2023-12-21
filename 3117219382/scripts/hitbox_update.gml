//hitbox_update.gml
//like update.gml, this script updates every frame whenever a hitbox that the player owns is around
if(!instance_exists(self)) exit
if (psuedo_melee_hitbox)
{
  player_id.has_hit = has_hit;
  player_id.has_hit_player = has_hit_player;
  
  if (in_hitpause)
  {
    hitbox_hitstop = player_id.hitstop;
    if (hitbox_hitstop <= 0) in_hitpause = false;
  }
  
  if !(instance_exists(owner) and owner != noone) or !(owner.state == PS_ATTACK_AIR or owner.state == PS_ATTACK_GROUND){
    instance_destroy()
    exit
  }
  x = floor(owner.x + abs(x_pos)*owner.spr_dir + owner.hsp)
	y = floor(owner.y + y_pos + owner.vsp)
  
  
	in_hitpause = owner.hitstop > 0
  
}

//flips projectile sprite on parry
// draw_xscale = spr_dir;



switch (attack)
{
  case AT_FSPECIAL:
    // print(mist_angle)
		image_angle = spr_dir*point_direction(0,0, dcos(mist_angle), -dsin(mist_angle))
		// print(image_angle)
		proj_angle = image_angle
		image_xscale = spr_dir*hbox_width/200
		// print(image_xscale)
		image_yscale = hbox_height/200
		draw_xscale = image_xscale
		draw_yscale = image_yscale
		// print(draw_xscale)

		if(hitbox_timer == length and lvl > 0){
			with player_id {
				if(instance_exists(grind_article)) instance_destroy(grind_article)
				grind_article = instance_create(other.x, other.y, "obj_article1")
				var grind = grind_article
			}
			grind.spr_dir = spr_dir
			grind.lvl = lvl
			grind.tangent_angle = tangent_angle
			grind.normal_ang = image_angle-90
			grind.article_angle = image_angle
			grind.image_angle = image_angle
			grind.article_width = player_id.mist_distance[lvl-1]/450
			grind.article_height = 28
			
			grind.image_xscale = player_id.mist_distance[lvl-1]/450
			grind.image_yscale = 1
		}
    break;

}
if(attack == player_id.coin_atk){
	
	if(vsp < 5) through_platforms = 2
	
	if(bounced){
		bounced_hit_timer++
		if(bounced_hit_timer == bounced_hit_delay){
			can_hit[bounced_player_id.player] = 1;
			fx_created = false
		}
	}
	
	// print_vars()
  if((place_meeting(x, y+2, solids) or place_meeting(x, y+2, plats)) and !free){
  	if(old_vsp > 0.5){
  		vsp = old_vsp*-1*0.85;
	  	var vol = clamp(abs(vsp/20), 0, 0.15);
	  	var pitch = clamp(1/vol, 1, 2);
	  	sound_play(asset_get("sfx_absa_cloud_placepop"), false, noone, vol, 1/vol)
	  }
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