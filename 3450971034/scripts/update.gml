//update.gml

//////////////////////////////////////////////////////// CHARACTER SPECIFIC UPDATE /////////////////////////////////////////////////////////

// Parry Dummy Rune Player
if "PARRY_DUMMY" in self exit;

// Footstool
if (state == PS_CROUCH && state_timer >= footstool_start && down_down) {
    var _x = [x+footstool_x, x+footstool_x+footstool_w];
    var _y = [y+footstool_y, y+footstool_y+footstool_h];
    var do_footstool = false;
    
    with oPlayer if (!do_footstool && player != other.player && (state_cat != SC_HITSTUN && state != PS_TUMBLE || "PLANT_GANG" in other) && free && vsp > 0 && !hitpause) {
        if (collision_rectangle(_x[0], _y[0], _x[1], _y[1], hurtboxID, true, false)) do_footstool = true;
    }
    
    if ("PLANT_GANG" in self && collision_rectangle(_x[0], _y[0], _x[1], _y[1], asset_get("boss_eye_obj"), true, true)) do_footstool = true;
    
    if (do_footstool) {
        set_state(PS_ATTACK_GROUND);
        set_attack(AT_EXTRA_1);
        hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
    }
}

// Poison status effect
with oPlayer if (spider_plant_poison_owner == other) {
    spider_plant_poison_timer++;
    
    if (state == PS_DEAD || state == PS_RESPAWN) {
        spider_plant_poison_damage = 0;
        spider_plant_poison_timer = 0;
        spider_plant_poison_owner = noone;
    }
    if (spider_plant_poison_timer >= other.poison_tick_time) {
        take_damage(player, other.player, 1);
        spider_plant_poison_damage--;
        spider_plant_poison_timer = 0;
        if (spider_plant_poison_damage <= 0) {
            spider_plant_poison_owner = noone;
            sound_play(asset_get("sfx_ell_cooldown"), false, noone, 0.6, 0.6);
        }
    }
    else if (spider_plant_poison_timer % 5 == 3) {
        var _x = x + min(char_height, 30) * (spider_plant_poison_timer % 10 == 3 ? -1 : 1);
        _x += random_func_2(33, 16, true) - 8;
        var _y = y - random_func_2(34, max(12, char_height-6), true);
        with (other) var hfx = spawn_hit_fx(_x, _y, poison_status_vfx);
        hfx.hsp = hsp / 2;
        hfx.vsp = -2;
    }
    
    if (spider_plant_poison_owner == other) outline_color = other.poison_outline;
    else if (outline_color == other.poison_outline) {
        outline_color = [0, 0, 0];
        init_shader();
    }
}

// FSpecial outline pulse
if ((fspecial_charge >= fspecial_large_charge || fspecial_stacks > 0 /* Fspecial Infinite Charge Rune Code*/)
    && (attack != AT_FSPECIAL || !is_attacking || window >= 5)
    && (outline_color == prev_outline || outline_color == [0, 0, 0])
    && spider_plant_poison_owner == noone
) {
    outline_color = charge_outline;
var intensity = 0.90 + sin(get_gameplay_time()/60) * 0.2; // 0.6 to 1
    outline_color = [charge_outline[@0] * intensity, charge_outline[@1] * intensity, charge_outline[@2] * intensity];
    init_shader();
}
prev_outline = outline_color;
// Gets reset to black in got_parried.gml, death.gml, and set_attack.gml

// FSpecial visual flash
if (fspecial_flash > 0) fspecial_flash -= 0.08;

// USpecial/pratfall toggle
if (state == PS_PRATFALL && attack == AT_USPECIAL && !was_parried || pratless_uspecial_rune && state == PS_IDLE_AIR && attack == AT_USPECIAL && uspecial_count == 1 && prev_state == PS_ATTACK_AIR) {
    hud_offset = 30;
    if (up_pressed) {
        set_state(PS_ATTACK_AIR);
        uspecial_redeploy = true;
        set_attack(AT_USPECIAL);
        uspecial_redeploy = false;
        window = 5;
        fast_falling = false;
        create_hitbox(AT_USPECIAL, 3, x, y);
    }
}

