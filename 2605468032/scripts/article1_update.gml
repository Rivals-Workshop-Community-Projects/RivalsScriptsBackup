//article1_update
switch(state)
{
    case 0: //Dspecial spawn
        timer++
        if(timer < 36)
        {
            if (EA == 1)
            sprite_index = sprite_get("bubble_form_ea");
            else
            sprite_index = sprite_get("bubble_form");
            if (timer mod 6 == 0)
            {
                image_index++;
            }
        }  
        if (timer >= 36)
        {
            outline = 1;
            if (EA == 1)
            sprite_index = sprite_get("bubble_ea")
            else
            sprite_index = sprite_get("bubble")
            if (image_alpha != 0.5)
            image_alpha -= 0.05
            if (timer >= 44)
            {
                state = 5;
            }
        }
        break;
    case 5: //Idle
        if (!instance_exists(bubbled_playerid))
        {
            if (countdown > 0)
            {
                countdown--;
            }
        }
        hitbox_detection();
        image_alpha = 0.5
        if (EA == 1)
        sprite_index = sprite_get("bubble_ea")        
        else
        sprite_index = sprite_get("bubble")
        if (move == 1)
        {
            if (timer3 <= 85)
            {
                timer3++
                hsp = ease_quadOut(10 * x_dir, 0, timer3++, 85)
            }
        }
        if (hit = 1)
        {
            hit = 2;
            hit_frames = 30;
            drift_lockout = 20;
        }
        if (drag == 1 and drift_lockout <= 0)
        {
            if (mouse < 3)
            {
                mouse++;
            }
            if (drag_y == -1)
            {
                if (vsp > -4)
                vsp -= 0.45
            }
            if (drag_y == 1)
            {
                if (vsp < 4)
                vsp += 0.45
            }
            if (drag_x == 1)
            {
                if (hsp < 4)
                hsp += 0.45;
            }
            if (drag_x == -1)
            {
                if (hsp > -4)
                hsp -= 0.45;
            }
        }
        else if (drag == 0)
        {
            if (mouse > 0)
            {
                mouse++;
                if (mouse > 6)
                {
                    mouse = -1;
                }
            }
        }
        state_timer++;
        if (hit_frames > 0)
        hit_frames--;
        
        if (vsp != 0)
        {
            vsp *= 0.95
        }
        if (hsp != 0)
        {
            hsp *= 0.95
        }
        if (place_meeting(x, y, asset_get("par_block")) and vsp > 0)
        {
            vsp *= -1
        }
        if (hsp < 0 and place_meeting(x - 10, y - 40, asset_get("par_block")))
        {
            hsp *= -1
        }
        if (place_meeting(x + 10, y - 40, asset_get("par_block")) and hsp > 0)
        {
            hsp *= -1
        }
        if !instance_exists(bubbled_playerid) {
          with (pHurtBox) {
            if (place_meeting(x, y, other)) {
              if ((playerID.state == PS_HITSTUN || playerID.state == PS_HITSTUN_LAND || playerID.state == PS_TUMBLE) and (playerID.hitpause = false) and (playerID.state_cat != SC_GROUND_COMMITTED and playerID.state_cat != SC_GROUND_NEUTRAL and playerID.invincible == false))
                other.bubbled_playerid = playerID.id;
            }
          }
        }
        else {
          with (bubbled_playerid) {
            //You're code here lol
            other.depth = 0;
            if (other.countdown_set == 0)
            {
                other.hsp = hsp * 0.75;
                other.vsp = vsp * 0.75;
                other.hitstun = 0;
                switch(wet)
                {
                    case 0:
                        other.countdown = 50;
                        break;
                    case 1:
                        other.countdown = 100;
                        break;
                    case 2:
                        other.countdown = 150;
                        break;
                    case 3:
                        other.countdown = 200;
                        break;                    
                }
                other.countdown_set = 1;
            }
            if (other.countdown > 0 and !hitpause)
            {
                other.countdown--;
            }
            if (other.countdown = 150)
            {
                wet = 2;
            }
            else if (other.countdown = 100)
            {
                wet = 1;
            }
            else if (other.countdown = 50)
            {
                wet = 0;
            }
            other.draw = 1;
            other.outline = 0;
            other.sprite_index = asset_get("empty_sprite");
            if (state == PS_RESPAWN)
            {
                other.bubbled_playerid = noone;
                instance_destroy();
                exit;
            }
            x = other.x;
            y = other.y - 2;
            if (other.drift_lockout <= 0)
            {
                if (up_down)
                {
                    other.vsp -= 0.15
                }
                if (down_down)
                {
                    other.vsp += 0.15
                }
                if (right_down)
                {
                    other.hsp += 0.15;
                }
                if (left_down)
                {
                    other.hsp -= 0.15;
                }
            }
            other.drift_lockout--;
            can_shield = false;
            can_tech = false;
            can_move = false;
            can_attack = false;
            can_fast_fall = false;
            fall_through = true;
            free = true;
            orig_knock = 0;
            invincible = false;
            invince_time = 0;
            state = PS_HITSTUN;
            state_timer = 0;
            hurt_img = 1;
            other.attacker = hit_player_obj.player;
            hit_player_obj.should_make_shockwave = false
          }
        }
        break;
    case 8: //Hitbox
        image_alpha = 1;
        sprite_index = asset_get("empty_sprite");
        hsp = 0;
        vsp = 0;
        destroy_timer++
        if (destroy_timer == 1 and bloop == 1)
        {
            create_hitbox(AT_FSPECIAL, 2, x, y - 35);
            bloop = 0;
        }
        else if (destroy_timer == 3)
        {
            explode = create_hitbox(AT_EXTRA_1, 1, x, y - 40)
        }
        else if (destroy_timer == 16)
        {  
            instance_destroy();
            exit;
        }
        break;
    case 9: //Destroy
        image_alpha = 1;
        hsp = 0;
        vsp = 0;
        outline = 0;
        draw = 0;
        destroy_timer++;
        if (drag == 0)
        {
            if (mouse > 0)
            {
                mouse++;
                if (mouse > 6)
                {
                    mouse = -1;
                }
            }
        }
        if (EA == 1)
        sprite_index = asset_get("empty_sprite");
        else
        sprite_index = asset_get("empty_sprite");
        if (destroy_timer = 1)
        {
            sound_play(asset_get("sfx_bubblepop"))
            bubbled_playerid = noone
        }
        if (destroy_timer == 22)
        {  
            instance_destroy();
            exit;
        }
        break;
}
with(bubbled_playerid)
{
    if (other.state == 5)
    {
        if (other.countdown_set = 1)
        {
            hsp = other.hsp;
            vsp = other.vsp;
        }
    }
}
        
