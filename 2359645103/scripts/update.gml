//update
//user_update(14);

if (kk_in_upB && ((state != PS_ATTACK_AIR && state != PS_ATTACK_GROUND) || attack != AT_USPECIAL))
{
    sound_stop(sound_get("flamespin"));
    kk_in_upB = false;
}

if (kk_dashed)
{
    if (!free)
        kk_dashed = false;
    else
    {
        move_cooldown[AT_FSPECIAL] = 2;
        move_cooldown[AT_UAIR] = 2;
    }
    
}

if (state == PS_CROUCH)
{
    kk_crouch_timer++;
    if(kk_crouch_timer == 120){
        kk_heart = instance_create(x + 2*spr_dir, y-10, "obj_article2");
        crouch_timer = -60;
    }
}
else
    kk_crouch_timer = 0;
    

if (down_down && taunt_pressed){
    set_attack(AT_UTHROW);
}

if(position_meeting(x, y-5, kk_heart)){
    take_damage(player, -1, -5);
    instance_destroy(kk_heart);
}

if(kk_hitcount > 0){
    if(kk_combotimer > 0){
        kk_combotimer--;
    }
    else {
        kk_hitcount--;
    }
    
}

if(instance_exists("obj_article2")){
    heart_active = true;
}
else{
    heart_active = false;
}


//Legacy T&A Support
if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 10;
    trummelcodecsprite1 = sprite_get("idle"); //unused
    trummelcodecsprite2 = sprite_get("idle"); //unused
    var page = 0;
    //Page 0
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 5;
    trummelcodecline[page,1] = "Who the heck is that?";
    trummelcodecline[page,2] = "He looks a lot like our";
    trummelcodecline[page,3] = "pal Shovel Knight.";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 1
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "That guy is King Knight,";
    trummelcodecline[page,2] = "He's super shiny and has";
    trummelcodecline[page,3] = "no talent to back it up.";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 2
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 1;
    trummelcodecline[page,1] = "This guy takes zero skill.";
    trummelcodecline[page,2] = "His attacks are broken";
    trummelcodecline[page,3] = "and he gets healed just";
    trummelcodecline[page,4] = "for hitting you!";
    page++; 
    //Page 3
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "no fair";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "pls nerf";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 4
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Hmmm... Says here that";
    trummelcodecline[page,2] = "his heirlooms pack quite";
    trummelcodecline[page,3] = "a punch. Look out, Alto!";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 5
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 4;
    trummelcodecline[page,1] = "Uh, yeah! I mean, I'm not";
    trummelcodecline[page,2] = "surprised he's so good.";
    trummelcodecline[page,3] = "He did get delayed, like";
    trummelcodecline[page,4] = "10 times.";
    page++; 
    //Page 6
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Plus, the least Cool Aid";
    trummelcodecline[page,2] = "could have done was give";
    trummelcodecline[page,3] = "him some attacks that";
    trummelcodecline[page,4] = "use Joustus cards!";
    page++; 
    //Page 7
    trummelcodecspeaker[page] = 1;
    trummelcodecexpression[page] = 2;
    trummelcodecline[page,1] = "It's like he didn't even";
    trummelcodecline[page,2] = "play the game or some-";
    trummelcodecline[page,3] = "thing! Come on, man!";
    trummelcodecline[page,4] = "";
    page++; 
    //Page 8
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "Regardless of how you";
    trummelcodecline[page,2] = "feel, Alto, just try";
    trummelcodecline[page,3] = "to KO him before he";
    trummelcodecline[page,4] = "can heal.";
    page++; 
    //Page 9
    trummelcodecspeaker[page] = 0;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "I know he looks pretty";
    trummelcodecline[page,2] = "flashy, but he's not";
    trummelcodecline[page,3] = "heavy and he's pretty";
    trummelcodecline[page,4] = "easy to launch.";
    page++; 
    //Page 10
    trummelcodecspeaker[page] = 2;
    trummelcodecexpression[page] = 0;
    trummelcodecline[page,1] = "ooh";
    trummelcodecline[page,2] = "";
    trummelcodecline[page,3] = "shiny";
    trummelcodecline[page,4] = "";
    page++; 
}