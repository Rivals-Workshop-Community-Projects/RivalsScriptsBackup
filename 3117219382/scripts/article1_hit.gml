//article1_hit.gml
//similarly to hit_player.gml, this script runs when the article is hit

//NOTE: articles can't spawn hitboxes, so all hitboxes are reffered to as [enemy_hitboxID], including the owning player
//      we can rule the player as exceptions using player_id, which is always the owner of the article
// exit;
if (is_hittable)
{
  //this [hit_var_name] places a special var on hitboxes that hit it so they won't hit the article twice
  //projectiles usually don't have the same limitation on hits as melee hitboxes, and will hit articles every frame
  var hit_var_name = `article${id}_has_hit`;
  if (hit_var_name not in enemy_hitboxID)
  {
    variable_instance_set(enemy_hitboxID, hit_var_name, true);

    //check is the hitbox' owner is not the owner of the article or a teammate of the owner of the article
    //alternatively, check if it is owner of the article and if they are using fspec on it
    if (hit_player_obj == player_id && (enemy_hitboxID.attack == AT_DSPECIAL and enemy_hitboxID.hbox_num == 1) )
    {
      if (hit_player_obj == player_id) //player interaction
      {
        if (player_id.attack == AT_DSPECIAL)
        {
        	var change = max(0,(lvl))
        	if(player_id.coins_in_bag <	player_id.max_coins_in_bag){
						player_id.coins_in_bag = clamp(player_id.coins_in_bag+change, 0, player_id.max_coins_in_bag)
						player_id.coin_fade_in_timer = player_id.coin_fade_in_time;
					}
        	spawn_hit_fx(x,y, player_id.fstrong_explosion_hfx)
        	sound_play(asset_get("sfx_shovel_hit_med2"))
        	sound_play(asset_get("sfx_rag_plant_ready"))
          instance_destroy(self);
        }
          
      }
    }
  }
}