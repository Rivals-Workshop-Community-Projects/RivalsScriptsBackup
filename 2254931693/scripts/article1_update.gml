// article_update

if (state != PS_TUMBLE){
mask_index = sprite_get("frog_mask");
}

if (state == PS_TUMBLE){
mask_index = asset_get("empty_sprite");
}


if (free = 1 && (state != PS_HITSTUN && state != PS_PRATFALL && state != PS_TUMBLE)){
vsp = vsp + 1;
}

if (free = 1 && state = PS_HITSTUN){
vsp = vsp + 0.75;
}

if (free = 1 && state = PS_PRATFALL){
vsp = vsp + 1.15;
}

if (free = 0){
if (place_meeting( x , y + 1 ,asset_get("par_block"))){
    sprite_change_offset("frog_idle", 148, 326);
sprite_change_offset("frog_idle_outline", 148, 326);
sprite_change_offset("frog_idle_air", 148, 326);
sprite_change_offset("frog_land", 148, 326);
sprite_change_offset("frog_hit", 148, 326);
sprite_change_offset("frog_hitland", 148, 326);
sprite_change_offset("frog_tongue_startup", 148, 326);
sprite_change_offset("frog_tongue", 148, 326);
sprite_change_offset("frog_grabbing", 148, 326);
sprite_change_offset("frog_parried", 148, 326);
sprite_change_offset("frog_spit", 148, 326);
sprite_change_offset("frog_despawn", 148, 326);
}

if (place_meeting( x , y + 1 ,asset_get("par_jumpthrough"))){
    sprite_change_offset("frog_idle", 148, 327);
sprite_change_offset("frog_idle_outline", 148, 327);
sprite_change_offset("frog_idle_air", 148, 327);
sprite_change_offset("frog_land", 148, 327);
sprite_change_offset("frog_hit", 148, 327);
sprite_change_offset("frog_hitland", 148, 327);
sprite_change_offset("frog_tongue_startup", 148, 327);
sprite_change_offset("frog_tongue", 148, 327);
sprite_change_offset("frog_grabbing", 148, 327);
sprite_change_offset("frog_parried", 148, 327);
sprite_change_offset("frog_spit", 148, 327);
sprite_change_offset("frog_despawn", 148, 327);
}
}

if (y > room_height + 100){
    player_id.frog_exists = 0;
    player_id.frog_deathtimer = 240;
    sound_play(sound_get("bonby_frog_sd"));
    shake_camera(4, 8);
    instance_destroy();
}

if (player_id.state = PS_ATTACK_GROUND && player_id.attack = AT_DSPECIAL_2){
    var dspecialbackdir = point_direction(x, y, player_id.x + (24 * player_id.spr_dir), player_id.y - 16);
    var dspecialbackspeed = 5;
    if (player_id.x < x){
        spr_dir = -1;
    }
    if (player_id.x > x){
        spr_dir = 1;
    }    
    hsp = lengthdir_x(dspecialbackspeed, dspecialbackdir);
    vsp = lengthdir_y(dspecialbackspeed, dspecialbackdir);
}

if (player_id.state = PS_ATTACK_AIR && player_id.attack = AT_FSPECIAL_2){
    if (player_id.window_timer = 0 && player_id.window = 1){
      state = PS_TUMBLE;
      state_timer = 0;
      hsp = 0;
      vsp = 0;
      spr_dir = player_id.spr_dir
      y = player_id.y - 20;
      x = player_id.x;
    }
}

if (player_id.state = PS_HITSTUN && state = PS_TUMBLE && hsp = 0 && vsp = 0){
      state = PS_PRATFALL;
      state_timer = 0;
      hsp = -3 * spr_dir;
      vsp = -9;
}



