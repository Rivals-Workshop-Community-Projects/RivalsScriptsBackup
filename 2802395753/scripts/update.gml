// MunoPhone Touch code - don't touch
// should be at TOP of file
muno_event_type = 1;
user_event(14);

if(job_timer > 0){
    job_timer --;
}
if(job_timer == 1){
    sound_play(asset_get("sfx_abyss_despawn"));
}
if(job_timer == 0){
    current_job = 1;
}

switch(current_job){
    case 1:
    job = "none";
    break;
    case 2:
    job = "office"
    break;
    case 3:
    job = "chef"
    break;
    case 4:
    job = "clerk"
    break;
    case 5:
    job = "mechanic"
    break;
}

if(job == "office"){
    set_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER, sdi_mult);
    set_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER, 4);
    set_hitbox_value(AT_JAB, 1, HG_ANGLE, 0);
    set_hitbox_value(AT_JAB, 1, HG_TECHABLE, 1);
    set_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER, .75);
    set_hitbox_value(AT_JAB, 1, HG_DAMAGE, 2);
    if(attack != AT_JAB){
        sdi_mult = 0.01;
    }
} else {
    reset_hitbox_value(AT_JAB, 1, HG_SDI_MULTIPLIER);
    reset_hitbox_value(AT_JAB, 1, HG_ANGLE_FLIPPER);
    reset_hitbox_value(AT_JAB, 1, HG_ANGLE);
    reset_hitbox_value(AT_JAB, 1, HG_TECHABLE);
    reset_hitbox_value(AT_JAB, 1, HG_HITSTUN_MULTIPLIER);
    reset_hitbox_value(AT_JAB, 1, HG_DAMAGE);
}

if(grabbed_id != noone){
    if(grabbed_id.hitpause == false && attack == AT_DATTACK){
        grabbed_id = noone;
    } else if(grabbed_id.hitpause == false && attack != AT_USTRONG){
        grabbed_id.hsp = 0;
        grabbed_id = noone;
    } else if(grabbed_id.hitpause == false && attack == AT_USTRONG){
        grabbed_id.hsp /= 4;
        grabbed_id = noone;
    }
}

//jobs
// job = 0;

// when(job == 5)
// {
//     job = 0;
// }
if(taunt_pressed){
    var found = false;
    with oPlayer if self != other switch url
    {
    	case "2273636433":
    	case "1870768156":
    	case "1869351026":
    	case "2443363942":
    	case "2159023588":
    	case "1980469422":
    		break;
    	default:
    		if ((
    			check_string_for_name(player, "nald") || 
    			check_string_for_name(player, "%") || 
    			check_string_for_name(player, "sand") || 
    			check_string_for_name(player, "psy") || 
    			check_string_for_name(player, "ultra") || 
    			check_string_for_name(player, "god") || 
    			check_string_for_name(player, "boss") || 
    			check_string_for_name(player, "ui ") || 
    			check_string_for_name(player, "ssg") || 
    			check_string_for_name(player, "melee") || 
    			check_string_for_name(player, "png") || 
    			check_string_for_name(player, "accurate")
    			)&& url != "2702430274") found = true;
    		break;
    }
    if (found){
        cheat = true;
    }
}

#define check_string_for_name(player, string)
return string_count(string, string_lower(get_char_info(player, INFO_STR_NAME)))