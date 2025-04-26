//article1_init
sprite_index = sprite_get("empty_sprite");
depth = 3;     
can_be_grounded = false;
ignores_walls = false;
spr_dir = player_id.spr_dir;
count = 0;
animation = 0;
state = 1;
fair_oppo_count = 0;
if(player_id.attack == AT_FAIR){
    sprite_index = sprite_get("arrow");
    state = 2;
    with(asset_get("obj_article2")){
    		if(player_id == other.player_id){
    			fair_oppo_count++;
    		}
    			 
    		
             //                  
    	}
}