//crash prevention line

if(get_synced_var(player) == 1 && init_swap){
    swap();
    init_swap = false;
}

currentsprite = sprite_index
currentimage = image_index

//check if scratch or bite
is_bite = has_skin();

if (is_bite){
    disk_uspeed = disk_uspeed_bite;
} else {
    disk_uspeed = disk_uspeed_scratch;
}

if(assist != noone && assist.state != 3 && state_cat == SC_HITSTUN){
    assist.shoulddie = true;
}

//some disk logic
if(!instance_exists(disk_obj)) disk_obj = noone;

if(!hitpause && disk_lockout > 0) disk_lockout--;

//SWAPPING

/*if state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND { // im putting this here for ease of access and less lines in attack update
    if attack == AT_NSPECIAL && window_timer == 7{
        swap();
    }
}*/

if(assist_aerial_parrystun && assist != noone){
    
    assist_aerial_parrystun = false;
    //swap player with assist if it gets hit
	assist.shoulddie = true;
	var swapx = x;
    var swapy = y;
    x = assist.x;
    y = assist.y;
    hsp = assist.hsp;
    vsp = assist.vsp;
    
    assist.x = floor(swapx);
    assist.y = floor(swapy);
    spr_dir = assist.spr_dir;
    
    
    attack_end();
    destroy_hitboxes();
    
    //disable roll invince and stuff. thank you frtoud
	can_tech = false;
	hurtboxID.dodging = false;
	hurtboxID.sprite_index = sprite_get("sb_hurtbox");
	
	
	//swap character manually
	var skin = (assist.is_bite? "bite" : -1);
	if(skin == -1){
	    set_ui_element(UI_HUD_ICON, sprite_get("hud"));
	    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurt"));
	    set_ui_element(UI_OFFSCREEN, sprite_get("offscreen"));
	} else {
	    set_ui_element(UI_HUD_ICON, sprite_get("hudb"));
	    set_ui_element(UI_HUDHURT_ICON, sprite_get("hud_hurtb"));
	    set_ui_element(UI_OFFSCREEN, sprite_get("offscreenb"));
	}
	var obj = (object_index != oPlayer && object_index != oTestPlayer) ? player_id : id;
	with obj {
	    if (is_string(skin)) {
	        //_ssnksprites.skin_active = array_find_index(_ssnksprites.skins,skin);
	        var sskin = -1;
	        if skin in _ssnksprites.skins {
	            _ssnksprites.skin_active = variable_instance_get(_ssnksprites.skins, skin)[@3];
	        }
	        else print(`Skin ${skin} not found.`);
	    } else if (is_number(skin)) {
	        
	        if (_ssnksprites.skin_active >= array_length(_ssnksprites.skins_n)) print(`${skin} is out of bounds of the skin array. [0..${array_length(_ssnksprites.skins_n)-1}] inclusive. (-1 to disable skin.)`);
	        else _ssnksprites.skin_active = skin;
	    }
	}
    
    //swap assist assets
    with(assist){
        is_bite = !is_bite;
        spr_pose = (is_bite? sprite_get("bite_dspecpose") : sprite_get("dspecpose"));
        spr_hit = (is_bite? sprite_get("bite_ohno") : sprite_get("ohno"));
    }
    
    attack_end();
    destroy_hitboxes();
    was_parried = true;
    //swap to assist attack
    var atk = assist.stored_atk;
    if(atk == AT_NAIR || atk == AT_FAIR || atk == AT_BAIR || atk == AT_UAIR || atk == AT_DAIR){
        set_state(PS_ATTACK_AIR);
        set_attack_value(atk, AG_CATEGORY, 2); 
        parry_lag = 40;
    }
    set_attack(atk);
    
    
    window = assist.window;
    window_timer = assist.window_timer;
    has_hit = assist.has_hit;
    
    //assist poses in your stead
    assist.state = 2;
    assist.state_timer = 0;
    sound_play(asset_get("mfx_star"));
    assist.sprite_index = assist.spr_pose;
    assist.image_index = 0;
    assist.image_xscale = 1;
    assist.image_yscale = 1;
    assist.can_swap = false;
}


if (state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) {
    can_swap = 1
    set_attack_value(AT_NAIR, AG_CATEGORY, 1);
    set_attack_value(AT_UAIR, AG_CATEGORY, 1);
    set_attack_value(AT_DAIR, AG_CATEGORY, 1);
    set_attack_value(AT_FAIR, AG_CATEGORY, 1);
    set_attack_value(AT_BAIR, AG_CATEGORY, 1);

}

//print(move_cooldown[AT_USPECIAL_2])

if disk_obj != noone {
    move_cooldown[AT_USPECIAL] = 10 
}
if state == PS_WALL_JUMP || !free || state == PS_HITSTUN {
    //move_cooldown[AT_USPECIAL] = 0;
    move_cooldown[AT_USPECIAL_2] = 0;
    uspec_stall = 4;
}/*
if disk_obj != noone {
    print("exist")
} else {
    print("fasd")
}*/

#define swap()
//print("swap")
//if storedatk != 0 {
 //   set_attack(storedatk)
//}
//storedatk = 0;
if (has_skin()) {
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
can_swap = 0
clear_button_buffer( PC_SPECIAL_PRESSED )
//var fx = spawn_hit_fx( x, y, 304 )
//fx.pause = 8.58



//BITE SKIN SET DONT MOVE THIS DONT PUT ANYTHING BELOW IT
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

#define has_skin()

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