if visible {
    fall_timer = max(fall_timer-1, 0)
    cooldown_timer = max(cooldown_timer-1, 0)
    
    draw_xscale = lerp(draw_xscale, 1, 0.13)
    draw_yscale = lerp(draw_yscale, 1, 0.13)
    
    can_be_grounded = (vsp >= 0 && !free);
    
    if fall_timer == 0
    {
        vsp = min(vsp + fall_speed, max_fall_speed) * free
    }
    
    with (obj_article3) {
        if (player_id == other.player_id and x == clamp(x, other.x-72, other.x + 72) and y == clamp(y, other.y-40, other.y + 40)) {
            sound_play(asset_get("sfx_ori_grenade_hit_ground"))
            sound_play(asset_get("sfx_mol_norm_explode"))
            sound_play(asset_get("sfx_mol_flare_explode"))
            
            with other append_note(other.projectile_number);
            
            other.visible = false;
            spawn_hit_fx(other.x,other.y-14,other.player_id.tamboboom_vfx);
            should_die = true;
            break;
            
        //     with other 
        //     {
        //         create_hitbox(AT_DSPECIAL, 1, x, y-30)
        //         append_note(other.projectile_number);
        //     }
    
        //     var ang = random_func(4,360,true);
        //     var numparts = 10
        //     var vfx = other.player_id.note_trail;
        //     switch projectile_number {
        //         case 0:
        //         vfx = other.player_id.note_trail_purple
        //         break;
        //         case 2:
        //         vfx = other.player_id.note_trail_orange
        //         break;
        //     }
            
        //     repeat (numparts) {
                
        //         var part = spawn_hit_fx(other.x + lengthdir_x(40,ang), other.y - 20 + lengthdir_y(40,ang),vfx)
        //         part.hsp = lengthdir_x(8,ang);
        //         part.vsp = lengthdir_y(8,ang);
        //         ang += 360/numparts
        //     }
            
        //     sound_play(sound_get("sfx_idle_shake"), false, noone, 0.8, 1)
        //     other.draw_xscale = 0.7
        //     other.draw_yscale = 1.3
        //     should_die = true;
        // }
        }
    }
    
    with (oPlayer)
    {
        if y == clamp(y, other.y - 35, other.y - 15) and place_meeting(x,y+vsp,other) and free and vsp > 0 and state != PS_AIR_DODGE and state != PS_RESPAWN and state != PS_DEAD and !hitpause
        {
            with other.player_id
            {
                var sound_to_play = get_player_color(player) != 21 ? "sfx_trampoline_jump" : "sfx_trampoline_jump_rt";
                
                sound_play(sound_get(sound_to_play),false,noone, clamp(abs(vsp)/12, 0.4, 1), 1.03 - min(0.2 - abs(other.vsp)/100, 0.2));
            }
            
            move_cooldown[AT_NAIR] = 7;
            move_cooldown[AT_BAIR] = 7;
            move_cooldown[AT_DAIR] = 7;
            move_cooldown[AT_UAIR] = 7;
            move_cooldown[AT_FAIR] = 7;
            
            other.draw_xscale = 1.2
            other.draw_yscale = 0.8        
            
            while (y > other.y - 35) y--;
            
            with other spawn_hit_fx(other.x,other.y-20,player_id.tambo_vfx)
            
            if other.player_id == self and state == PS_ATTACK_AIR and attack == AT_FSPECIAL and (window > 1) {
                if (get_player_color(player) == 21){
                    sound_stop(asset_get("sfx_mol_flare_explode"))
                    sound_play(sound_get("sfx_trampoline_pop_rt"))
                }
                else {
                    sound_play(asset_get("sfx_ori_grenade_hit_ground"))
                    sound_play(asset_get("sfx_mol_norm_explode"))
                    sound_play(asset_get("sfx_mol_flare_explode"))
                }
                
                vsp = -10;
                attack_end();
                destroy_hitboxes();
                set_attack(AT_DTILT);
                window = 4
                window_timer = 0;
                other.visible = false;
                spawn_hit_fx(other.x,other.y-14,other.player_id.tamboboom_vfx);
                break;
            }
            
            vsp = clamp(-vsp*0.8, -12, -3)
            
            var horizontal_clamp = 9;
            hsp = clamp(hsp, -horizontal_clamp, horizontal_clamp);
            
            //print("Hit, vsp="+string(vsp))
            if state_cat != SC_HITSTUN
            {
                set_state(PS_IDLE_AIR)
            }
            else {
                sound_play(asset_get("sfx_ori_grenade_hit_ground"))
                sound_play(asset_get("sfx_mol_norm_explode"))
                sound_play(asset_get("sfx_mol_flare_explode"))
                with (other.player_id) if (get_player_color(player) == 21){
                    sound_stop(asset_get("sfx_mol_flare_explode"))
                    sound_play(sound_get("sfx_trampoline_pop_rt"))
                }
                
                other.visible = false;
                with other.player_id 
                {
                    spawn_hit_fx(tambo_obj.x,tambo_obj.y,tamboboom_vfx);
                }
                other.explode_should_hit_self = (self == other.player_id);
                break;
            }
            
            if other.cooldown_timer == 0
            {
                var last = find_last_note(other);
                
                if last == -1 and other.cooldown_timer == 0 {
                    other.should_die = true;
                    break;
                }
                
                other.cooldown_timer = other.max_cooldown_time;
                if url == other.player_id.url {
                    var index = array_find_index(notes, -1);
                    if (index != -1) {
                        if last != -1 {
                            notes[index] = other.note_storage[last]
                            last_note = notes[index]
                            other.note_storage[last] = -1;
                        }
                    }    
                } else {
                    if last != -1 {
                        other.note_storage[last] = -1;
                    }
                }
            } else {
                other.cooldown_timer += 14;
            }
            
    
        }
    }
    
    hit_detection()
}
else {
    vsp = 0;
    
    explode_timer++;
    
    if explode_timer > max_explode_timer {
        should_die = true;
        print("EXPLOSION CREATED")
        var hit = create_hitbox(AT_DSPECIAL, 2, x,y-14)
        var num_notes = (find_last_note(self) + 1);
        
        hit.damage = 8 + floor(1.5 * num_notes);
        
        
        if (explode_should_hit_self) {
            for (var p = 1; p < 5; p++) {
                if p != player_id.player {
                    hit.can_hit[p] = false;
                }
            }
        }
        print(explode_should_hit_self)
        hit.can_hit_self = explode_should_hit_self;
    }
}