// Interruptable SFX
if (interruptable_sfx != noone && state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    sound_stop(interruptable_sfx);
    interruptable_sfx = noone;
}

////////////////////////////////////////////////////////////////// MISC. //////////////////////////////////////////////////////////////////

//ABYSS RUNES
if (get_match_setting(SET_RUNES))
{
    //rune setup
}

if(poison_consume_rune){
    with(pHitBox){
    	if(player_id == other){
    	    if(hitbox_timer == 0 && effect == other.poison_consume_effect_index){ //Poison Consume Effect Lockout
    	    	for(var i = 0; i < array_length(can_hit); i++){
    	    		can_hit[i] = false;
    	    	}
        		for (var i = 0; i < instance_number(oPlayer); i++) // nested safe with statements, by frtoud
        		with (instance_find(oPlayer, i)) if player != other.player_id.player {
        			if spider_plant_poison_damage > 0 other.can_hit[player] = true;
        		}
    	    }
    	    if(effect == other.poison_extend_effect_index){ //Poison Consume Hitpause Grab
    	        if(hitbox_timer == 0){ // hitpause shift positional offsets
    	            pull_x_off = 0;
    	            pull_y_off = 0;
    	            switch(attack){
    	                case AT_JAB:
    	                pull_x_off = 40;
    	                pull_y_off = 5;
    	                break;
    	                case AT_USTRONG:
    	                pull_y_off = -60;
    	                break;
    	                case AT_EXTRA_1:
    	                pull_y_off = -80;
    	                break;
    	            }
    	        }
    	        if("poison_grab_list" not in self) poison_grab_list = [];
        		for (var i = 0; i < instance_number(oPlayer); i++) // nested safe with statements, by frtoud
        		with (instance_find(oPlayer, i)) if player != other.player_id.player {
        		    if(enemy_hitboxID == other && !perfect_dodging && state == PS_HITSTUN && spider_plant_poison_damage > 0) array_push(other.poison_grab_list, self);
        		}
        		for(var i = 0; i < array_length(poison_grab_list); i++){
        		    var p = poison_grab_list[i];
        		    if(instance_exists(p)){
        		        if(p.enemy_hitboxID > 0 && p.enemy_hitboxID != self) poison_grab_list[i] = noone;
        		        else {
        		            var grab_dist = point_distance(p.x, p.y, x + pull_x_off * spr_dir, y + pull_y_off + p.char_height/2)/4;
        		            var grab_dir = point_direction(p.x, p.y, x + pull_x_off * spr_dir, y + pull_y_off + p.char_height/2);
                			p.x += lengthdir_x(grab_dist, grab_dir);
                			p.y += lengthdir_y(grab_dist, grab_dir);
        		        }
        		    }
        		}
    	    }
    	}
    }
    with(hit_fx_obj){
        if(player_id == other && sprite_index == sprite_get("poison_consume_vfx") && "depth_reset" not in self){
            depth = player_id.depth + 1;
            depth_reset = true;
        }
    }
}

if(slowfall_rune){
    uspecial_override = false;
    if(slowfalling && (slowfall_duration <= 0 || !jump_down)) slowfalling = -1;
    if(!free || state == PS_DEAD || state == PS_RESPAWN){
        slowfalling = 0;
        slowfall_duration = slowfall_max;
    }
    if(free && state_cat == SC_AIR_NEUTRAL && !hitpause && slowfalling == 0 && jump_down && (vsp >= 0 || down_down)){
        slowfalling = true;
        set_attack(AT_USPECIAL);
    }
    if(slowfalling){
        slowfall_duration--;
        if(slowfall_duration%10 == 9) spawn_base_dust(x, y, "djump");
        if(is_attacking && attack != AT_USPECIAL){
            if !hitpause vsp = slowfall_speed;
        }
    }
}

if(pratless_uspecial_rune){
    if(!free && !is_attacking || !free && is_attacking && attack != AT_USPECIAL || state == PS_DEAD || state == PS_RESPAWN || state_cat == SC_HITSTUN){
        uspecial_count = 0;
    }
}

