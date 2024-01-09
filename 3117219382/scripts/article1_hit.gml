if (is_hittable)
{
  var hit_var_name = `article${id}_has_hit`;
  if (hit_var_name not in enemy_hitboxID)
  {
    if ((hit_player_obj.url == "3117219382"))
    {
      if (enemy_hitboxID.attack == AT_DSPECIAL and enemy_hitboxID.hbox_num == 1)
      {
      	variable_instance_set(enemy_hitboxID, hit_var_name, true);
      	var change = max(0,(lvl-1))
      	if(hit_player_obj.coins_in_bag < hit_player_obj.max_coins_in_bag and change>0){
					hit_player_obj.coins_in_bag = clamp(hit_player_obj.coins_in_bag+change, 0, hit_player_obj.max_coins_in_bag)
					hit_player_obj.coin_fade_in_timer = hit_player_obj.coin_fade_in_time;
				}
      	spawn_hit_fx(x,y, hit_player_obj.fstrong_explosion_hfx)
      	sound_play(asset_get("sfx_shovel_hit_med2"))
      	sound_play(asset_get("sfx_rag_plant_ready"))
        instance_destroy(self);
        exit;
      }
      if (enemy_hitboxID.attack == AT_NSPECIAL and enemy_hitboxID.hbox_num == 1)
      {
      	if(lvl < player_id.max_lvl and enemy_hitboxID.upgrade_cooldown <= 0){
      		variable_instance_set(enemy_hitboxID, hit_var_name, true);
      		
      		enemy_hitboxID.hitbox_hitstop = 5;
      		enemy_hitboxID.damage = max(1, enemy_hitboxID.damage-1);
      		
      		lvl++;
      		article_width = mist_distance[lvl-1];
      		image_xscale = article_width/450;
					image_yscale = 1;
	      	
	      	sound_play(asset_get("sfx_buzzsaw_hit"), false, noone, 1, 1.2);
	      	spawn_hit_fx(enemy_hitboxID.x,enemy_hitboxID.y, hit_player_obj.dstrong_explosion_hfx);
	      	
	      	expand_timer = 0;
	      	
	      	x += floor(lengthdir_x(70, image_angle + 180*(spr_dir<0)));
	      	y += floor(lengthdir_y(70, image_angle + 180*(spr_dir<0)));
      		
      		//Spawn hitbox, also, hitbox update/init doesn't run if I do this in this script
      		var wid = mist_distance[lvl-1];
					var pos_x = (wid/2)*dcos(article_angle) + 40*dcos(article_angle);
					var pos_y = (wid/2)*-dsin(article_angle) + 30*-dsin(article_angle) - 30;
					with hit_player_obj{
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_X, pos_x);
						set_hitbox_value(AT_FSPECIAL, 2, HG_HITBOX_Y, pos_y);
						set_hitbox_value(AT_FSPECIAL, 2, HG_WIDTH, wid);
	      		var hb = create_hitbox(AT_FSPECIAL, 2, other.x, other.y);
					}
					hb.spr_dir = spr_dir;
					hb.mist_angle = article_angle;
					hb.lvl = lvl;
					
					with hb{
						pseudo_melee_hitbox = false;
						hbox_width = 1
						hbox_height = 1
						
						//stores hitbox grid varuables
						with (other.hit_player_obj)
						{
						  other.hbox_width = get_hitbox_value(other.attack, other.hbox_num, HG_WIDTH);
						  other.hbox_height = get_hitbox_value(other.attack, other.hbox_num, HG_HEIGHT);
						}
						
						image_angle = spr_dir*point_direction(0,0, dcos(mist_angle), -dsin(mist_angle));
						
						proj_angle = image_angle;
						image_xscale = spr_dir*wid/200;
						image_yscale = 38/200;
						draw_xscale = image_xscale;
						draw_yscale = image_yscale;
					}
      		
      	}
      }
    }else{
    	variable_instance_set(enemy_hitboxID, hit_var_name, true);
    }
  }
}