if (y > room_height and fall_timer == 0) or should_die
{
    if visible {
        var i = 0;
        repeat 2
        {
            with spawn_hit_fx(x + (70*i) - 35,y-10,player_id.smoke_vfx) depth = other.depth-3
            i++;
        }      
    }
    
    player_id.tambo_obj = noone;
    player_id.move_cooldown[AT_DSPECIAL] = 60 + (60*visible);
    instance_destroy()
}

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
 
//Default Hitpause Calculation
//You probably want this stuff because it makes the hit feel good.
if hbox.type == 1 {
    var desired_hitstop = clamp(hbox.hitpause + hbox.damage * hbox.hitpause_growth * 0.05, 0, 20);
    with hit_player_obj {
        if !hitpause {
            old_vsp = vsp;
            old_hsp = hsp;
        }
        hitpause = true;
        has_hit = true;
        if hitstop < desired_hitstop {
            hitstop = desired_hitstop;
            hitstop_full = desired_hitstop;
        }
    }
}
// This puts the ARTICLE in hitpause.
// If your article does not already account for being in hitpause, either make it stop what it's doing in hitpause
// or comment out the line below.
//hitstop = floor(desired_hitstop); 
 
 
//Hit Lockout
if article_should_lockout hit_lockout = hbox.no_other_hit;
 
//Default Hitstun Calculation
hitstun = (hbox.kb_value * 4 * ((kb_adj - 1) * 0.6 + 1) + hbox.damage * 0.12 * hbox.kb_scale * 4 * 0.65 * kb_adj) + 12;
hitstun_full = hitstun;
            
//Default Knockback Calculation
 
// if other.force_flinch && !other.free orig_knock = 0; //uncomment this line for grounded articles.
if hbox.force_flinch orig_knock = 0.3; //comment out this line for grounded articles.
else orig_knock = hbox.kb_value + hbox.damage * hbox.kb_scale * 0.12 * kb_adj;
kb_dir = get_hitbox_angle(hbox);
 
