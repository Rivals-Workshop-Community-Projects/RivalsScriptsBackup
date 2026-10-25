//article1_update

#macro GB_IDLE 0
#macro GB_CHARGE 1
#macro GB_READY 2
#macro GB_BLAST 3
#macro GB_DESPAWN 4
#macro GB_DESTROY 10

can_be_hit[player] = 2; //this is a cooldown so it has to be set every single frame
//(also thanks giik for helping me with this)
with oPlayer {
    if (get_player_team(player) == get_player_team(get_instance_player(other))) && !get_match_setting(SET_TEAMATTACK) {
    	other.can_be_hit[player] = 2; //teammates can't hit
    } else {
    	with other { //can't be hit during exe's invincibility frames
    	    if (state > GB_READY) { can_be_hit[get_instance_player(other)] = 2; }
    	}
    }
}

if (init == 0) {
    init = 1;
    with (asset_get("obj_article2")) {
        if (id != other.id && player_id == other.player_id && state < 10) {
            state = GB_DESTROY;
            sprite_index = spr_gaster_idle[troll];
        }
    }
}
if (state <= GB_READY) {
    with (asset_get("plasma_field_obj")){ //destroyed in clairen's plasma field
        with (other.id){
            if (get_player_team(get_instance_player(other)) != get_player_team(player)){
                if (point_distance(x+10*spr_dir, y-46, get_instance_x(other), get_instance_y(other)) < 180){
                    state = GB_DESTROY;
                }
            }
        }
    }
}

if !(state == GB_CHARGE && player_id.special_down && !state_timer) { state_timer++; }
anim_timer++;
switch(state) {
    case GB_IDLE:
    case GB_READY:
    case GB_BLAST:
    case GB_DESPAWN:
        if (anim_timer mod frames[state] == 0) {
                image_index++;
        }
    break;
}
//image_xscale = dir;
free = true;

var blaster_distance = 0;
switch(state) {
    case GB_IDLE: //literally nothing
        if (state_timer >= 5) {
            hsp = hsp*5/6;
            vsp = vsp*5/6;
        }
        if (state_timer >= state_len[state]) {
            state++;
            state_timer = 0;
            anim_timer = 0;
        }
    break;
    
    case GB_CHARGE:
        hsp = hsp*5/6;
        vsp = vsp*5/6;
        if (state_timer == 1) { spawn_hit_fx(x, y, HFX_GEN_SWEET); }
        
        charge++;
        if (charge == charge_mid) { spawn_hit_fx(x, y, HFX_GEN_OMNI); }
        if (charge == charge_max) { spawn_hit_fx(x, y, HFX_GEN_BIG); }
        with orig_player_id{
                if other.charge >= other.charge_max{
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, other.knock_growth_max);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, other.knock_angle_max);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 2);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KARMA, 6);
                }
                else if other.charge >= other.charge_mid{
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, other.knock_growth_mid);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, other.knock_angle_mid);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KARMA, 3);
                }
                else{
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KNOCKBACK_SCALING, other.knock_growth_min);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_ANGLE, other.knock_angle_min);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_FORCE_FLINCH, 0);
                    set_hitbox_value(AT_NSPECIAL, 1, HG_KARMA, 0);
                }
            }
        if (state_timer >= state_len[state]) {
            state++;
            state_timer = 0;
            anim_timer = 0;
            sprite_index = spr_gaster_ready[troll];
            image_index = 0;
        }
    break;
    
    case GB_READY: //preparing to fire
        hsp = hsp*5/6;
        vsp = vsp*5/6;
        if (state_timer == state_len[state]) {
            
            if (troll) { sound_play(snd_blaster_fire[troll]); }
            sound_play(sound_get("sfx_blaster_fire"));
        }
        if (state_timer > (state_len[state]-state_len[state]/4)) { scale_timer++; }
        
        if (state_timer >= state_len[state]) {
            state++;
            state_timer = 0;
            anim_timer = 0;
            sprite_index = spr_gaster_firing[troll];
            image_index = 0;
        }
    break;
    case GB_BLAST: //firing
        blast_timer++;
        
        var beam_len = (sansBeamLen/2);
        
        if (blast_timer == 1) {
            create_hitbox(AT_NSPECIAL, 1, x+(beam_len*spr_dir), y+1);
            //if !dir { hb.kb_angle = (180 - hb.kb_angle); }
        }
        
        if (state_timer >= state_len[state]) {
            state++;
            state_timer = 0;
            scale_timer = 0;
        }
    break;
    case GB_DESPAWN:
        scale_timer++;
        image_alpha = ease_linear(1, 0, scale_timer, 20);
    
        if (state_timer >= state_len[state]) {
            //spawn_hit_fx(x, y, 305);
            //state = 10;
            instance_destroy();
            exit;
        }
    break;
    
    case GB_DESTROY: //destroy
        spawn_hit_fx(x, y, 301);
        sound_play(sound_get("sfx_soul_break"));
        instance_destroy();
        exit;
    break;
}

player_id.move_cooldown[AT_NSPECIAL] = 100;