//Character height

char_height = 62;

switch(state){        
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
        char_height = 25;
        if (state_timer < 5){
            char_height = ease_quartIn(62, 25, state_timer, 5)
        }
        if (state_timer > 14){
            char_height = ease_quartOut(25, 62, state_timer-14, 14)
        }
        break;
    case PS_PRATFALL:
        if !pratanim{
            char_height = 28;
        }
        if pratanim{
            sprite_index = sprite_get("jump");
            image_index = 6;
        }
        break;
    case PS_PRATLAND:
        if (state_timer < 11 && !pratanim){
            char_height = ease_quartOut(28, 62, state_timer, 10);
        }
        break;
    case PS_ATTACK_GROUND:
    case PS_ATTACK_AIR:
        if (attack == AT_USTRONG){
            if (window == 2){
                char_height = ease_quartIn(62, 152, window_timer, 6)
            }
            if (window == 3){
                char_height = 152;
            }
            if (window == 4 && window_timer < 16){
                char_height = ease_quartIn(152, 62, window_timer, 15)
            }
        }
        
        if (airstrong && !parried && !godmode && !runeG){
            if (attack == AT_USTRONG){
                sprite_index = sprite_get("ustrong_air");
            }
            if (attack == AT_FSTRONG){
                sprite_index = sprite_get("fstrong_air");
            }
        }
        if parried{
            if (attack == AT_USTRONG){
                sprite_index = sprite_get("ustrong");
            }
            if (attack == AT_FSTRONG){
                sprite_index = sprite_get("fstrong");
            }
        }
        break;
}



//Pratland

if (state == PS_PRATLAND){
    sprite_index = spr_pratland;
    if (state_timer > prat_land_time * .25){
        image_index = 1;
    }
    if (state_timer > prat_land_time * .5){
        image_index = 2;
    }
    if (state_timer > prat_land_time * .75){
        image_index = 3;
    }
    if pratanim{
        image_index = 3;
    }
}



if useskins{
	//Ground
	changeAnim(spr_idle, sprite_get("idle"));
	changeAnim(spr_crouch, sprite_get("crouch"));
	changeAnim(spr_walk, sprite_get("walk"));
	changeAnim(spr_walkturn, sprite_get("walkturn"));
	changeAnim(spr_dash, sprite_get("dash"));
	changeAnim(spr_dashstart, sprite_get("dashstart"));
	changeAnim(spr_dashstop, sprite_get("dashstop"));
	changeAnim(spr_dashturn, sprite_get("dashturn"));
	
	//Air
	changeAnim(spr_jumpstart, sprite_get("jumpstart"));
	changeAnim(spr_jump, sprite_get("jump"));
	changeAnim(spr_doublejump, sprite_get("doublejump"));
	changeAnim(spr_walljump, sprite_get("walljump"));
	changeAnim(spr_pratfall, sprite_get("pratfall"));
	changeAnim(spr_land, sprite_get("land"));
	changeAnim(spr_landinglag, sprite_get("landinglag"));
	
	//Dodge
	changeAnim(spr_parry, sprite_get("parry"));
	changeAnim(spr_roll_forward, sprite_get("roll_forward"));
	changeAnim(spr_roll_backward, sprite_get("roll_backward"));
	changeAnim(spr_airdodge, sprite_get("airdodge"));
	changeAnim(spr_airdodge_waveland, sprite_get("waveland"));
	changeAnim(spr_tech, sprite_get("tech"));
	
	//Hurt
	changeAnim(spr_hurt, sprite_get("hurt"));
	changeAnim(spr_bighurt, sprite_get("bighurt"));
	changeAnim(spr_hurtground, sprite_get("hurtground"));
	changeAnim(spr_uphurt, sprite_get("uphurt"));
	changeAnim(spr_downhurt, sprite_get("downhurt"));
	changeAnim(spr_bouncehurt, sprite_get("bouncehurt"));
	changeAnim(spr_spinhurt, sprite_get("spinhurt"));
	
	//Attack
	changeAnim(spr_jab, sprite_get("jab"));
	changeAnim(spr_dattack, sprite_get("dattack"));
	changeAnim(spr_ftilt, sprite_get("ftilt"));
	changeAnim(spr_dtilt, sprite_get("dtilt"));
	changeAnim(spr_utilt, sprite_get("utilt"));
	changeAnim(spr_nair, sprite_get("nair"));
	changeAnim(spr_fair, sprite_get("fair"));
	changeAnim(spr_bair, sprite_get("bair"));
	changeAnim(spr_uair, sprite_get("uair"));
	changeAnim(spr_dair, sprite_get("dair"));
	changeAnim(spr_fstrong, sprite_get("fstrong"));
	changeAnim(spr_fstrong_air, sprite_get("fstrong_air"));
	changeAnim(spr_ustrong, sprite_get("ustrong"));
	changeAnim(spr_ustrong_air, sprite_get("ustrong_air"));
	changeAnim(spr_dstrong, sprite_get("dstrong"));
	changeAnim(spr_nspecial, sprite_get("nspecial"));
	changeAnim(spr_fspecial, sprite_get("fspecial"));
	changeAnim(spr_uspecial, sprite_get("uspecial"));
	changeAnim(spr_dspecial, sprite_get("dspecial"));
	changeAnim(spr_taunt, sprite_get("taunt"));
}



