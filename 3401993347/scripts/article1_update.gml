//
// depth = player_id.depth -9999;
if (hitstop == 0)
{
    if(pausecuzhit > 0){
        pausecuzhit--;
        
        //i am in pausecuzhit, pull back the orb
        if(!instance_exists(followingOrbID)){
            shoulddie = true;
        } else if(followingOrb){
            followingOrbID.x = x - followingOrbID.hsp;
            followingOrbID.y = y;
            followingOrbID.hitbox_timer--;
        }
    } else {
        window_timer++;
        if(followingOrb){
            //this article is for following a nspecial orb
            if(!instance_exists(followingOrbID)){
                shoulddie = true;
            } else {
                if(followingOrbID.player != player_id.player){
                    //orb was prolly parried
                    shoulddie = true;
                }
                curr_dir = 1;
                if(followingOrbID.hsp < 0){
                    curr_dir = -1;
                }
                x = followingOrbID.x + followingOrbID.hsp;
                y = followingOrbID.y;
                hit_detection();
            }

        } else{
            //this article is for a dspecial counter
            if ((player_id.state == PS_ATTACK_GROUND || player_id.state == PS_ATTACK_AIR) && player_id.attack == AT_DSPECIAL) {
                //Starting animation
                if (player_id.window != 2 && !meleeCounter) {
                    shoulddie = true;
                }
                
                if (!shoulddie){
                    hit_detection();
                }

                image_index+= 0.5;
                
                x = (player_id.x + player_id.hsp);
                y = (player_id.y + player_id.vsp) - 32;
            } else {
                image_index+= 0.5;
                shoulddie = true;
            }
        }
    }
}

if (shoulddie) {
    //destroy all orbs if needed
    //clean up fadingtraporbstacks
    if(followingOrb){
        instance_destroy(id);
    } else {
        //do clean up animation
        if (image_index >= 13){
            instance_destroy(id);
        }
    }
    exit;
}

#define on_hit(hbox)
// This is the code the article should run on hit.
// Edit this to have the desired functions when your article is hit by a hitbox.
// hbox refers to the pHitBox object that hit the article.
// hit_player_obj (usually) refers to the player that hit the article.
// hit_player_num refers to the player's number that hit the article.
 
//Default hit stuff
if(followingOrb){
    sound_play(hbox.sound_effect);
    // var fx = spawn_hit_fx(floor(x+hbox.hit_effect_x),floor(y+hbox.hit_effect_y),floor(hbox.hit_effect == 0 ? 301 : hbox.hit_effect));
    fx.pause = 8;
}
 
hit_player_obj = hbox.player_id;
hit_player_num = hbox.player;
owned_player = hit_player_num;
 
 //lets the orb get orbs on top of it
