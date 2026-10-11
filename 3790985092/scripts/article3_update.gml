//article1_update - runs every frame the article exists

/*LIST
- 0 Splat Bomb
- 1 Burst Bomb
- 2 Sprinkler
*/




var inkposx = floor(x/16)*16 +8;
var inkposy = floor(y/16)*16 +8;

//Are there too many articles? If so, I should die
switch (type) {
    case 0:
        if (replacedcount > maxarticles_spl) {
            instance_destroy();
            exit;
        }
    break;
    case 1:
        if (replacedcount > maxarticles_bur) {
            instance_destroy();
            exit;
        }
    break;
    case 2:
        if (replacedcount > maxarticles_spr) {
            instance_destroy();
            exit;
        }
    break;
}

//Clairen plasma field will destroy the article (NOTE: does not work properly with maxarticles > 1)
if (place_meeting(x, y, asset_get("plasma_field_obj")) && !(state == 3 || state == 2)) {
	sound_play(asset_get("sfx_clairen_hit_med"));
	spawn_hit_fx(floor(x),floor(y),256)
	shoulddie = true;
}

//State buffering
if (buffertimer < 20) {
	buffertimer++;
}else{
	bufferedstate = 0;
	buffertimer = 0;
}

switch (type) {
    case 0:
        grav_rate = 0.1
        mask_index = sprite_get("bomb-splat_mask")
        switch (state) {
            case 0: //Thrown
                if (state_timer == 0) {
                hsp = 5*spr_dir;
                vsp = -2.5;
                sound_play( sound_get( "splatbomb_throw" ))
                }else{
                hsp -= 0.5*spr_dir;
                if(free){
                if(spr_dir = 1){
                hsp = clamp(hsp, 3, 15)
                }else{
                hsp = clamp(hsp, -15, -3)
                }
                }else{
                hsp = clamp(hsp, 2, 0)*spr_dir
                }
                }
                if (!free) {
                    // sound_stop( sound_get( "splatbomb_throw" ) )
                    countdown--;
                } else {
                    with (asset_get("oPlayer") ) {
                        if (((other.pocketed_id = noone && id != other.player_id) || (other.pocketed_id != noone && id = other.player_id)) && (url != 3529055124 || url = 3529055124 && other.pocketed_id != self)) {
                            if (place_meeting(x, y, other) ) {
                                other.state = 1;
                                other.state_timer = 0;
                            }
                        }
                    }
                }
            break;
            case 1: //Explosion
            	if(!was_pocketed){
                spawn_ink_series(inkposx-55*spr_dir, inkposy-8, 7, spr_dir);
            	}
                var temp = create_hitbox(AT_DSPECIAL, 1, floor(x), floor(y)-10 );
                if(was_pocketed){
                temp.can_hit_self = true;
                temp.can_hit[pocketed_id.player] = false;
                }
                sound_play( sound_get( "splatbomb_explo" ))
                instance_destroy();
                exit;
            break;
        }
        if (countdown <= 30) {
            state = 1;
            state_timer = 0;
        } else if (countdown <= 45) {
            new_sprite = sprite_get("bomb-splat_ready");
            animation_type = 5;
        } else {
        	if (countdown == 60) sound_play( sound_get( "splatbomb_about" ))
            if (free) {
                new_sprite = sprite_get("bomb-splat_throw");
                animation_type = 5;
            } else {
                new_sprite = sprite_get("bomb-splat_ground");
                animation_type = 1;
            }
        } 
        if (countdown == 119 && !free) {
            sound_play( sound_get( "splatbomb_land" ))
        }
    break;
    case 1:
        grav_rate = 0.1
        mask_index = sprite_get("bomb-splat_mask")
        switch (state) {
            case 0: //Thrown
                if (state_timer == 0) {
                hsp = 9*spr_dir;
                vsp = -2;
                sound_play( sound_get( "splatbomb_throw" ))
                }else{
                hsp -= 0.1*spr_dir;
                if(free){
                if(spr_dir = 1){
                hsp = clamp(hsp, 1, 15)
                }else{
                hsp = clamp(hsp, -15, -3)
                }
                }
                }
                if (!free) {
                    var temp = create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y)-20 );
                	if(was_pocketed){
                	temp.can_hit_self = true;
                	temp.can_hit[pocketed_id.player] = false;
                	} else {
                        spawn_ink_series(inkposx-55*spr_dir, inkposy-8, 7, spr_dir);
                    }
                    sound_play( sound_get( "burst_explode" ))
                    instance_destroy();
                    exit;
                }
                with (asset_get("oPlayer") ) {
                    if (((other.pocketed_id = noone && id != other.player_id) || (other.pocketed_id != noone && id = other.player_id)) && (url != 3529055124 || url = 3529055124 && other.pocketed_id != self)) {
                        if (place_meeting(x, y, other) ) {
                            with (other) {
                                    var temp = create_hitbox(AT_DSPECIAL, 2, floor(x), floor(y)-20 );
                					if(was_pocketed){
                					temp.can_hit_self = true;
                					temp.can_hit[pocketed_id.player] = false;
                					}       
                                sound_play( sound_get( "burst_explode" ))
                                instance_destroy();
                                exit;
                            }
                        }
                    }
                }
            break;
        }
        new_sprite = sprite_get("bomb-burst_throw");
        animation_type = 9;
        if (image_index >= 3) animation_type = 1000000;
    break;
    case 2:
        grav_rate = 0.1
        mask_index = sprite_get("bomb-splat_mask")
        switch (state) {
            case 0: //Thrown
                new_sprite = sprite_get("bomb-sprinkler_throw");
                animation_type = 5;
                if (state_timer == 0) {
                sound_play( sound_get( "splatbomb_throw" ))
                hsp = 4*spr_dir;
                vsp = -0.5;
                }
                if (!free) {
                	sound_play( sound_get( "sprinkler_land" ))
                    hsp = 0;
                    with(asset_get("obj_article3") ) {
                        if (player_id == other.player_id) {
                            if (type == other.type && id != other.id) {
                                shoulddie = true;
                            }
                        }
                    }
                    state = 1;
                    state_timer = 0;
                }
            break;
            case 1: //Sprinkler
                x = floor(x/16)*16 + 8;
                if (shoulddie || player_id.killarticles) {
                    player_id.killarticles = false;
                    instance_destroy();
                    exit;
                }
                new_sprite = sprite_get("bomb-sprinkler_ground");
                if (state_timer < 300) {
                    animation_type = 2;
                } else if (state_timer >= 300 && state_timer < 600) {
                    animation_type = 3;
                } else {
                    animation_type = 6;
                }
                if ( (state_timer-animation_type+1) mod (animation_type*4) == 0) {
                	sound_play( sound_get( "blaster_shot" ))
                    var temp1 = create_hitbox(AT_DSPECIAL, 3, floor(x)+8, floor(y)-20 );
                    var temp2 = create_hitbox(AT_DSPECIAL, 4, floor(x)-8, floor(y)-20 );
                	if(was_pocketed){
                		temp1.can_hit_self = true;
                		temp1.can_hit[pocketed_id.player] = false;
                		temp2.can_hit_self = true;
                		temp2.can_hit[pocketed_id.player] = false;
                	}
                	if (!was_pocketed && state_timer >= 1) {
                        if spr_dir == 1 spawn_ink_series(inkposx-24*spr_dir, inkposy-8, 3, spr_dir)
                        else spawn_ink_series(inkposx-8*spr_dir, inkposy-8, 3, spr_dir)
                	}
                }
                with (asset_get("pHitBox") ) {
                	if (!other.was_pocketed) {
                        if (player_id != other.player_id) {
                            if (place_meeting(x, y, other)) {
                                sound_play(sound_effect)
                                spawn_hit_fx(hit_effect_x*spr_dir, hit_effect_y, hit_effect)
                                instance_destroy();
                                exit;
                            }
                        }
                    } else {
                        if (player_id != other.pocketed_id) {
                            if (place_meeting(x, y, other)) {
                                if((player_id = other.player_id && attack != AT_DSPECIAL) || (player_id = other.player_id && attack = AT_DSPECIAL && (hbox_num != 3 && hbox_num != 4)) || (player_id != other.player_id)){
                                    sound_play(sound_effect)
                                    spawn_hit_fx(hit_effect_x*spr_dir, hit_effect_y, hit_effect)
                                    print_debug("dsdsdsd")
                                    instance_destroy();
                                    exit;
                                }
                            } 
                        }
                    }
                }
            break;
        } 
    break;
}