if (sprite_index == spr_idle || sprite_index == spr_walk){
    image_index = floor((state_timer mod 48) / 8);
    if idleneedsreset{
        image_index += 3;
    }
}
else{
    idleneedsreset = false;
}

if (sprite_index == spr_dash){
    image_index = floor((state_timer mod 24) / 4);
}

if (sprite_index == spr_pratfall){
    image_index = floor((state_timer mod 32) / 4);
}

if (state == PS_ATTACK_GROUND && attack == AT_TAUNT){
    if (window == 1 && window_timer == 1){
        glitchtimer2 = 0;
    }
    
    if (get_gameplay_time() mod 11 - random_func(player, 11, true) > 6){
        glitchtimer2 = 8;
        tauntskin = get_gameplay_time() mod 2;
    }
    
    if (glitchtimer2 > 0 && skin == 1){
        
        if (tauntskin == 1){
        	sprite_index = spr_tauntglitch2;
        }
        else{
        	sprite_index = spr_tauntglitch;
        }
        glitchtimer2--;
    }
}



//For intro

if (get_gameplay_time() < 2 + (6 * (player - 1))){
	introframelength = 6;
	introdur = 14 * introframelength;
	introtimer = introdur;
}

if (introtimer > 0){
	introframe = floor((introdur - introtimer) / introframelength);
	sprite_index = spr_intro;
	image_index = introframe;
	idleneedsreset = true;
	
    char_height = ease_quartOut(62, 112, introtimer, 2 * introframelength);
    if (skin == 1){
    	char_height = 32;
    }
    if (introframe < 13){
        char_height = 112;
        if (skin == 1){
        	char_height = 62;
        }
    }
    if (introframe < 12){
        char_height = ease_quartOut(32, 112, (introdur - introtimer) - 10 * introframelength, 2 * introframelength);
        if (skin == 1){
        	char_height = 112;
        }
    }
    if (introframe < 10){
        char_height = 32;
    }
    
    if (introdur - introtimer == introframelength * 6){
        sound_play(djump_sound);
    }
    if (introdur - introtimer == introframelength * 9){
        sound_play(jump_sound);
    }
    
    if (introtimer == 1 && skin > 1){
    	var vfx = spawn_hit_fx(x, y-30, 304);
    	vfx.depth = depth-1;
    }
    
	introtimer--;
}



#define changeAnim

var old_spr = argument[1];
var new_spr = argument[0];

if (sprite_index == old_spr && old_spr != new_spr){
    sprite_index = new_spr;
}