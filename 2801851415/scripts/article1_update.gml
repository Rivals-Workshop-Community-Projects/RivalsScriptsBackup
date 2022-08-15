state_timer ++;
exist_timer ++;

if (place_meeting(x, y, asset_get("plasma_field_obj")) && state != 3) {
    sound_play(asset_get("sfx_clairen_hit_med"));
    spawn_hit_fx(floor(x),floor(y),256)
    state = 3;
    state_timer = 0;
}

with(pHitBox)
{
    if(player_id == other.player_id)
    {
        if(attack == AT_DSPECIAL && hbox_num == 2 && other.state != 3)
        {
            other.hsp = floor(x-other.x);
            other.y = y;
            other.vsp = vsp;
        }
    }
}

if(((player_id.state == PS_ATTACK_AIR || player_id.state == PS_ATTACK_GROUND) && player_id.attack == AT_DSPECIAL && player_id.state_timer == 1 || player_id.state == PS_RESPAWN) && state == 1)
{ state = 3; state_timer = 0; }

switch(state)
{
    //Setting up.
    case 0:
        player_id.move_cooldown[AT_DSPECIAL] = 120;
        if(state_timer >= 8)
        {
            state_timer = 0;
            state = 1;
        }
        break;
    //Idle
    case 1:
        hitbox_detection();
        image_index = 0;//2-hits;
        //detect opponent grabby
        if(state_timer >= 20 && player_id.state_cat != SC_HITSTUN)
        {
            with(oPlayer)
            {
                if(collision_circle(other.x,other.y-30,40,id,true,false) && other.hitstun == 0 && initial_invince == 0 && player != other.player)
                {
                    other.state = 2;    
                    other.state_timer = (state == PS_HITSTUN ? 9 : -4);
                }
            }
        }
        else if(player_id.state_cat == SC_HITSTUN)
            state_timer = 10;
        break;
    //Capture!
    case 2:
        hitbox_detection();
        image_index = 3 + clamp(floor((state_timer-8)/3),0,99);
        if(state_timer == 15)
        {
            create_hitbox(AT_DSPECIAL, 1, x, y-40);
            with(pHitBox)
            {
                if(player_id == other.player_id && attack == AT_DSPECIAL && hbox_num == 2)
                    destroyed = true;
            }
        }
        if(state_timer >= 19)
            instance_destroy();

        break;
    //bye
    case 3:
        hsp = 0;
        vsp = 0;
        image_index = 2 + floor(state_timer/3)
        if(state_timer >= 12)
        {
            instance_destroy();
            sound_play(asset_get("sfx_icehit_medium2"), 0, noone, 1, 1.5);
            exit;
        }
        break;
}


// if(hit_lockout <= 0)
//     state_timer+= !lock_state;

#define setState(_state)
lock_state = true;
state = _state;
state_timer = 0;

//SuperSonic more like godlike
//article update
#define hitbox_detection
//estimated like 80% accurate imo
if hit_lockout <= 0
{
    var article = self;
    //reset hitbox groups when necessary
    
    with (oPlayer)
    {
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    }
    var currentHighestPriority = noone;
    with (pHitBox)
    {
        if `hit_${article}` not in self
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && player_id != other.player_id && hit_priority != 0 {
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
    }    
    
    if instance_exists(currentHighestPriority) with currentHighestPriority {
        sound_play(sound_effect);
        fx = spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y-40,hit_effect);
        fx.pause = 8;
        //this handles the knockback; hitstun, speed, etc.
        //apply hitpause (where applicable)
        var desired_hitstop = hitpause + damage * hitpause_growth * 0.05;
        // var orig_knock = kb_value + damage * kb_scale * 0.12 * 0.9;
        // var kb_dir = get_hitbox_angle(id);
        with other {
            if(hits > 1) 
            {
                setState(1);
                hits --;
            }
            else
                setState(3);
            
            // hsp = lengthdir_x(orig_knock, kb_dir);
            // vsp = lengthdir_y(orig_knock, kb_dir);
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
        }
        
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
        
        if type == 2
            destroyed = true;
    }
} else hit_lockout--;