//NOTE: To use a hitbox properly with an article, it MUST be a projectile! (hitbox type 2)

//Sprite and animation handling

if (state_timer mod animation_type == 0){
    image_index++;
}

//If not already at the sprite it should be, switch to the new sprite and restart the animation
if (sprite_index != new_sprite){
    sprite_index = new_sprite;
    image_index = 0;
}

if (free) vsp += grav_rate;
if (!free) hsp *= 0.7

//Isabelle Compat Stuff
if(state_timer > 2){
    with(pHitBox){
        if player_id.url == 3529055124 && attack == AT_NSPECIAL && player_id.window == 2 && place_meeting(x, y, other){
            player_id.nspecial_pocket_status = {
                is_article : false, //this is only used for isabelles OWN articles so this should be false
                occupied : true, // Whether a projectile is currently in the pocket
                ref : other, // The reference of the hitbox in the pocket
                velocity : { // The velocity of the projectile when pocketed
                    x: hsp,
                    y: vsp
                },
                position : { // The position of the projectile to use when pocketed (is offset slightly in code to account for multiple isabelles)
                    x : 0,
                    y : -100000
                },
                attack : noone
            }
            player_id.window = 5;
            player_id.window_timer = 0;
            other.was_pocketed = true;
            other.pocketed_id = player_id;
        }
    }
}

