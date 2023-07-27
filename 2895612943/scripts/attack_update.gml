//B - Reversals
if (attack == AT_NSPECIAL || attack == AT_FSPECIAL || attack == AT_DSPECIAL || attack == AT_USPECIAL) {
    trigger_b_reverse();
    //temperature_drain_timer = 0;
}






//-------------------- Normals ----------------------

if bite() {
    set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, vbite);
    set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, vbite);
    set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, vbite);
    set_hitbox_value(AT_DSTRONG, 9, HG_VISUAL_EFFECT, vbite);


} else {
    set_hitbox_value(AT_UAIR, 1, HG_VISUAL_EFFECT, vscratch);
    set_hitbox_value(AT_FSTRONG, 1, HG_VISUAL_EFFECT, vscratch);
    set_hitbox_value(AT_USTRONG, 7, HG_VISUAL_EFFECT, vscratch);
    set_hitbox_value(AT_DSTRONG, 9, HG_VISUAL_EFFECT, vscratch);



}

if (attack == AT_UTILT){
    
    if (window == 4 || (window == 3 && window_timer > get_window_value(AT_UTILT, 3, AG_WINDOW_LENGTH)*1.5)){
        if (!was_parried){
            iasa_script();
        } else {
            /*parry_lag = 40;
            if (free){
                state = PS_PRATFALL;
            } else {
                state = PS_PRATLAND;
            }*/
            window = 10; //random big number that isnt an actual window so it ends the anim
        }
    }
}

if (attack == AT_FSTRONG){
    if (window == 1 && window_timer <= 7 && abs(hsp) < 3.5){
        hsp = 3.5*spr_dir;
    }
}

if (attack == AT_TAUNT && bite()) {
    attack = AT_TAUNT_2;
} 
if (attack == AT_TAUNT_2){
    vsp = clamp(vsp, -100, 2);
    can_move = false;
    can_fast_fall = false;
    if (state_timer >= 12){
        iasa_script();
    }

}

if (attack == AT_DSTRONG){
    if (window == 2 && window_timer == 4 && !hitpause){
        sound_play(sound_get("sfx_snb_record2"));
    }
    
    if (window == 4 && window_timer == 10 && !hitpause){
        sound_play(sound_get("sfx_snb_clothes"));
    }
}

/* */

if (attack == AT_TAUNT){
    vsp = clamp(vsp, -100, 2);
    can_move = false;
    can_fast_fall = false;
    if (window == 3 || window == 4){
        if (taunt_down || attack_down || shield_down){
            window = 5;
            window_timer = 0;
        }
    }
}
//-------------------- Specials ----------------------

/*
if (attack == AT_USPECIAL){ //Dear GOD redo this later
    if (window == 1){
        vsp = 0;
    }
    if (window == 2 && window_timer == 1){
        vsp = -6;
    }
}*/