if(ptooie_parry_rune){
    if ptooie_parry_cooldown ptooie_parry_cooldown--;
    with(oPlayer) if player != other.player {
        if(!spider_plant_was_in_hitpause){
            spider_plant_stored_hsp = hsp;
            spider_plant_stored_vsp = vsp;
        }
        spider_plant_was_in_hitpause = hitpause;
    }
    if(instance_exists(ptooie_parry_dummy)){
        ptooie_parry_cooldown = 12;
        with(ptooie_parry_dummy){
            if(enemy_hitboxID > 0){
            	if(hit_player_obj.spider_plant_not_parried || hit_player_obj.extended_parry_lag && hit_player_obj.spider_plant_parried_proj && hit_player_obj.url < CH_MOLLO){
            		hit_player_obj.was_parried = false;
            		hit_player_obj.extended_parry_lag = false;
            		hit_player_obj.parry_distance = 0;
            		hit_player_obj.spider_plant_not_parried = false;
            		if(enemy_hitboxID.type == 1 && state != PS_HITSTUN){
                        hit_player_obj.old_hsp = hit_player_obj.spider_plant_stored_hsp;
                        hit_player_obj.old_vsp = hit_player_obj.spider_plant_stored_vsp;
            		}
            		with(hit_player_obj){
            		    if(state == PS_PRATFALL) set_state(PS_IDLE_AIR);
            		    if(state == PS_PRATLAND) set_state(PS_IDLE);
            		}
            	}
            	if("spider_plant_revert_parry_proj" in enemy_hitboxID && enemy_hitboxID.spider_plant_revert_parry_proj){
            		enemy_hitboxID.spider_plant_revert_parry_proj = false;
            		enemy_hitboxID.projectile_parry_stun = true;
            	}
            }
            free = true;
            char_height = 2;
            ignore_camera = true;
            hud_offset = 222000;
            set_state(PS_PRATFALL);
            free = true;
            vsp = 0;
            perfect_dodging = true;
            sprite_index = asset_get("empty_sprite");
            hurtbox_spr = sprite_get("ptooie_mask")
            hurtboxID.sprite_index = sprite_get("ptooie_mask");
            if("extra_frame_of_buffer" not in self) extra_frame_of_buffer = true;
            else instance_destroy(self);
        }
    }
}

if(nspecial_windbox_rune){
    with(oPlayer) if player != other.player {
        if(spider_plant_windbox_death_owner == other && spider_plant_windbox_death_timer) spider_plant_windbox_death_timer--;
        if(spider_plant_windbox_death_timer && y < get_stage_data(SD_TOP_BLASTZONE_Y)){
            set_state(PS_HITSTUN);
        }
    }
}

if("PLANT_GANG" not in self && plant_gang_rune){
    if(state == PS_CROUCH) {
        if(state_timer == 0) clear_button_buffer(PC_TAUNT_PRESSED);
        hud_offset = 99999;
        move_cooldown[AT_TAUNT] = 2;
        if(taunt_pressed){
            var plant_list = [];
            with(oPlayer) if "PLANT_GANG" in self && player == other.player && self != other {
                if state == PS_CROUCH array_push(plant_list, self);
            }
            if(array_length(plant_list) > 0){
                var swap_buddy = plant_list[random_func_2(abs(floor(x%200)), array_length(plant_list), true)];
                var stored_pos = [x, y, spr_dir];
                x = swap_buddy.x;
                y = swap_buddy.y;
                spr_dir = swap_buddy.spr_dir;
                swap_buddy.x = stored_pos[0];
                swap_buddy.y = stored_pos[1];
                swap_buddy.spr_dir = stored_pos[2];
                if !offset_camera {
                    offset_camera = true;
                    swap_buddy.offset_camera = true;
                }
            }
            clear_button_buffer(PC_TAUNT_PRESSED);
        }
    } else {
        offset_camera = false;
    }
    ignore_camera = offset_camera;
}

if("PLANT_GANG" in self && plant_gang_rune){
	if(outline_color != player_id.outline_color){
		outline_color = player_id.outline_color;
		init_shader();
		prev_outline = outline_color;
	}
}

