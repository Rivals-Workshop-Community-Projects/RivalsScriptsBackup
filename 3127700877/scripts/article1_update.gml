// articlex_update.gml
// https://rivalslib.com/workshop_guide/programming/reference/scripts/article_scripts.html#article-name-update-gml
// Runs every frame from the article's perspective.
// This script can be created for any article index (1, 2, 3, solid, and platform)

// Muno's article template: https://discord.com/channels/63722835520004096/611423483863367692/651800284875718658

// if(destroyed && state != 99){
//     state = 99;
//     state_timer = 0;
// }

if(player_id.sludge_puddle_id != self && state != 99 && state != 69){
    state = 99;
    state_timer = 0;
}

switch(state){
    case 0: // spawn state
    // if(state_timer > 0) ignores_walls = true;
    image_index = state_timer/4;
    if(state_timer >= 7){
        state = 1;
        state_timer = 0;
        ignores_walls = true;
    }
    break;
    case 1: // active sate
    image_index = 3 + (state_timer%36)/6;
    
    var runeD = has_rune("D");
    var runeJ = has_rune("J");
    
    with(oPlayer){
        if(self != other.player_id && get_player_team(player) != get_player_team(other.player_id.player)){
            if(place_meeting(x, y, other) && !free && point_distance(x, y, x, other.y) < 2 && diseased_id == noone && !invincible && !attack_invince && !hurtboxID.dodging){
                sludged_id = other.player_id;
                sludge_amount += 10;
                sludge_decay_lockout = max(150, sludge_decay_lockout);
                if(sludge_amount >= sludge_max){
                    sludged_id = noone;
                	sludge_amount = 0;
                	diseased_id = other.player_id;
                	diseased_timer = diseased_timer_max;
                }
            }
            if(place_meeting(x, y, other) && !free && point_distance(x, y, x, other.y) < 2 && (diseased_id != noone || runeD) && (sludge_slowed == noone || sludge_slowed == other) && (!runeJ || (runeJ && runeD))){
                if runeD {
                    if runeJ {
                        var speed_dif = ease_linear(0, 5, sludge_amount, sludge_max)/10;
                	    speed_dif = clamp(speed_dif, 0, .5);
                	    if (diseased_id != noone) speed_dif = .5;
                        if (abs(hsp)>1) x -= round(hsp*(0.9 - speed_dif));
                    } else {
                        if (abs(hsp)>1) x -= round(hsp*0.9);
                    }
                } else {
                    if (!runeJ && abs(hsp)>1) x -= round(hsp/2);
                }
                if !runeJ sludge_slowed = other;
            } else if(sludge_slowed == other){
                sludge_slowed = noone;
                hsp /= 2;
            }
        }
    }
    
    if(player_id.state == PS_RESPAWN || player_id.state == PS_DEAD) && (!has_rune("O") || (has_rune("O")) && player_id.rune_respawn == 0) was_parried = true;
    
    if(was_parried || (!position_meeting(x, y + 1, asset_get("par_block")) && !position_meeting(x, y + 1, asset_get("par_jumpthrough")))){
        state = 99;
        state_timer = 0;
    }
    
    break;
    case 69:
    image_index = 12 + state_timer/4;
    if(state_timer >= 20){
        instance_destroy(self);
        exit;
    }
    break;
    case 99: // dies of cringe
    image_index = 9 + state_timer/4;
    if(state_timer >= 12){
        instance_destroy(self);
        exit;
    }
    break;
}

state_timer++;
total_lifetime++;