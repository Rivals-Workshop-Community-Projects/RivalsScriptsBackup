//article1_init

sprite_index = sprite_get("empty_sprite");
depth = 3;     
can_be_grounded = false;
ignores_walls = true;
spr_dir = player_id.spr_dir;
fspec_count = 0;
fair_self_count = 0;
fair_oppo_count = 0;
fair_anim = 0;
uspec_count = 0;
animation = 0;
//animation2 = 0;
dair_count = 1;
fstrong_count = 1;
//fstrong_count = 1;
timer = 999;
state = 0;

if(player_id.attack == AT_FSPECIAL){
    sprite_index = sprite_get("fspec_shadow");
    state = 1;
    with(asset_get("obj_article1")){
    		if(player_id == other.player_id){
    			fspec_count++;
    		}
    			 
    		
             //                  
    	}
}

if(player_id.attack == AT_USPECIAL){
    sprite_index = sprite_get("uparrow");
    state = 6;
    with(asset_get("obj_article1")){
    		if(player_id == other.player_id){
    			uspec_count++;
    		}
    			 
    		
             //                  
    	}
}

if(player_id.attack == AT_FAIR){
    sprite_index = sprite_get("arrow");
    state = 2;
    with(asset_get("obj_article1")){
    		if(player_id == other.player_id){
    			fair_self_count++;
    		}
    			 
    		
             //                  
    	}
}
if(player_id.attack == AT_DAIR){
    sprite_index = sprite_get("fspec_shadow");
    state = 4;
}

if(player_id.attack == AT_FSTRONG){
    sprite_index = sprite_get("fspec_shadow");
    state = 5;
}
/*if(player_id.attack == AT_NAIR){
    state = 3;
    with(asset_get("obj_article1")){
    		if(player_id == other.player_id){
    			nair_oppo_count++;
    		}
    			 
    		
             //                  
    	}
}*/