if (instance_exists(hbox) && hbox > 0 && !player_id.was_parried && player_id.hitstop == 0 ) {
	//dspecial_counter_active = false;
    var counter = hbox.player_id;
	if (instance_exists(hit_player_obj)) {
        if(followingOrb){
            var proj_filter = filter_projectile(hbox);

            if(hbox.attack == AT_FSPECIAL && hbox.hbox_num == 5){
                //orb gets trap orbs

                if(!instance_exists(player_id.trapbox)){
                    exit;
                }

                //transfer trap orbs to the shadowball one by one by adding them not replacing
                if(array_length(player_id.trapOrbStacks) > 0){
                    fadingTrapX = player_id.trapX;
			        fadingTrapY = player_id.trapY;
                    
                    //clean up fadingtraporbstacks
                    for (var i = 0; i < array_length(player_id.fadingTrapOrbStacks); i++) {
                        var stack = player_id.fadingTrapOrbStacks[i];
                        instance_destroy(stack.id);
                    }

                    var _len = array_length(player_id.trapOrbStacks);
                    if(!instance_exists(followingOrbID)){
                        exit;
                    }
                    // followingOrbID.shadowBallOrbStacks = [];
                    //array_copy(followingOrbID.shadowBallOrbStacks, 0, player_id.trapOrbStacks, 0, _len);
                    var _len = array_length(player_id.trapOrbStacks);
                    for (var i = 0; i < array_length(player_id.trapOrbStacks); i++) {
                        var stack = player_id.trapOrbStacks[i];
                        // if (array_length(player_id.trapOrbStacks) < player_id.maxOrbsStacks) {
                        followingOrbID.shadowBallOrbStacks = array_push(followingOrbID.shadowBallOrbStacks, stack);
                        // }
                    }
                    
                    //summon fading trap hitbox
                    player_id.fadingTrapbox = create_hitbox(AT_FSPECIAL, 7, 0, 0);
                    player_id.fadingTrapbox.x = fadingTrapX;
                    player_id.fadingTrapbox.y = fadingTrapY;

                    player_id.trapOrbStacks = [];

                    //clear trap hitboxes
                    with (player_id.trapboxCollectable) {
                        player_id.trapboxCollectable.hitbox_timer = 99999;
                    }
                    with (player_id.trapbox) {
                        player_id.trapbox.hitbox_timer = 99999;
                    }
                }
            } else

            if (hbox.type != 2 || proj_filter) {
                // if(!proj_filter){
                //     counter.hitstop = hbox.hitpause*player_id.ballClankMult*orbPower/player_id.shadowBallChargeMax;
                //     if(counter.hitstop < 1){
                //         counter.hitstop = 1;
                //     }
                //     counter.hitstop_full = counter.hitstop;
                //     counter.hitpause = true;
                //     counter.old_vsp = 0;
                //     counter.old_hsp = 0;
                // }


                // pausecuzhit = ceil(counter.hitstop) + 2;

                pausecuzhit = hbox.hitpause*player_id.ballClankMult+2;

                with (player_id) {
                    var fx = spawn_dust_fx(round(other.x), round(other.y), asset_get("fx_parry_new"), 8);
                    fx.depth = 5;
                }
                
                oldOrbPower = orbPower;

                orbPower -= hbox.damage;
                
                if(orbPower < 1){
                    followingOrbID.hitbox_timer = 999;
                    shoulddie = true;
                    exit;
                }

                followingOrbID.image_xscale = (orbPower*2+20)/200;
                followingOrbID.image_yscale = (orbPower*2+20)/200;
                followingOrbID.damage = floor(lerp(3, 15, orbPower/player_id.shadowBallChargeMax))
                followingOrbID.kb_value = lerp(4, 10, orbPower/player_id.shadowBallChargeMax)
                vkb_scale = lerp(0.3, 0.9, orbPower/player_id.shadowBallChargeMax)
                followingOrbID.hitpause = lerp(7, 15, orbPower/player_id.shadowBallChargeMax)
                followingOrbID.hitpause_growth = lerp(0.3, 1, orbPower/player_id.shadowBallChargeMax)
                followingOrbID.hsp = lerp(3, 10, orbPower/player_id.shadowBallChargeMax)
                followingOrbID.sound_effect = asset_get("sfx_ori_energyhit_"+(orbPower/player_id.shadowBallChargeMax>0.5?"heavy":"medium"));

                followingOrbID.hsp = abs(followingOrbID.hsp)*curr_dir;

                if (proj_filter) {
                    if(orbPower >= hbox.damage){
                        hbox.destroyed = true;
                    }
                    // pausecuzhit = ceil(pausecuzhit/2)
                }
            }
            
            //decrease the power of the orb based on the damage it takes -> hbox.damage
            // set_hitbox_value(AT_NSPECIAL, 2, HG_WIDTH, shadowBallCharge*2+20);
            // set_hitbox_value(AT_NSPECIAL, 2, HG_HEIGHT, shadowBallCharge*2+20);
            // set_hitbox_value(AT_NSPECIAL, 2, HG_DAMAGE, floor(lerp(3, 15, shadowBallCharge/shadowBallChargeMax)));
            // set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_KNOCKBACK, lerp(4, 10, shadowBallCharge/shadowBallChargeMax));
            // set_hitbox_value(AT_NSPECIAL, 2, HG_KNOCKBACK_SCALING, lerp(0.3, 0.9, shadowBallCharge/shadowBallChargeMax));
            // set_hitbox_value(AT_NSPECIAL, 2, HG_BASE_HITPAUSE, lerp(7, 15, shadowBallCharge/shadowBallChargeMax));
            // set_hitbox_value(AT_NSPECIAL, 2, HG_HITPAUSE_SCALING, lerp(0.3, 1, shadowBallCharge/shadowBallChargeMax));
            // set_hitbox_value(AT_NSPECIAL, 2, HG_PROJECTILE_HSPEED, lerp(3, 10, shadowBallCharge/shadowBallChargeMax));
            // set_hitbox_value(AT_NSPECIAL, 2, HG_HIT_SFX, asset_get("sfx_ori_energyhit_"+(shadowBallCharge/shadowBallChargeMax>0.5?"heavy":"medium")));
            // set_window_value(AT_NSPECIAL, 4, AG_WINDOW_HSPEED, lerp(-2, -6, min(shadowBallCharge/shadowBallChargeMax,1)));
        } else {
            with (player_id) {
                //mewtwo
                orig_knock = 0;
                should_make_shockwave = false;
                if(!other.followingOrb){
                    sound_play(asset_get("sfx_zetter_shine_charged"));
                    sound_play(asset_get("sfx_gus_land"));
                    var fx = spawn_dust_fx(round(x), round(y - 64), asset_get("fx_parry_new"), 8);
                    fx.depth = 5;
                }
                hitstop = 1;
                hitstop_full = hitstop;
                old_vsp = 0;
                old_hsp = 0;
                vsp = 0;
                hsp = 0;
                hitpause = true;
                
                if (hbox.type != 2) {
                    counter.has_hit_player = false;
                    counter.hitstop = 1;
                    counter.hitstop_full = counter.hitstop;
                    counter.hitpause = true;
                    counter.old_vsp = 0;
                    counter.old_hsp = 0;
                    counter.vsp = 0;
                    counter.hsp = 0;
                    counter.slowmo = 9+3*hbox.damage;
                    meleeCounter = true;
                    window = 3;
                    djumps = 0;

                    //make mewtwo invincible for the slowmo duration (plus a bit for for multihits)
                    invince_time = counter.slowmo+50;
                    if(invince_time > 120){
                        invince_time = 120
                    }
				    invincible = true;
                } else {
                    //absorb the projectile
                    projDamageEaten += hbox.damage;
                    if(shadowBallCharge < shadowBallChargeMax - hbox.damage*consumeModifier){
                        shadowBallCharge += hbox.damage*consumeModifier;
                        recentShadowBallChange = hbox.damage*consumeModifier;
                        recentShadowBallChangeTimer = 20;
                    } else {
                        oldShadowBallCharge = shadowBallCharge;
                        shadowBallCharge = shadowBallChargeMax;
                        recentShadowBallChange = shadowBallChargeMax - oldShadowBallCharge;
                        recentShadowBallChangeTimer = 20;
                    }
                    
                    //continue the animation since u ate a yummy
                    if(window_timer > 5){
                        window_timer += (-5);
                    }
                    if(window_timer < 5){
                        window_timer = 0
                    }
                    if(projDamageEaten > 42){
                        //infinite escape
                        window = 3;
                    }
                    //lower endlag since u ate a yummy
                    set_window_value(AT_DSPECIAL, 3, AG_WINDOW_LENGTH, 20-projDamageEaten*2.2);
                }
                if (filter_projectile(hbox)) {
                    hbox.destroyed = true;
                }
            }
        }
	}
}
 
