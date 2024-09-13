if (state == PS_DASH && prev_state == PS_DASH_TURN && state_timer < 18){
    hsp += dash_turn_accel*spr_dir;
    state_timer = 18;
}
switch (msg_num){
    case 0:
        msg = "NYEH HEH HEH!";
    break;
    case 1:
        msg = "THOROUGHLY JAPED AGAIN!";
    break;
    case 2:
        msg = "POWERFUL! POPULAR! PRESTIGIOUS!";
    break;
    case 3:
        msg = "CONTINUE, ONLY IF YOU DARE!";
    break;
    case 4:
        msg = "THE GREAT PAPYRUS FAILS AT NOTHING!";
    break;
    case 10: // sans
        msg = "PREPARE TO BE TRIUMPHED, BROTHER!";
    break;
    case 11: // Older Papyrus' (Legacy and Old)
        msg = "I FINALLY FOUND YOU, FAKER!!";
    break;
    case 12: // Another Papyrus
        msg = "I SHALL BE MY OWN GREATEST MATCH!";
    break;
    case 13: // Frisk, Kris, Chara, and Clover
        msg = "GREETINGS, HUMAN! PREPARE TO BE CAPTURED!";
    break;
    case 14: // Mad Dummy
        msg = "UNDYNE WAS THE LEAST OF YOUR WORRIES, DUMMY!";
    break;
    case 15: // Napstablook
        msg = "NO NAPPING ON MY TIME, SPOOKY BLOO BLOO!";
    break;
    case 16: // Flowey
        msg = "LET ME SHOW YOU MY STRENGTH, FLOWERY!";
    break;
    case 17: // Spamton
        msg = "I'M THE BIGGEST SHOT YOU'LL EVER MEET!!";
    break;
    case 18: // Noelle
        msg = "I DON'T NEED YOUR ICE CREAM! THERE'S PLENTY ALL OVER THE GROUND!!";
    break;
}
msg_length = string_length(msg);

with (oPlayer){
        if (hitpause && orbd){
            if (hitstop % 4 <= 1){
                x += 2;
            } else x -= 2;
        }
        if (!hitpause){
            orbd = false;
        }
        if(blue == true && blue_id = other.id){
        if (state == PS_RESPAWN && blue == true){
    	    blue_time = 0;
            blue = false;
        }
            
        if (blue_time > 0){
        blue_time --;
        }
        if (blue_time > 600){
            blue_time = 600;
        }
                if (state == PS_IDLE_AIR || state == PS_FIRST_JUMP){
                can_djump = false;
                }
                if (can_djump == false){
                	djumps = 3;
                } else djumps = 0;
                /*if (got_hit && !can_djump){
                	can_djump = true;
                }*/
                if (state_cat == SC_AIR_COMMITTED || state_cat == SC_HITSTUN || state == PS_TUMBLE){
                	can_djump = true;
                }
                if (state == PS_FIRST_JUMP){
                	if (jump_down && state_timer <= 30){
                		vsp -= .3;
                	}
                }
            
        }
        if(blue_time <= 0 && blue){
                can_djump = true;
                djumps = 0;
                blue = false;
         }
         
    if (!blue){
        can_djump = true;
    }
}
if (hitpause && orbd){
    if (hitstop % 4 <= 1){
        x += 2;
    } else x -= 2;
}
if (!hitpause){
    orbd = false;
}

if (!can_bone && !free){
    if (!instance_exists(bone_spire) || !collision_rectangle(x + 32, y + 8, x - 32, y, bone_spire, false, true)){
        can_bone = true;
    }
}