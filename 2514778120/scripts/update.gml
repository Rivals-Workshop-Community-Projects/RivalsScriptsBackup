//Alts

if (outline_color[0] == 0 && outline_color[1] == 0 && outline_color[2] == 0) {
    if (get_player_color(player) == 18) {
        outline_color = [101, 7, 6];
    }
}

//Sword control
if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) {
    for (var i = 0; i <= 1; i++) {
        if (instance_exists(sword_id[i])) {
            if (sword_id[i].follow_type == 0 && sword_id[i].state == PS_ATTACK_AIR) {
                if (attack == sword_id[i].attack && get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) > 0 
                && window > get_attack_value(attack, AG_STRONG_CHARGE_WINDOW) && sword_id[i].window == sword_attack_charge_window[i, attack]) {
                    sword_id[i].window++;
                    sword_id[i].strong_charge = 0;
                    sword_id[i].window_timer = 1;
                }
            }
        }
    }
}
else {
    for (var i = 0; i <= 1; i++) {
        if (instance_exists(sword_id[i])) {
            if (sword_id[i].follow_type == 0 && sword_id[i].state == PS_ATTACK_AIR) {
                if ((get_attack_value(sword_id[i].attack, AG_CATEGORY) == 1 && !free) 
                    || (get_attack_value(sword_id[i].attack, AG_CATEGORY) == 0 && free)
                    || (get_attack_value(sword_id[i].attack, AG_CATEGORY) == 2)) {
                    sword_id[i].next_state = PS_IDLE;
                }
            }
        }
    }
}

//USpecial use
if ((!free || state == PS_WALL_JUMP || state == PS_WALL_TECH || state == PS_HITSTUN || state == PS_HITSTUN_LAND) && uspecial_used) {
    uspecial_used = false;
}

if (uspecial_used && free)
{
	move_cooldown[AT_USPECIAL] = 2;
	move_cooldown[AT_USPECIAL_GROUND] = 2;
}

//Dialogue Buddy Compatibility
if(variable_instance_exists(id,"diag"))
{
    diagchoice = [
    "I'll create... the future.",
    "What makes you 'unique'?",
    "Commencing assessment of the target."]
}

//Rivals of Fighter compatibility
if ("superTrue" in self) {
	if (superTrue == 1) {
		superTrue = 0
		
		if (instance_exists(hit_player_obj))
			hit_player_obj.canUseCounterTimer = 300
		
		set_hitbox_value(49, 2, HG_DAMAGE, 12);
		/// X is roughly how many frames until your super finish if it's an attack, it's unessessary for status effect supers
		
		}
}
handle_hitboxes();

#define handle_hitboxes
with (pHitBox) {
    if ("sword_owner" in self && player_id == other.id && type == 1) {
        if (instance_exists(sword_owner)) {	
        	destroyed = false;
            var x_off = 0;
            var y_off = 0;
            with (player_id) {
                x_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_X);
                y_off = get_hitbox_value(other.attack, other.hbox_num, HG_HITBOX_Y);
            }
	        x_pos = ((sword_owner.x + x_off * sword_owner.spr_dir) - player_id.x);
	        y_pos = ((sword_owner.y + y_off) - player_id.y);
	        hsp = sword_owner.hsp;
	        vsp = sword_owner.vsp;
	        spr_dir = sword_owner.spr_dir;
	        
	        if (player_id.has_hit && player_id.my_hitboxID == id && sword_owner.follow_type == 1) {
                sword_owner.hitpause = player_id.hitstop;
                sword_owner.has_hit_player = true;
	            player_id.hitpause = false;
	            player_id.hitstop = 0;
	            player_id.has_hit = false;
	            player_id.has_hit_player = false;
	        }
	        
	        var at_type = 0
	        with (player_id) {
	        	at_type = get_attack_value(other.attack, AG_CATEGORY)
	        }
	        if (sword_owner.follow_type == 0 && ((at_type == 1 && !player_id.free) || (at_type == 0 && player_id.free))) {
	        	instance_destroy(id);
	        	continue;
	        }
	        
	        if (player_id.hitstop <= player_id.hitstop_full - length && player_id.has_hit && sword_owner.follow_type == 1) {
        		destroyed = true;
	        }
	        
	        if (sword_owner.hitpause > 1 && sword_owner.has_hit_player && sword_owner.follow_type == 1) {
    	       hitbox_timer = max (hitbox_timer - 1, 0);
	        }
	        
	    }
    }
    
    if (player_id == other.id && type == 1) {
        if (player_id.has_hit && player_id.my_hitboxID == id) {
            for (var i = 0; i <= 1; i++) {
                if (player_id.sword_id[i].follow_type == 0)
                    player_id.sword_id[i].hitpause = player_id.hitstop;
                    player_id.sword_id[i].has_hit_player = true;
            }
        }
    }
}

