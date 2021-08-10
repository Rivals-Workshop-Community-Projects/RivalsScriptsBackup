
x = 300;
y = 300;

size = 16;
scale = 1;

didSpawn = false;
timer = 0;


sprite_change_offset("confetti", 192, 511);
sprite_change_offset("clockSeconds", 283, 90);
sprite_change_offset("clockMinutes", 283, 90);
sprite_change_offset("clockHours", 283, 90);
sprite_change_offset("clockSecondsShadow", 283, 90);
sprite_change_offset("clockMinutesShadow", 283, 90);
sprite_change_offset("clockHoursShadow", 283, 90);
sprite_change_offset("clockTop", 283, 90);
sprite_change_offset("clockTopShadow", 283, 90);
sprite_change_offset("clockMarks", 283, 90);
sprite_change_offset("musicVfx", 8, 8);
sprite_change_offset("shineVfxSmall", 8, 8);
sprite_change_offset("shineVfxMedium", 8, 8);
sprite_change_offset("shineVfxBig", 8, 8);
sprite_change_offset("mugSteamLong", 8, 49);
sprite_change_offset("mugSteamSingleBig", 8, 49);
sprite_change_offset("mugSteamSingleSplit", 8, 49);
sprite_change_offset("mugSteamSingleSmall", 8, 49);

dunkSuicide = sound_get("dunk00");
dunkProper = sound_get("dunk01");

secLast = current_second;

trophyDelay = 0;
trophyDelaySec = 0;
shineDelay = 0;
steamDelay = 0;

orgViewX = view_get_xview();
orgViewY = view_get_yview();

backgroundIndex = 1; //default is last bg

doDeathShake = false;


/*
music:
Magical Sound Shower
スプラトゥーン BGMSplattack ガチセッションしてみた東京アクティブNEETs
Guiles Theme Smooth McGroove Remixed 2 ARival Remix GameChops
Casiopea - Time Limit (Mint Jams 1982)

leftover ideas:
Casiopea  Domino line
MUSIC: cozy but still up beat, preferably no vocals?
Overwatch - Victory Theme [Electro Swing Remix]
Zan - Eovalove (Reboot Me remix)
DUCK TALES MOON THEME (keyboard cover)
Poké & Chill (pokemon gym / trainer battle)
Kirby Dreamland Theme (Singularity & Mutrix Remix)
Splatunes - James Landino - Show Me Dat Ink
youtube.com/watch?v=xgddSknTql8&ab_channel=Balloonbear-Topic
Lupin-The-Third’78
Aests - FIGHT!
glue70 - Casin
bo en - by the phone
Cowboy Bebop Remix: Tank
Kill La Kill OST - Uzu Sanageyama Theme, Gramatik - No Way Out / Just Jammin / Fist Up, snail's house ramune, NtrlTaste - Unfaithful, Snarky Puppy: NPR, Ratatat - Shempi / DRUGS, jinsang - Summer's Day -version 2-, RUDE - Eternal Youth, sun yehoshua - overseas (karaoke night), TheFatRat - Unity, VECTOR GRAPHICS - DESTINE, SAINT PEPSI - tell me, KNOWER living room power set 2020, 真夜中のジョーク - 間宮貴子, BADBADNOTGOOD | Weight Off / Kaleidoscope, Unknown Mortal Orchestra - Hunnybee, Hybrid Rainbow - The Pillows (Cover), 和楽器バンド / 千本桜, Disco! In The Panic Room (instrumental?), Dirty Loops - Circus, The Reign of Kindo - Just Wait, Trance - 009 Sound System Dreamscape, WORLD ORDER-"MACHINE CIVILIZATION", Jackson Wang - 100 Ways, (dadi freyr?), Khruangbin - lady and man / evan finds the third room, thundercat them changes, sylvan esso, little big, Moon Hooch, half alive, Omori Version - Bo en's My Time, Hello Sleepwalkers「午夜の待ち合わせ」, Granado Espada - Violin of the Death, ...... dark moody theme: Sun Rai - San Francisco Street
*/