//DISC SUTFF PT 2           //im sutff
switch (attack)
{
    case AT_USPECIAL:
        switch (window)
        {
            case 1:
                vsp = 0;
                break;
            case 2:
                if (window_timer == 1)
                {
                    vsp = -2 * uspec_stall;
                    uspec_stall -= 1;
                    if(uspec_stall < 0) uspec_stall = 0;
                    create_disk(x+(10*spr_dir),y-86);
                }
                break;
        }
    break;
    case AT_FSPECIAL:
        switch (window)
        {
            case 2:
                if (window_timer == 1)
                {
                    vsp = -3*free;
                    create_disk(x+(30*spr_dir),y-24);
                }
                break;
        }        
    break;
}
//hi guadua
if (attack == AT_USPECIAL && window == 1 && window_timer == 1 ){
//
}
if attack == AT_USPECIAL_2 {
    if(window == 1){
        if(instance_exists(disk_obj)){
            if(window_timer == 1) disk_obj.y -= 2;
            disk_obj.bounces = 0;
            disk_obj.enemies = 1;
            disk_obj.hitbox_timer--;
            disk_obj.hsp = 0;
            disk_obj.vsp = 0;
            //disk_obj.phase = 5;
            disk_obj.hit_priority = 0;
            //disk_obj.grav = 0;
        }
    }
    if (window == 2 && !hitpause){
        if (instance_exists(disk_obj)){
            //zoom toward the bamboo
            disk_dir = point_direction(x, y-char_height*.5, disk_obj.x, disk_obj.y);
            vsp = lengthdir_y(24, disk_dir);
            hsp = lengthdir_x(24, disk_dir);
            if(place_meeting(x + (15 * sign(hsp)), y, asset_get("par_block"))){
                vsp = sign(vsp) * 24;
            }
            disk_obj.hitbox_timer--;
            disk_obj.hsp = 0;
            disk_obj.vsp = 0;
            //disk_obj.phase = 5;
            disk_obj.hit_priority = 0;
            //disk_obj.grav = 0;
            fall_through = true;
            
            //stop when close
            if (point_distance(x, y-char_height*.5, disk_obj.x, disk_obj.y) < 32){
                attack = AT_USPECIAL
                window = 6;
                window_timer = 0;
                hsp = clamp(hsp, -6, 6);
                vsp = clamp(vsp, -10, -4);
                destroy_hitboxes();
                disk_obj.destroyed = 1;
                disk_obj = noone;
                //instance_destroy(bamboo);
            }
        } else {
            attack = AT_USPECIAL;
            window = 6;
            window_timer = 0;
            hsp = clamp(hsp, -6, 6);
            vsp = clamp(vsp, -10, -4);
            destroy_hitboxes();
            //disk_obj.destroyed = 1;
            //disk_obj = noone;
        }
        move_cooldown[AT_USPECIAL_2] = 9990;
    }
}

if (attack == AT_DSPECIAL_2) {
    can_fast_fall = false;
    can_move = false;
}

if attack == AT_DSPECIAL {
    /*if window == 1 && window_timer == 10 {
       var asfd = spawn_hit_fx( x + 35 * spr_dir, y - 15, 301 )
       asfd.pause = 8
    }
    if bite() {
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("b_dspecproj"));
    } else {
        set_hitbox_value(AT_DSPECIAL, 1, HG_PROJECTILE_SPRITE, sprite_get("dspecproj"));
    }*/
    
    if window == 1 && window_timer == 10 {
        if (free) vsp = -5;
        assist = instance_create(x+(40*spr_dir), y + 2, "obj_article1");
    }

}

if(attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_BAIR || attack == AT_DAIR){
    set_attack_value(attack, AG_CATEGORY, 1); 
}

//------------------------------------- Attack storage / NSpecial --------------------------------------------
//I formally apologize to anyone reading this. This is probably the worst code you could ever read. Enjoy

if attack == AT_UTILT || attack == AT_DTILT || attack == AT_FTILT || attack == AT_DATTACK || attack == AT_JAB || attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG  {
    if free {
        vsp = 0;
        can_fast_fall = false;
        can_move = false;
    }
}

