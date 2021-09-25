image_angle -= 2;
state_timer ++;
exist_timer ++;

image_xscale = 1;
image_yscale = 1;

if((player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) && state != 3)  
    {state = 3; state_timer = 0;}

if(transporting)
{
    var can_go = true;
    with(obj_article1)
    {
        if(player_id.url == other.player_id.url && collision_circle(other.x,other.y, 18, self, true, false))
            can_go = false;
    }
    with(oPlayer)
    {
        if(collision_circle(other.x,other.y, 8, self, true, false))
            can_go = false;
    }
    with(pHitBox)
    {
        if(collision_circle(other.x,other.y, 8, self, true, false) && unbashable && type == 2)
            can_go = false;
    }
    transporting = !can_go;
}

switch(state)
{
    case 0://Spawn
        image_xscale = ease_quadOut( 0, 1, state_timer, 30)
        image_yscale = image_xscale;

        with(obj_article2)
        {
            if(player_id.url == other.player_id.url)
            {
                if(position_meeting(x-8,y,other))
                {  if(!place_meeting(x,y,asset_get("par_block"))) x += 8; else other.x -= 8;}
                if(position_meeting(x+8,y,other))
                {  if(!place_meeting(x,y,asset_get("par_block"))) x -= 8; else other.x += 8;}
            }
        }

        if(state_timer >= 30)
        {   state_timer = 0; state ++; }
        break;
    case 1://Be kickable and hittable
        with(obj_article1)
        {
            if(player_id.url == other.player_id.url && !other.transporting && collision_circle(other.x,other.y, 12, self, true, false))
            {   other.transport_id = id;  other.transport_bomb = true;}
        }
        with(oPlayer)
        {
            if(collision_circle(other.x,other.y, 18, self, true, false) && id == other.player_id && initial_invince <= 0 && !other.transporting)
             {   other.transport_id = id;  other.transport_bomb = false;}
        }
        // with(pHitBox)
        // {
        //     if(collision_circle(other.x,other.y, 18, self, true, false) && !other.transporting && unbashable && type == 2)
        //     {   other.transport_id = id;  other.transport_bomb = false;}
        // }
        if(transport_id != -1 && instance_exists(transport_id))
        {
            with(obj_article2)
            {
                if(player_id == other.player_id)
                {
                    if(id != other.id && state == 1)
                    {
                        sound_play(sound_get("TB_teleport"), false, noone, 0.6, 1.2)
                        spawn_hit_fx(x, y, 195);
                        other.transport_id.x = x;
                        other.transport_id.y = y;
                        other.transport_id = -1;
                        other.transporting = true;
                        other.state = 2;
                        transporting = true;
                        transport_id = -1;
                        state = 2;
                        if(!other.transport_bomb)
                        {   state_timer = 0; other.state_timer = 0; }
                        else
                        {   state_timer = 60; other.state_timer = 60; }
                    }
                }
            }
            transport_id = -1;
        }
        hitbox_detection();
        break;
    case 2: //transfer and be on cooldown.
        image_alpha = 0.5;
        image_xscale = .25+(ease_quartOut( 0, 1, state_timer, 240)*.75)
        image_yscale = image_xscale;
        if(state_timer >= 120)
        {   state_timer = 0; state = 1; image_alpha = 1;}
        break;
    case 3://death
        image_xscale = ease_quadIn( 1, 0, state_timer, 15)
        image_yscale = image_xscale;
        if(state_timer >= 15)
        {   instance_destroy(); }
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
            if place_meeting(x,y,other) && (groundedness == 0 || groundedness == 1+free) && (player_id != other.player_id) && type != 2 && hit_priority != 0 {
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
            hit_lockout = other.no_other_hit;
            hitstun = (other.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + other.damage * 0.12 * other.kb_scale * 4 * 0.65 * kb_adj) + 12;
            hit_player_obj = other.player_id;
            hit_player_num = other.player;

            portal_hp --;
            if(portal_hp <= 0)
                {state = 3; state_timer = 0;} else {state = 2; state_timer = 120-floor(hitstun*1.25);}
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