//css_init.gml
sound_stop(sound_get("dogsong"));
sound_stop(sound_get("mus_smile"));
sound_stop(sound_get("wingding"));

css_anim_time = 0;

icon_x_pos = x + 174;
icon_y_pos = y + 108;

preview_x = floor(x+10);
preview_y = floor(y+10);
//alts
//there can be a total of 32 (0 - 31) alts normally
alt_name = [
    "",
    "cool dude", //papyrus
    "the queen", //toriel
    "true lab", //alphys
    "royal guard", //undyne
    "killer robot", //mettaton
    "the king", //asgore
    "the fallen child", //frisk
    "=)", //chara
    "don't forget", //krish
    "rude buster", //sus
    "holiday girl", //no l
    "÷infamous÷", // :(
    "psi", //sans
    "pink diamond", //sans after not surviving
    "hope & despair", //nagito komaeda from danganronpa 2
    "psycho", //that uhhh reigen mf from mob psycho
    "epiphany", //monka dlc
    "long ago", //intro cutscene palette
    "overworld",
    "easiest enemy", //undertale black & white battle colors
    "amino poisoned",
    "soka",
    "shaunt",
    "totally serious",
    "eye for an eye",   //gg!underfell
    "starlight savior", //ts!underswap crossbones
    "goner" //wing gaster,,,
];

sfx_gaster = 0;
alt_cur = 0;
initCheck = 0;

//ANIMATION VARS
sprite_change_offset("idle", 50, 90);

preview_idle = sprite_get("idle")
preview_scale = 1; //depends on if we have small sprites on, if we do, type 2, if not type 1
preview_anim_speed = 0.15; //should mimic "idle_anim_speed" - controls the sprites animation speed

alt_cur = 0;
alt_prev = 0;

