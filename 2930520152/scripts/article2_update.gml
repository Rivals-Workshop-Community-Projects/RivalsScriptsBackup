infinite_eruptions = player_id.infinite_eruptions;

var deep = depth;
with(oPlayer){
    if(depth <= deep){
        deep = depth - 1;
    }
}
with(pHitBox){
    if(depth <= deep && type == 2 && sprite_index != asset_get("empty_sprite")){
        deep = depth - 1;
    }
}
depth = deep;

var fake_free = false;
if(place_meeting(x, y - 2, asset_get("par_jumpthrough")) && position_meeting(x, y + 2, asset_get("par_jumpthrough")) && free){
	fake_free = true;
}

// ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_NSPECIAL && (player_id.window == 6 || player_id.window == 7))
if(((free && !fake_free) || !last_pillar) && state != 420 && (sprite_index == sprite_get("eruption_idle") || (sprite_index == sprite_get("eruption_spawn") && state_timer >= 9))) {
    sprite_index = sprite_get("eruption_die");
    image_index = 0;
    state = 420;
    state_timer = 0;
}

if((free || !last_pillar || (!position_meeting(x, y + 1, asset_get("par_block")) && !position_meeting(x, y + 2, asset_get("par_jumpthrough"))))
&& state != 420 && sprite_index == sprite_get("eruption_spawn") && state_timer >= 9){
    var existant = false;
    for(var i = 0; i < 3; i++){
    	if(instance_exists(player_id.eruption_instances[i])){
    		if(player_id.eruption_instances[i] == self){
    			existant = true;
    		}
    	}
    }
    if(infinite_eruptions){
    	existant = true;
    }
    if(!existant){
    	print(true)
        sprite_index = sprite_get("eruption_die");
        image_index = 0;
        state = 420;
        state_timer = 0;
    }
}

switch(state){
    case 0:
    {
        image_index = state_timer/3;
        if(state_timer >= 9){
            sprite_index = sprite_get("eruption_idle");
            image_index = 0;
            state = 1;
            state_timer = 0;
        }
        if(state_timer == 6){
            create_hitbox(AT_NSPECIAL, eruption_type, x, y - 60);
        }
    }
    break;
    case 1:
    {
        image_index = state_timer/5;
        if(state_timer == 30){
            state = 2;
            image_index_timer = state_timer;
            state_timer = 0;
        }
        var existant = false;
        for(var i = 0; i < 3; i++){
        	if(instance_exists(player_id.eruption_instances[i])){
        		if(player_id.eruption_instances[i] == self){
        			existant = true;
        		}
        	}
        }
        if(infinite_eruptions){
	    	existant = true;
	    }
        if(!existant){
            sprite_index = sprite_get("eruption_die");
            image_index = 0;
            state = 420;
            state_timer = 0;
            sound_play(asset_get("sfx_burnend"));
        }
    }
    break;
    case 2:
    {
        image_index = image_index_timer/5;
        var get_destroyed = false;
        if(!has_rune("I")){
	        with(pHitBox){
	            if(place_meeting(x, y, other)){
	                if(type == 1 && player_id != other.player_id){
	                    get_destroyed = true;
	                }
	            }
	        }
        }
        var existant = false;
        for(var i = 0; i < 3; i++){
        	if(instance_exists(player_id.eruption_instances[i])){
        		if(player_id.eruption_instances[i] == self){
        			existant = true;
        		}
        	}
        }
        if(infinite_eruptions){
	    	existant = true;
	    }
        if(get_destroyed || state_timer >= 900 || !existant){
            sprite_index = sprite_get("eruption_die");
            image_index = 0;
            state = 420;
            state_timer = 0;
            sound_play(asset_get("sfx_burnend"));
        } else {
            var meeting_self = place_meeting(x, y, player_id.hurtboxID) && !has_rune("E");
            var meeting_other = false;
            with(pHurtBox){
                if(place_meeting(x, y, other) && playerID != other.player_id && playerID.hitstop < 3){
                    meeting_other = true;
                }
            }
            if(eruption_burn_timer <= 0){
                if(meeting_self){
                    var s_hbox = create_hitbox(AT_NSPECIAL, 11, x, y - 55);
                    s_hbox.can_hit_self = true;
                    s_hbox.eruption_owner = self;
                    for(var i = 0; i < 20; i++){
                        s_hbox.can_hit[i] = (i == player_id.player);
                    }
                }
                if(meeting_other){
                    var o_hbox = create_hitbox(AT_NSPECIAL, 10, x, y - 55);
                    o_hbox.eruption_owner = self;
                    o_hbox.can_hit_self = true;
                    for(var i = 0; i < 20; i++){
                        o_hbox.can_hit[i] = (i != player_id.player);
                    }
                }
                eruption_burn_timer = 10;
                if(!has_rune("H")){
                	state_timer += 100;
                }
            }
            if(meeting_self || meeting_other){
                eruption_burn_timer--;
            } else {
                eruption_burn_timer = 4;
            }
        }
    }
    break;
    
    case 420:
    {
        if(sprite_index != sprite_get("eruption_die")){
            sprite_index = sprite_get("eruption_die");
        }
        image_index = state_timer/3;
        if(state_timer >= 9){
            instance_destroy();
            exit;
        }
    }
    break;
}

for(var i = 0; i < 3; i++){
	if(instance_exists(player_id.eruption_instances[i])){
		if(player_id.eruption_instances[i] == self){
			current_index = i;
		}
	}
}
if(state == 420){
    current_index = -1;
}
if(!infinite_eruptions){
	for(var i = 0; i < current_index; i++){
	    if(instance_exists(player_id.eruption_instances[i])){
	        if(place_meeting(x, y, player_id.eruption_instances[i])){
	            player_id.eruption_instances[i].image_index = 0;
	            player_id.eruption_instances[i].state = 420;
	            player_id.eruption_instances[i].state_timer = 0;
	            sound_play(asset_get("sfx_burnend"));
	        }
	    }
	}
}

state_timer++;
image_index_timer++;