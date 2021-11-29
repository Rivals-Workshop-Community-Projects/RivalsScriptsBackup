if (glow_timer > glow_int)
{
    glow_timer = 0;
    glow_int--;
}

light_timer = min(light_timer+1 - (2*(state > 2)),light_max_timer)

if (state == 1 and state_timer > 250)
    glow_timer++;

lock_state = false;

if(get_gameplay_time() % 4 == 0)
    image_index ++;

if (state < 2)
{
    hsp *= 0.9
    vsp *= 0.9
    
    if(collision_circle(x,y-20,10,asset_get("par_block"),true, false)) //bounce wall
        hsp = -hsp;
}

switch(state)
{
    case 0: //spawn
        if(state_timer <= 10)
            create_hitbox(AT_NSPECIAL_2, 2, x, y) 
        if(state_timer >= 24)
            setState(1)
        break;
    case 1: //still
        if(state_timer >= 300)
            setState(3);
        hitbox_detection();
        break;
    case 2: //get hit and explodes (by anglara)
        if (state_timer == 0)
        {
            visible = false;
            var t = spawn_hit_fx(x, y, nspec_explode_big);
            t.depth = player_id.depth - 3
        }
        else if (state_timer == 4)
        {
            create_hitbox(AT_NSPECIAL_2, 1, x+2, y+2);
            setState(4);
        }
        break;
    case 3: //get hit and dies
        spawn_hit_fx(x, y, nspec_die);
        sound_play(asset_get("sfx_ori_seinhit_weak"));
        visible = false;
        setState(4);
        break;
    case 4: //disappear
        destroy_timer++;
        break;
}
        
if (destroy_timer >= 10)
{
    sound_play(asset_get("sfx_ori_spirit_flame_1"));
    instance_destroy();
}

if(hit_lockout <= 0)
    state_timer+= !lock_state;


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
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
                if hbox_group == -1 || (attack != AT_NSPECIAL_2 && player_id == other.player_id) || ( hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
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
        // spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y,hit_effect);
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
            
            setState(2 + 1*(player_id != other.player_id))

            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
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
            
            // if other.attack == AT_DSPECIAL
            // {
            //     old_vsp = -4;
            //     attack_end();
            //     set_state(PS_IDLE)
            // }
        }
        other.hitstop = floor(desired_hitstop);
        if hbox_group != -1 other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
        
        if type == 2 
        {
            destroyed = true;
            if attack == AT_DAIR with player_id vsp = -12
        }
    }
} else hit_lockout--;