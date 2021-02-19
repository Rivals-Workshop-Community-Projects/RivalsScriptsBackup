//hitbox_update

if(effect == 227){
	if(player == orig_player){
	    length++;
	    if(length == 24){
	        with player_id {
	        	var ring = instance_create(other.x + 36 * other.spr_dir, other.y - 22, "obj_article2");
	            ring.player_id = id;
	            ring.player = player;
	            ring.spr_dir = other.spr_dir * -1;
	            var ring_2 = instance_create(other.x + 36 * other.spr_dir, other.y - 22, "obj_article1");
	            ring_2.player_id = id;
	            ring_2.depth = depth - 2;
	            ring_2.player = player;
	            ring_2.spr_dir = other.spr_dir * -1;
	            ring.front = ring_2;
	            /*var front = spawn_hit_fx(other.x - 36 * other.spr_dir, other.y - 10, ring_front);
	            front.spr_dir = other.spr_dir;
	            front.depth = depth - 2;//*/
	        }
	        destroyed = true;
	    }
	}
}

/*with player_id {
	bomb_id=instance_create(other.x,other.y+32,"obj_article2");
	bomb_active=true;
	bomb_id.player_id=id;
	bomb_id.player=player;
}//*/