if attack != AT_NSPECIAL && attack != AT_DSPECIAL && attack != AT_DSPECIAL_2 && attack != AT_FSPECIAL && attack != AT_USPECIAL && attack != AT_USPECIAL_2{
    if special_pressed && move_cooldown[AT_NSPECIAL] == 0 {
        if (window == get_attack_value( attack, AG_NUM_WINDOWS ) && joy_pad_idle) || window != get_attack_value( attack, AG_NUM_WINDOWS) {
            setstored();
            smash_charging = false;
            
            attack_end();
            destroy_hitboxes(); //stops late hits from hitting when they shouldn't
            attack = AT_NSPECIAL;
            window = 1;
            window_timer = 0;
        }
    }
}
if attack == AT_NSPECIAL {
    if window_timer == 1 {
        white_flash_timer_set(10)
        if(assist != noone && assist.can_swap){
            assist.hitstop = 8;
            assist.white_flash = 9;
        }
        if bite() {
            sound_play(sound_get("sfx_record1r"))
        } else {
            sound_play(sound_get("sfx_record1"))
        }
    }
    if window_timer == 8 {
        //swap to assist instead if possible
        if(assist != noone && assist.can_swap){
            var swapx = x;
            var swapy = y;
            x = assist.x;
            y = assist.y;
            hsp = assist.hsp;
            vsp = assist.vsp;
            
            assist.x = floor(swapx);
            assist.y = floor(swapy);
            spr_dir = assist.spr_dir;
            
            //swap assist assets
            with(assist){
                is_bite = !is_bite;
                spr_pose = (is_bite? sprite_get("bite_dspecpose") : sprite_get("dspecpose"));
                spr_hit = (is_bite? sprite_get("bite_ohno") : sprite_get("ohno"));
            }
            
            attack_end();
            destroy_hitboxes();
            //swap to assist attack
            if(assist.state == 0 || assist.state == 1){
                //set attack to the assist's attack
                var atk = assist.stored_atk;
                if(atk == AT_NAIR || atk == AT_FAIR || atk == AT_BAIR || atk == AT_UAIR || atk == AT_DAIR){
                    set_attack_value(atk, AG_CATEGORY, 2); 
                }
                set_attack(atk);
                
                
                window = assist.window;
                window_timer = assist.window_timer;
                has_hit = assist.has_hit;
            //else just go to idle
            }else if(assist.state ==2){
                set_state(assist.free? PS_IDLE_AIR : PS_IDLE);
            }
            
            //assist poses in your stead
            assist.state = 2;
            assist.state_timer = 0;
            sound_play(asset_get("mfx_star"));
            assist.sprite_index = assist.spr_pose;
            assist.image_index = 0;
            assist.image_xscale = 1;
            assist.image_yscale = 1;
            assist.can_swap = false;
            swap();
            move_cooldown[AT_NSPECIAL] = 40;
        }else{
        //normal swap
        if bite() {
            if s_storedatk != 0 {
                    smash_charging = 0;
                    clear_button_buffer( PC_STRONG_PRESSED )
                    attack_end();
                    attack = s_storedatk
                    if get_num_hitboxes( s_storedatk ) == 0 {
                        window = 3   
                    } else {
                        window = get_hitbox_value(s_storedatk, 1, HG_WINDOW) - 1 
                    }
                    window_timer = get_window_value(s_storedatk, window, AG_WINDOW_LENGTH) - 1 
                    set_attack_value(attack, AG_CATEGORY, 2); 
                    if(attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_BAIR || attack == AT_DAIR){
                        if(!free){
                            vsp = -5;
                            //y -= 2;
                        }
                    }
                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                    s_storedatk = 0;
                    s_storedwin = 0;
                    s_storedwintim = 0
                    //specific attack interactions
                    if (attack == AT_UTILT || attack == AT_DTILT || attack == AT_DATTACK || attack == AT_FTILT || attack == AT_JAB || attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG) && free {
                        hsp = 0;
                    }
                }
                //print("swap to scratch")
            }
        if !bite() {
            if b_storedatk != 0 {
                    smash_charging = 0;
                    attack_end();
                    attack = b_storedatk
                    if b_storedatk == AT_TAUNT_2 {
                        window = 1 
                    } else {
                        window = get_hitbox_value(b_storedatk, 1, HG_WINDOW) - 1 
                    }                
                    window_timer = get_window_value(b_storedatk, window, AG_WINDOW_LENGTH) - 1 
                    set_attack_value(attack, AG_CATEGORY, 2); 
                    if(attack == AT_NAIR || attack == AT_FAIR || attack == AT_UAIR || attack == AT_BAIR || attack == AT_DAIR){
                        if(!free){
                            vsp = -5;
                            //y -= 2;
                        }
                    }
                    hurtboxID.sprite_index = get_attack_value(attack, AG_HURTBOX_SPRITE);
                    b_storedatk = 0;
                    b_storedwin = 0;
                    b_storedwintim = 0
                    if (attack == AT_UTILT || attack == AT_DTILT || attack == AT_DATTACK || attack == AT_FTILT || attack == AT_JAB || attack == AT_DSTRONG || attack == AT_FSTRONG || attack == AT_USTRONG) && free {
                        hsp = 0;
                    }
                }
            //print("swap to bite")
            }
            if attack == AT_DSTRONG {
                    move_cooldown[AT_NSPECIAL] = 120;
            } else {
                move_cooldown[AT_NSPECIAL] = 40;
            }
            swap();
            
        }
    }
}