//hsp = lengthdir_x(orig_knock, kb_dir);
//vsp = lengthdir_y(orig_knock, kb_dir);
 
//Default hit stuff
sound_play(hbox.sound_effect);
//ty nart :p
var fx_x = lerp(hbox.x, x, 0.5) + hbox.hit_effect_x*hbox.spr_dir;
var fx_y = lerp(hbox.y, y, 0.5) + hbox.hit_effect_y;
with hit_player_obj { // use a with so that it's shaded correctly
    var temp_fx = spawn_hit_fx(fx_x, fx_y, hbox.hit_effect);
    temp_fx.hit_angle = other.kb_dir;
    temp_fx.kb_speed = other.orig_knock;
}
 
if fall_timer == 0
{
    repeat (2) {
        t = find_last_note(self)
        if t == -1 {
            should_die = true;
        }
        else {
            note_storage[t] = -1;
        }
    }
}
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && (groundedness == 0 || groundedness == 1+other.free)
        && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        //&& ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 
#define create_article_hitbox(attack, hbox_num, _x, _y)
//Use this function to easily create hitboxes that ignore the article's hit detection.
var hbox = create_hitbox(attack, hbox_num, floor(_x), floor(_y))
hbox.owner = self;
return hbox;
 
#define hit_detection
//Code by Supersonic#9999
//DO NOT modify this function unless you know what you're doing. This does the actual detection, while
//the other functions determine how and what the hit detection interacts with.
//hbox group management
with (oPlayer)
    if state == clamp(state, 5, 6) && window == 1 && window_timer == 1 {
        other.hbox_group[@ player-1][@ attack] = array_create(10,0);
    }
 
//hit lockout stuff
if hit_lockout > 0 {
    hit_lockout--;
    return;
}
//get colliding hitboxes
var hitbox_list = ds_list_create();
 
var num = instance_place_list(floor(x), floor(y), pHitBox, hitbox_list, false);
var final_hbox = noone;
var hit_variable = `hit_article_${id}`;
if num == 0 {
    ds_list_destroy(hitbox_list);
    return;
}
if num == 1 {
    //no priority checks if only one hitbox is found
    var hbox = hitbox_list[|0]
    var group = hbox.hbox_group
    if hit_variable not in hbox 
        if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
            if filters(hbox) {
                final_hbox = hbox;
            } else {
                //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                variable_instance_set(hbox, hit_variable, true);
            }
        } else {
            //fake hit if group has already hit; optimization thing
            variable_instance_set(hbox, hit_variable, true);
        }
} else {
    var highest_priority = 0;
    var highest_priority_owner = -1;
    var highest_priority_hbox = noone;
    for (var i = 0; i < ds_list_size(hitbox_list); i++) {
        var hbox = hitbox_list[|i]
        var group = hbox.hbox_group
        if hit_variable not in hbox 
            //group check
            if (group == -1 || ( group != -1 && hbox_group[@ hbox.orig_player-1][@ hbox.attack][@ group] == 0)) {
                if filters(hbox) {
                    if hbox.hit_priority > highest_priority {
                        highest_priority = hbox.hit_priority;
                        highest_priority_owner = hbox.player;
                        highest_priority_hbox = hbox;
                    }
                } else {
                    //hitbox doesn't meet collision criteria. since this usually doesn't change, omit it.
                    variable_instance_set(hbox, hit_variable, true);
                }
            } else {
                //fake hit if group has already hit; optimization thing
                variable_instance_set(hbox, hit_variable, true);
            }
    }
    if highest_priority != 0 {
        final_hbox = highest_priority_hbox;
    }
}
 
if final_hbox != noone {
    on_hit(final_hbox);
    variable_instance_set(final_hbox, hit_variable, true);
    if final_hbox.hbox_group != -1 hbox_group[@ final_hbox.orig_player-1][@ final_hbox.attack][@ final_hbox.hbox_group] = 1;
}
 
//clear hitbox list
//ds_list_clear(hitbox_list)
ds_list_destroy(hitbox_list);

#define find_last_note(obj)
i = 3;
while i != -1 and obj.note_storage[i] == -1 {
    i--;
}
return i;

#define append_note(note)

var i = 0;

while (i < array_length(note_storage)) {
    if note_storage[i] == -1 {
        note_storage[i] = note;
        break;
    }
    i += 1;
}

return note;