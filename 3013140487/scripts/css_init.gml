animation_timer = 0;
alpha_alt = 0;
prev_alt = get_player_color(player);
anim_timer = 0;
alt_cur = get_player_color("alt_fix" in self? alt_fix: player);
onlpl = "alt_fix" in self? alt_fix: player;
cssframes = 0;
voiced = get_synced_var(onlpl);
voicebutton = voiced * 3;
voicebuttoncurrent =  voiced * 3;
sprite_change_offset("idle", 25, 47);

alt_name = [
"Thief Extraordinaire",
"Yellow",
"Blue",
"Green",
"Orange",
"Purple",
"White",
"Noir",
"Villainous",
"Last Surprise",
"The Third",
"Inspector",
"the slaughter",
"Grass Cat",
"Bizarre",
"Why So Serious?",
"Abyss",
"Early Access",
"Gold Ranked",
"Rune Guy"
];


// voice = get_synced_var(onlpl);
voice = true; // some reason this caused issues

voice_playing_sound = noone;

VC_ATK_SMALL        = 0;
VC_ATK_BIG          = 2;
VC_HURT             = 3;
VC_DEATH            = 4;
VC_TAUNT            = 5;
VC_STEALING         = 6;
VC_INTRO            = 7;
VC_DODGE            = 8;
VC_FSPECIAL         = 9;
VC_CSS              = 10;

vcs = [
    [4, 1], //VC_ATK_SMALL
    [],
    [4, 1], //VC_ATK_BIG
    [4, 1], //VC_HURT
    [4, 1], //VC_DEATH
    [4, 1], //VC_TAUNT
    [2, 0], //VC_STEALING
    [3, 0], //VC_INTRO
    [3, 1], //VC_DODGE
    [6, 2], //VC_FSPECIAL
    [3, 0], //VC_CSS
];