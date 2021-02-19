//hitbox_update
if (attack == AT_USPECIAL){
    
    if frog_cooldown = 1{
        frog_cooldown_timer = frog_cooldown_timer + 1;
    }
    
    if frog_cooldown_timer = 8{
    frog_cooldown = 0;
    frog_cooldown_timer = 0
}
    
    with oPlayer {
        if(id != other.id){
        
        if other.frog_cooldown = 0{
            other.can_hit[player] = 1;
        }
        
        if other.frog_cooldown = 1{
            other.can_hit[player] = 0;
        }
        }
}

}


if attack == AT_NSPECIAL && hbox_num == 1 {
  player_id.move_cooldown[AT_NSPECIAL] = 2;
  
}

if (attack == AT_NSPECIAL && hbox_num == 1 &&  y > room_height + 100){
    instance_destroy();
}



var spikebouncecool = 50;
if (attack == AT_NSPECIAL && hbox_num = 1)
{
    if (hitbox_timer % spikebouncecool == 0) for (var i = 0; i < 20; i++)
    {
        can_hit[i] = 1;
       
    }
}

if (attack == AT_NSPECIAL){
    player_id.spikecoordx = x;
    player_id.spikecoordy = y;
    
    if (hsp > 0){
    image_index += 0.2;
    }
    if (hsp < 0){
    image_index -= 0.2;
    }
}

var spikehit = hitbox_detection();

if (attack == AT_NSPECIAL){
with (pHitBox) {
    
        if (other.orig_knock > 0){
         other.player = self.player
         
}
}
}

if (attack == AT_NSPECIAL && hsp = 0){
    length = length - 3;

}




#define hitbox_detection //credit for this part goes to supersonic
//estimated like 80% accurate imo
    var article = self;
    //reset hitbox groups when necessary
    with (oPlayer)
        if (state == clamp(state, 5, 6) && window == 1 && window_timer == 1) {
            other.hbox_group_2[@ player-1][@ attack] = array_create(10,0);
            //with other print_debug(`${article}: reset hb group for ${other.player},${other.attack}`);
        }
    
    var currentHighestPriority = noone;
    with (pHitBox) 
        if `hit_${article}` not in self
            if place_meeting(x,y,other) && other.proj_break != 1 && other.kb_value > 0 && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
                if hbox_group == -1 || ( hbox_group != -1 && other.hbox_group_2[@ orig_player-1][@ attack][@ hbox_group] == 0) {
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
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + other.damage * other.kb_scale * 0.12 * kb_adj;
            kb_dir = get_hitbox_angle(other);
            
            hsp = lengthdir_x(orig_knock * 2.65, kb_dir);
            vsp = lengthdir_y(orig_knock * 1.5, kb_dir);
            
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
        if hbox_group != -1 other.hbox_group_2[@ orig_player-1][@ attack][@ hbox_group] = 1;
    }