with(oPlayer){
    if(url = 3529055124){
        if(nspecial_pocket_status.ref = other){
            with(other){
                if(type = 0){
                    player_id.pocketed_icons_index = 1;
                }else if type = 1{
                    player_id.pocketed_icons_index = 2;
                }else{
                    player_id.pocketed_icons_index = 3;
                }
            }
        }
    }
}

if(was_pocketed && pocketed_id.window = 7 && pocketed_id.window_timer = 0 && !pocketed_id.nspecial_pocket_status.occupied){ // WARN: Possible repetition during hitpause. Consider using window_time_is(frame) https://rivalslib.com/assistant/function_library/attacks/window_time_is.html
    if(type != 2){
        hsp = 8*spr_dir;
        vsp = -2;
    }else{
        hsp = 4*spr_dir;
        vsp = -1;
    }
}

//Make time progress
state_timer++;

#define ground_at_pos(xpos, ypos)
    return position_meeting(xpos, ypos, asset_get("par_block")) || (position_meeting(xpos, ypos, asset_get("par_jumpthrough")) && !position_meeting(xpos, ypos-2, asset_get("par_jumpthrough")));

/*#define spawn_ink(xpos, ypos, id)
    if ground_at_pos(xpos, ypos) var g = spawn_hit_fx(xpos, ypos, player_id.fx_inktile[id]);
    else return noone;
    g.spr_dir = 1;
    return g;

#define spawn_ink_series(startx, starty, num, dir)
    var main = noone;
    var n = 0;
    var r = 0;
    var am = player_id.am;
    var spr = floor(startx/16)%am;
    var arr = player_id.ink_sprites;
    repeat(num){
        var h = spawn_ink(startx + 16*r*dir, starty, arr[spr]);
        if h != noone n++;
        if main = noone && h != noone main = h;
        else if h = noone || r+1 = num{
            with main if "ink_data" not in self ink_data = n*dir;
            main = noone;
            n = 0;
        }
        spr = (spr+dir)%am;
        if spr < 0 spr = am -1;
        r++;
    }*/

#define spawn_ink(xpos, ypos)
    if (ground_at_pos(xpos, ypos) && !ground_at_pos(xpos, ypos-8)) {
        var g = instance_create(xpos, ypos, "obj_article2");
        g.spr_dir = 1;
        return g;
    }
    else return noone;

#define spawn_ink_series(startx, starty, num, dir)
    var main = noone;
    var n = 0;
    var r = 0;
    repeat(num){
        var h = spawn_ink(startx + 16*r*dir, starty);
        r++;
    }

// #region vvv LIBRARY DEFINES AND MACROS vvv
// DANGER File below this point will be overwritten! Generated defines and macros below.
// Write NO-INJECT in a comment above this area to disable injection.
#define window_time_is(frame) // Version 0
    // Returns if the current window_timer matches the frame AND the attack is not in hitpause
    return window_timer == frame and !hitpause
// DANGER: Write your code ABOVE the LIBRARY DEFINES AND MACROS header or it will be overwritten!
// #endregion