if(ptooie_swarm_rune){
    if (ptooie_swarm_timer) ptooie_swarm_timer--;
    if (ptooie_swarm_cooldown) ptooie_swarm_cooldown--;
    if (ptooie_swarm_timer %10 == 1) {
        var spawn_x = ((ptooie_swarm_timer % 20) > 9 ? get_stage_data(SD_RIGHT_BLASTZONE_X) : get_stage_data(SD_LEFT_BLASTZONE_X));
        create_hitbox(AT_NSPECIAL, 3, spawn_x, get_stage_data(SD_BOTTOM_BLASTZONE_Y) - 100 - random_func_2(abs(floor(ptooie_swarm_timer%200)), 100, true));
    }
}

//tie hit particles with hit effects
with (pHitBox) if (orig_player == other.player)
{
    //put your hit fx value instead of 0
    if (hit_effect == 0) fx_particles = 1;
}

//if (shield_pressed) end_match(player); //victory screen check

//parry interraction testing
/*
with (oPlayer) if (temp_level != 0 && state == PS_PARRY && !perfect_dodged)
{
    window = 1;
    window_timer = 0;
    perfect_dodging = true;
}
*/

//NOTE: KEEP THIS SECTION AT THE BOTTOM OF UPDATE.GML
//unless you are adding #defines, which should be at the bottom
prep_hitboxes();


//custom hitbox colors system (by @SupersonicNK)
#define prep_hitboxes
{
    //Applies the hitbox sprites and prepares them to be drawn (with color!)
    with (pHitBox) if (orig_player_id == other && "dont_color" not in self)
    {
        if ("col" not in self)
        {
            with (other)
            {
                var parent = get_hitbox_value(other.attack, other.hbox_num, HG_PARENT_HITBOX)
                var true_hbox_num = parent ? parent : other.hbox_num
                other.col = get_hitbox_value(other.attack, true_hbox_num, HG_HITBOX_COLOR);
                if (other.col == 0) other.col = c_red;
                other.shape = get_hitbox_value(other.attack, true_hbox_num, HG_SHAPE)
                other.draw_colored = true;
                if (other.type == 1) other.sprite_index = __hb_hd_spr[other.shape];
                else if (get_hitbox_value(other.attack, true_hbox_num, HG_PROJECTILE_MASK) == -1) other.mask_index = __hb_hd_spr[other.shape];
                else other.draw_colored = false;
                other.draw_spr = __hb_draw_spr;
            }
        }
    }
}
//useful print function - allows us to print all variables in an specified object
//usage: print_vars(object_name); | print_vars();
#define print_vars
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

#define spawn_base_dust // written by supersonic
/// spawn_base_dust(x, y, name, dir = 0)
var dlen; //dust_length value
var dfx; //dust_fx value
var dfg; //fg_sprite value
var dfa = 0; //draw_angle value
var dust_color = 0;
var x = argument[0], y = argument[1], name = argument[2];
var dir = argument_count > 3 ? argument[3] : 0;

switch (name) {
	default: 
	case "dash_start":dlen = 21; dfx = 3; dfg = 2626; break;
	case "dash": dlen = 16; dfx = 4; dfg = 2656; break;
	case "jump": dlen = 12; dfx = 11; dfg = 2646; break;
	case "doublejump": 
	case "djump": dlen = 21; dfx = 2; dfg = 2624; break;
	case "walk": dlen = 12; dfx = 5; dfg = 2628; break;
	case "land": dlen = 24; dfx = 0; dfg = 2620; break;
	case "walljump": dlen = 24; dfx = 0; dfg = 2629; dfa = dir != 0 ? -90*dir : -90*spr_dir; break;
	case "n_wavedash": dlen = 24; dfx = 0; dfg = 2620; dust_color = 1; break;
	case "wavedash": dlen = 16; dfx = 4; dfg = 2656; dust_color = 1; break;
}
var newdust = spawn_dust_fx(x,y,asset_get("empty_sprite"),dlen);
if newdust == noone return noone;
newdust.dust_fx = dfx; //set the fx id
if dfg != -1 newdust.fg_sprite = dfg; //set the foreground sprite
newdust.dust_color = dust_color; //set the dust color
if dir != 0 newdust.spr_dir = dir; //set the spr_dir
newdust.draw_angle = dfa;
return newdust;