switch(state){
    
    //Idle
    case PS_IDLE:
            sprite_index = sprite_get("frog_idle");  
        image_index = state_timer / 4;
        if (player_id.attack == AT_NSPECIAL_2 && player_id.window = 1 && player_id.window_timer = 3 && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR)){
            state = PS_SPAWN;
            state_timer = 0;
        }
        if (player_id.attack == 48 && player_id.window = 2 && player_id.window_timer = 1 && (player_id.state = PS_ATTACK_GROUND || player_id.state = PS_ATTACK_AIR)){
            state = PS_JUMPSQUAT;
            state_timer = 0;
        }        
        if free = 1 && hitstun = 0{
            state = PS_IDLE_AIR;
            state_timer = 0;
        }
        break;
        
    //Falling
    case PS_IDLE_AIR:
        sprite_index = sprite_get("frog_idle_air");
        image_index = state_timer / 4;
        if free = 0{
            hsp = 0;
            sound_play(sound_get("bonby_frog_land"))
            state = PS_LAND;
            state_timer = 0;
        }
    break;  
    
    //Landing
    case PS_LAND:
        sprite_index = sprite_get("frog_land");
        image_index = state_timer / 4;
        if state_timer = 10{
            state = PS_IDLE;
            state_timer = 0;
        }
        if free = 1{
            state = PS_IDLE_AIR;
            state_timer = 0;
        }        
        break;
    
    //Hit Landing
    case PS_PRATLAND:
        sprite_index = sprite_get("frog_hitland");
        image_index = state_timer / 7;
        if state_timer = 20{
            state = PS_IDLE;
            state_timer = 0;
        }
        if free = 1{
            state = PS_IDLE_AIR;
            state_timer = 0;
        }        
        break;   
        
    //NSpecial Startup
    case PS_SPAWN:
        sprite_index = sprite_get("frog_tongue_startup");

        image_index = state_timer / 4;     
        
        if (state_timer = 1){
 
             sound_play(sound_get("bonby_frog_start"));
                        
        if player_id.spr_dir = 1{
            spr_dir = 1;
        }
        
        if player_id.spr_dir = -1{
            spr_dir = -1;
        }   
        
        }

        if state_timer = 12{
            state = PS_ATTACK_GROUND;
            state_timer = 0;             
        }
        
        if player_id.state_cat = SC_HITSTUN{
            state = PS_IDLE;
            state_timer = 0;            
        }
        break;        
        
    //NSpecial
    case PS_ATTACK_GROUND:
        sprite_index = sprite_get("frog_tongue");

        image_index = state_timer / 3;        
        
        if state_timer = 1{
            sound_play(sound_get("bonby_frog_tongue"));
        }
   
        
        if state_timer = 3{
            create_hitbox(39, 1, x + (86 * spr_dir), y - 100);
        }
        
        if state_timer = 26{
            state = PS_IDLE;
            state_timer = 0;      
        }
        break;
        
    //NSpecial (Grabbing Player)        
    case PS_WRAPPED:
        sprite_index = sprite_get("frog_grabbing");
        image_index = 0;
        if (frog_dspecial_pausetime < 12){
            frog_dspecial_pausetime = frog_dspecial_pausetime + 1;
        }
    if (frog_dspecial_pausetime = 1){
        shake_camera(3, 3);
    }        
    if (frog_dspecial_pausetime = 11){
        sound_play( sound_get("bonby_frog_zip"));
    }              
        with (grabbedplayer){
            free = 1;
            hitstop = 5;
            hitstun = 15;
            can_tech = false;
        var grabdir = point_direction(x, y, other.x, other.y);
        var grabspeed = 30;
        if (other.frog_dspecial_pausetime > 11){
            other.frog_dspecial_movetime = other.frog_dspecial_movetime + 1;
          x += lengthdir_x(grabspeed, grabdir);
          y += lengthdir_y(grabspeed, grabdir);
        } 
          hsp = 0;
          vsp = 0;
            fall_through = true;
        }
        if (point_distance(x, y, grabbedplayer.x, grabbedplayer.y) < 36 && frog_dspecial_pausetime > 11){
            sound_play(sound_get("bonby_frog_gulp"));
            state = PS_ATTACK_AIR;
            state_timer = 0;
        }
        if (frog_dspecial_movetime = 12){
            state = PS_ATTACK_GROUND;
            frog_dspecial_movetime = 0;
            frog_dspecial_pausetime = 0;
            state_timer = 35;
        }
        break; 
        
    //NSpecial (Spitting Grabbed Player)    
    case PS_ATTACK_AIR:
        sprite_index = sprite_get("frog_spit");  
        image_index = state_timer / 5;
        frog_dspecial_pausetime = 0;    
        if (state_timer = 14){
        sound_play(sound_get("bonby_frog_spit"));
        spittargetx = player_id.x
        spittargety = player_id.y - 48;
        }        
        if (state_timer < 15){
                    if (player_id.x > x){
            spr_dir = 1;
        }
        if (player_id.x < x){
            spr_dir = -1;
        }
        with (grabbedplayer){
            free = 1;
            set_state(PS_PRATFALL);
            hitstun = 0;
            hitpause = true;
            hitstop = 1;
            initial_invince = 2;
          x = other.x + (36 * other.spr_dir)
          y = other.y - 20;
          hsp = 0;
          vsp = 0;
        visible = false; 

        }
        }
        if (state_timer > 16 && state_timer < 21){
        var spitdir = spr_dir;
        var spitspeed = 10;
        with (grabbedplayer){
        initial_invince = 0;      
            free = 1;
            hitstun = 35;
          set_state(PS_HITSTUN);  
          hsp = 7 * other.spr_dir;
            vsp = -11;
          visible = true;
        }
        }      
        
        if (state_timer = 21){
        grabbedplayer = 0;
        }

        if (state_timer = 34){
        state = PS_IDLE;
        state_timer = 0;
        }        
        break;
        
    //DSpecial (Jumpsquat)
    case PS_JUMPSQUAT:
        sprite_index = sprite_get("frog_land");
        image_index = 0;
        if (player_id.x > x){
            spr_dir = 1;
        }
        if (player_id.x < x){
            spr_dir = -1;
        }
        if state_timer = 5{
        state = PS_FIRST_JUMP;
        state_timer = 0;
        }
        break;  
        
    //DSpecial (Jumping)        
    case PS_FIRST_JUMP:
        sprite_index = sprite_get("frog_idle_air");
        image_index = state_timer / 4;
        if state_timer = 1{
        sound_play(sound_get("bonby_frog_jump"));
        y = y - 5;
        free = true;
        vsp = -10;
        }