#define filters(hbox)
//These are the filters that check whether a hitbox should be able to hit the article.
//Feel free to tweak this as necessary.
with hbox {
    var player_equal = player == other.player_id.player;
    var team_equal = get_player_team(player) == get_player_team(other.player_id.player);
    var url_equal = player_id.url == other.player_id.url && get_char_info(player_id.player, INFO_STR_NAME) == get_char_info(other.player, INFO_STR_NAME)
    return ("owner" not in self || owner != other) //check if the hitbox was created by this article
        && hit_priority != 0 && hit_priority <= 10
        && hitstun_factor >= 0
        && (groundedness == 0 || groundedness == 1+other.free)
        && !(url_equal && (attack == AT_FSPECIAL && (hbox_num != 4 && !(other.followingOrb && hbox_num == 5)))) //trap can touch if its on an orb
        //check if the hitbox is allowed to hit the article
        && (!player_equal || type == 2 && ((can_hit[other.player_id.player] && can_hit_self) || (attack == AT_FSPECIAL && (other.followingOrb && hbox_num == 5)))) // 
        && !(!url_equal && proj_break != 0)  //make it so its only broken by projectile breaking moves (not my own grabbable one)
        // && (other.orbId == id)
        // && (!player_equal) //uncomment to prevent the article from being hit by its owner.
        // && ( (get_match_setting(SET_TEAMS) && (get_match_setting(SET_TEAMATTACK) || !team_equal) ) || player_equal) //uncomment to prevent the article from being hit by its owner's team.
}
 

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

#define filter_projectile(_hbox)
var x1 = bbox_left;
var y1 = bbox_top;
var x2 = bbox_right;
var y2 = bbox_bottom;
if (instance_exists(_hbox)) {
	with (_hbox) {
		if ( (type == 2) && (player != other.player) //omitted || can_hit_self so you dont destroy it with your fspecial
            && (other.can_be_hit[player] == 0) && (can_hit[other.player])
            && (groundedness == 0 || (other.free ? 2 : 1) == groundedness)
            //   && ((get_player_team(other.player) != get_player_team(player) || team_attack))  //uncomment to prevent the article from being hit by its owner's team.
            && hit_priority != 0 && hit_priority <= 10
            //prevent the article from being hit by things that cannot hit its owner
            && !plasma_safe) {
                return true;
        }
	}
}
return false

#define collision_ellipse_list(x1,y1,x2,y2,obj,prec,notme)
var dsid,i;
dsid = ds_list_create();
with (obj) {
    if (!notme || id != other.id) {
        i = collision_ellipse(floor(x1),floor(y1),floor(x2),floor(y2),id,prec,false);
        if (i != noone) ds_list_add(dsid,i);
    }
}
if (ds_list_size(dsid) == 0) {
    ds_list_destroy(dsid);
    dsid = noone;
}
return dsid;