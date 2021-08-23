//update
if get_gameplay_time() == 2 && id != oTestPlayer {
    set_attack(AT_NTHROW);
}
if special_down == 1 {
    special_held += 1;
} else {
    old_special_held = special_held;
    special_held = 0;
}

if (has_gun == 0) {
    no_gun = 1;
}
if (has_gun == 1 && no_gun == 1) {
    no_gun = 0;
    got_gun = 0;
    sound_play(asset_get("sfx_may_arc_cointoss"));
    if (state != PS_RESPAWN && state != PS_PRATFALL && state != PS_ROLL_BACKWARD && state != PS_ROLL_FORWARD && state != PS_TECH_BACKWARD && state != PS_TECH_FORWARD && state_cat != SC_HITSTUN && state != PS_PRATLAND) {//&& attack_down == 0 && special_down == 0) { //&& asset_get("obj_article1").dist < 1000
        if attack == AT_USPECIAL && !was_parried && (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) state = PS_IDLE;
        invince_time = 0;
        invincible = 0;
        soft_armor = 0;
        super_armor = 0;
    }
}

if got_gun < got_gun_max {
    got_gun++;
    ccode = round(sin(got_gun*3.14159/got_gun_max)*100)+100;
    outline_color = [ccode,ccode,ccode];
    init_shader();
    outline_color = [0,0,0];
} else
    init_shader();
    
if free == 0 || state == PS_WALL_JUMP {
    can_uspec = 1;
}

// if gun == undefined {
//     has_gun = 1;
// }

if trummelcodecneeded {
    trummelcodec = 17;
    trummelcodecmax = 7;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 0;

    trummelcodecline[0,1] = "Looks like that's";
    trummelcodecline[0,2] = "Gustav? The Phantom";
    trummelcodecline[0,3] = "Musketeer!";
    trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 2;
    trummelcodecexpression[1] = 0;

    trummelcodecline[1,1] = "hes got a gun";
    trummelcodecline[1,2] = "";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";

    //Page 2
    trummelcodecspeaker[2] = 1;
    trummelcodecexpression[2] = 2;

    trummelcodecline[2,1] = "Yes, he does.";
    trummelcodecline[2,2] = "Though that's a";
    trummelcodecline[2,3] = "really old model.";
    trummelcodecline[2,4] = "";

    //Page 3
    trummelcodecspeaker[3] = 2;
    trummelcodecexpression[3] = 0;

    trummelcodecline[3,1] = "let me at him";
    trummelcodecline[3,2] = "";
    trummelcodecline[3,3] = "";
    trummelcodecline[3,4] = "";

    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 2;

    trummelcodecline[4,1] = "He has a wide variety";
    trummelcodecline[4,2] = "of moves at his ";
    trummelcodecline[4,3] = "disposal....";
    trummelcodecline[4,4] = "";

    //Page 5
    trummelcodecspeaker[5] = 1;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "Large disjoints,";
    trummelcodecline[5,2] = "low angles...";
    trummelcodecline[5,3] = "Sometimes moves seem";
    trummelcodecline[5,4] = "to just pass through him!";

    //Page 7
    trummelcodecspeaker[6] = 2;
    trummelcodecexpression[6] = 2;

    trummelcodecline[6,1] = "there can only be one";
    trummelcodecline[6,2] = "";
    trummelcodecline[6,3] = "";
    trummelcodecline[6,4] = "";
    
    trummelcodecspeaker[7] = 1;
    trummelcodecexpression[7] = 4;

    trummelcodecline[7,1] = "Don't go rushing!";
    trummelcodecline[7,2] = "You have to deal";
    trummelcodecline[7,3] = "with his tools";
    trummelcodecline[7,4] = "carefully.";
}