//Dont put any code below this


#define set_skin(skin)
///Sets the active skin. You can supply a name or an index.
var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
with obj {
    if (is_string(argument[0])) {
        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
        var sskin = -1;
        if argument[0] in _ssnksprites.skins {
            _ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, argument[0])[@3];
        }
        else print(`Skin ${skin} not found.`);
    } else if (is_number(argument[0])) {
        
        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
        else _ssnksprites.skin_active = skin;
    }
}

#define bite()

///Shortcut for get_skin() != -1.
if object_index != oPlayer && object_index != oTestPlayer {
    return player_id._ssnksprites.skin_active != -1;
}
return _ssnksprites.skin_active != -1;


#define white_flash_timer_set(timer)
{
    if(white_flash_timer <= 1){
        white_flash_timer = timer;
    }
}

#define swap()
if (bite()) {
    set_skin(-1);
    set_ui_element(UI_HUD_ICON, sprite_get("hud"));
    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurt"));
    set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
} else {
    set_skin("bite");
    set_ui_element(UI_HUD_ICON, sprite_get("hudb"));
    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurtb"));
    set_ui_element(UI_OFFSCREEN, sprite_get("offscreenb"));
}
clear_button_buffer( PC_SPECIAL_PRESSED )



/* disc stuff */
#define create_disk(cx, cy)
disk_obj = create_hitbox(AT_FSPECIAL,1,cx,cy)

var b, orig_spd, orig_ang;
b = bite();
orig_spd = disk_speed - 2*b;
orig_ang = 45 + 35*b;

if (attack == AT_FSPECIAL)
{
    orig_ang = 40*b;
}else{
    orig_spd = disk_uspeed;
}
disk_obj.grav = disk_grav*b;
disk_obj.hit_priority = 1*b;

var new_hsp, new_vsp;
new_hsp = spr_dir*lengthdir_x(orig_spd,orig_ang);
new_vsp = lengthdir_y(orig_spd,orig_ang);

disk_obj.spr_dir = spr_dir;
disk_obj.hsp = new_hsp;
disk_obj.vsp = new_vsp;
disk_obj.original_hsp = new_hsp;
disk_obj.original_vsp = new_vsp;
//doenst work with mask
//disk_obj.image_xscale = 2*spr_dir;
//disk_obj.image_yscale = 2;

#define setstored() 

if attack == AT_TAUNT || attack == AT_TAUNT_2 {
        if bite(){
        b_storedatk = attack
        b_storedwin = 3
    } else {
        s_storedatk =  attack
        s_storedwin =  3

    }
}
else if (window <= get_hitbox_value(attack, 1, HG_WINDOW) && !has_hit) || ((attack == AT_UTILT || attack == AT_NAIR  || attack == AT_FTILT || attack == AT_DTILT || attack == AT_DSTRONG || attack == AT_USTRONG || attack == AT_FAIR || attack == AT_DATTACK) && window != get_attack_value( attack, AG_NUM_WINDOWS)){
    
    if bite(){
        b_storedatk = attack
        b_storedwin = window
    } else {
        s_storedatk =  attack
        s_storedwin =  window

    }
} else {
    if bite(){
        b_storedatk = 0
        b_storedwin = 0
    } else {
        s_storedatk =  0
        s_storedwin =  0

    }
}