if (countdown == 0)
{
    
    if (instance_exists(bubbled_playerid))
    {
        with(bubbled_playerid)
        {
            wet = 0;
            if (other.hit_frames > 0)
            hitstun = other.hitstun * 0.75;
            else if (other.hit_frames <= 0)
            hitstun = 0;
            state = PS_HITSTUN
        }
    }
    if (bloop == 1)
    {
        create_hitbox(AT_FSPECIAL, 2, x, y - 35)
    }
    bloop = 0;
    state = 9;
    image_index = 0;
    countdown = -1;
}
if (anim_time mod 6 == 0)
{
    if (state != 8 or state != 9)
    image_index++;
    if (draw == 1)
    {
        anim++;
    }
    if (anim > 3)
    {
        anim = 0;
    }
}
if (state != 8 or state != 9)
anim_time++;

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
            if ((place_meeting(x,y,other) && !instance_exists(other.bubbled_playerid)) || (place_meeting(x,y,other) && other.hit == 1)) && (groundedness == 0 || groundedness == 1+free) && hit_priority != 0 {
                if hbox_group == -1 || (hbox_group != -1 && other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] == 0) {
                    //hit
                    other.state_timer = 0;
                    other.timer2 = 86;
                    other.timer3 = 86;
                    if (orig_player == other.gura_owner and other.bubbled_playerid == noone and ((attack == AT_USPECIAL and hbox_num != 3) || attack == AT_NSPECIAL))
                    {
                        other.state = 8;
                        other.outline = 0;
                    }
                    if currentHighestPriority != noone {
                        if currentHighestPriority.hit_priority < hit_priority
                        {
                            currentHighestPriority = self;
                        }
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
        sound_play(asset_get("sfx_frog_nspecial_shove"));
        if (!instance_exists(other.bubbled_playerid))
        {
            if (type == 1 and other.state == 5)
            {
                spawn_hit_fx(other.x+hit_effect_x,other.y+hit_effect_y - 35,hit_effect);
            }
            else if (type == 2 and other.state == 5)
            {
                destroyed = 1;
            }
            if (other.sfx == 0)
            {
                sound_play(sound_effect);
            }
        }
        //this handles the knockback; hitstun, speed, etc.
        with other {
            //print_debug(`hit_${article}`);
             //set_a_state is my article state setting function; replace this with yours lol
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hitstun_full = hitstun;
            
            hit_lockout = other.no_other_hit;
            // for you archy. 
            // if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for enemies
            if other.force_flinch orig_knock = 0.3; //comment out this line for enemies.
            else orig_knock = other.kb_value + 5 * other.kb_scale * 0.45; 
            kb_dir = get_hitbox_angle(other);
            
            hsp = lengthdir_x(orig_knock, kb_dir);
            vsp = lengthdir_y(orig_knock, kb_dir);
            hit_player_obj = other.player_id;
            hit_player_num = other.player;
        }
        //apply hitpause (where applicable)
        if (!instance_exists(other.bubbled_playerid))
        {
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
            if (hbox_group != -1) 
            {
                other.hbox_group[@ orig_player-1][@ attack][@ hbox_group] = 1;
            }
        }
    }
} 
else 
{
    hit_lockout--;
}