state_timer ++;

if(place_meeting(x+hsp,y-20,asset_get("par_block")))
    { x -= floor(hsp); state = 2; }
if(place_meeting(x,y+vsp,asset_get("par_block")))
    { y -= floor(vsp); if(vsp >= 1) state = 2; } else vsp += grav;

image_angle -= hsp;
depth = -99;

with(pHurtBox)
{
    if(playerID != other.player_id && collision_circle(other.x,other.y,24,self,true,false) && (other.state == 0 && (other.hsp != 0 || other.vsp != 0)))
        other.state = 2;
}

if(!collision_circle(x,y,12,player_id,true,false))
    spawn_protection = false;

if(state < 2 && (player_id.state == PS_DEAD || player_id.state == PS_RESPAWN))
    state = 1;

if (y < 0 || y > room_height || x < 0 || x >  room_width) 
    state = 3;

switch(state)
{
    case 0://Spawn
        if (state_timer == 1)
        sound_play(sound_get("TB_watered"));
        if(state_timer > 5)
        {
            if(hsp == 0 && vsp == 0)
                hitbox_detection();
            if(collision_circle(x,y,10,player_id,true,false) && (player_id.state != PS_AIR_DODGE && player_id.state != PS_ROLL_BACKWARD && player_id.state != PS_ROLL_FORWARD && player_id.state != PS_TECH_BACKWARD && player_id.state != PS_TECH_FORWARD) 
            && abs(vsp) <= 1 && abs(hsp) <= 1 && (player_id.hsp != 0  || player_id.vsp != 0) && !spawn_protection)
            {
                if(player_id.hsp > 0 && abs(player_id.vsp)/1.5 < abs(player_id.hsp))
                    hsp = 8;
                else if(player_id.hsp < 0 && abs(player_id.vsp)/1.5 < abs(player_id.hsp))
                    hsp = -8;
                else if(player_id.vsp > 0 && abs(player_id.hsp) < abs(player_id.vsp))
                    vsp = 8;
                else if(player_id.vsp < 0 && abs(player_id.hsp) < abs(player_id.vsp))
                    vsp = -8;
                
                was_kicked = true;
                spawn_hit_fx(x, y, 301);
                sound_play(sound_get("TB_kick"));
                // x += floor(player_id.hsp/2);
                // y += floor(player_id.vsp/2);
                // hsp = player_id.hsp*1.05;
                // vsp = player_id.vsp*1.05;
            }
            
            if(player_id.attack == AT_DSPECIAL && player_id.window == 1 && (player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR))
                { state = 1; state_timer = 0; }
        }
        break;
    case 1://Exploding
        image_index = (state_timer < (8 - floor(bomb_tick)) ? 1 : 2)
        if(state_timer > 8)
        { state_timer = 0; bomb_tick += 0.5;}
        if(bomb_tick > 6)
        { state = 2; }
        break;
    case 2: //EXPLODE
        spawn_hit_fx(x, y, TBexplosion);
        sound_play(sound_get("TB_explosion"));
        shake_camera( 6, 6 );
        hbox = create_hitbox(AT_DSPECIAL, 2, x, y);
        if(!was_kicked)
            hbox.can_hit_self = true;   
    case 3:
        instance_destroy();
        break;
}

//SuperSonic more like godlike
//article update
#define hitbox_detection
//estimated like 80% accurate imo
if hit_lockout <= 0 {
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
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
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
            state = 1;
            state_timer = 0;
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = 5;
            // for you archy. 
            // // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            // if other.force_flinch orig_knock = .3; //comment out this line for enemies.
            // else orig_knock = other.kb_value + other.damage * other.kb_scale * .5 * kb_adj;
            //kb_dir = get_hitbox_angle(other);
            
            // hsp = lengthdir_x(orig_knock*2, kb_dir);
            // vsp = lengthdir_y(orig_knock*2, kb_dir);
            
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
} else { hit_lockout--;}