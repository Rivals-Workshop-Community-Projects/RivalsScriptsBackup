//hit_player - called when one of your hitboxes hits a player
lasthitplayer = hit_player_obj;
if my_hitboxID.effect = 1917713379 {
	hit_player_obj.sealmark = 2 
	hit_player_obj.sealtimer = 600
	}
if my_hitboxID.effect = 1917713380 and hit_player_obj.sealmark = 2 {
	hit_player_obj.sealmark = 0
	take_damage( hit_player_obj.player, player, 10 );
	sound_play(asset_get("sfx_forsburn_consume_full"))
	}
if my_hitboxID.effect = 1917713380 and mytotem.state == 0 and (collision_circle( x, y-32, 64, mytotem, true, true ) or collision_circle( hit_player_obj.x, hit_player_obj.y-32, 64, mytotem, true, true ))  {
	mytotem.state = 1
	healme = 6
	sound_play(asset_get("sfx_ori_energyhit_heavy"))
}