if (state_timer > 0 && free = 1){
        var froghopdir = point_direction(x, y, player_id.x, player_id.y);
    var froghopspeed = 12.5;
    hsp = lengthdir_x(froghopspeed, froghopdir);
}        
        if (state_timer > 2 && free = 0){
            sound_play(sound_get("bonby_frog_land"))
            hsp = 0;
            state = PS_LAND;
            state_timer = 0;
        }
        break; 


    //Parried        
    case PS_HITSTUN:
        sprite_index = sprite_get("frog_parried");
        image_index = state_timer / 4;
        mask_index = asset_get("empty_sprite")       
        depth = -10;

        if (state_timer = 1){
            vsp = -10;
            hsp = -3 * spr_dir;
        }
    break;
    
    //Got Hit        
    case PS_PRATFALL:
        sprite_index = sprite_get("frog_hit");
        image_index = state_timer / 4;
        mask_index = asset_get("empty_sprite")       
        depth = -10;

        if (state_timer = 1){
            vsp = -14;
        }
        if hsp > 0{
            spr_dir = -1;
        }
        if hsp < 0{
            spr_dir = 1;
        }        
    break; 
    
    //Fspecial Throw   
    case PS_TUMBLE:
        sprite_index = asset_get("empty_sprite");
        image_index = state_timer / 4;
    break;     
   
}

state_timer++;


if lockout <= 0 {
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox) 
        if `hit_${article}` not in self
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 && player_id != other.player_id {
                if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                    //hit
                    if currentHighestPriority != noone {
                        if currentHighestPriority.hit_priority < hit_priority
                            currentHighestPriority = self;
                    } else {
                        currentHighestPriority = self;
                    }
                    
                    variable_instance_set(self, `hit_${article}`, true);
                }
            } else if (place_meeting(x,y,other) && hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 1) || (hit_priority == 0) {
                //prevent from running hit detection for optimization sake
                //with other print_debug("hit but also not");
                variable_instance_set(self, `hit_${article}`, true);
            }
    
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            state = PS_PRATFALL;
            y = y - 5;
            state_timer = 0;
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
            kb_dir = get_hitbox_angle(other);
            
            hsp = (lengthdir_x(orig_knock, kb_dir) * 1.25);
            vsp = (lengthdir_y(orig_knock, kb_dir) * 1.35);
            
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
        }
        //apply hitpause (where applicable)
        var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
        if type == 1 with player_id {
            old_vsp = vsp;
            old_hsp = hsp;
            hitpause = true;
            has_hit = true;
            if hitstop < desired_hitstop {
                hitstop = desired_hitstop;
                hitstop_full = desired_hitstop;
            }
        }
        other.hitstop = floor(desired_hitstop);
        if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
    }
} else hit_lockout--;