//load.gml
//this script is usually used to put in all our sprites' offsets

//ground movement
sprite_change_offset("idle",            55, 99);
sprite_change_offset("blank_idle",      55, 99);
sprite_change_offset("outlaw_idle",     55, 99);
sprite_change_offset("outlaw_bandana",  110,198);
sprite_change_offset("crouch",          50, 99);
sprite_change_offset("walk",            49, 99);
sprite_change_offset("walkturn",        55, 99);
sprite_change_offset("dash",            50, 99);
sprite_change_offset("dashstart",       50, 99);
sprite_change_offset("dashstop",        50, 99);
sprite_change_offset("dashturn",        50, 99);

//air movement
sprite_change_offset("jumpstart",       50, 99);
sprite_change_offset("jump",            52, 84);
sprite_change_offset("doublejump",      52, 84);
sprite_change_offset("walljump",        52, 84);
sprite_change_offset("pratfall",        49, 91);
sprite_change_offset("land",            54, 99);
sprite_change_offset("landinglag",      51, 99);

//parry button
sprite_change_offset("parry",           50,  99);
sprite_change_offset("parryTarget0",    100, 99);
sprite_change_offset("parryTarget1",    100, 99);
sprite_change_offset("roll_forward",    50,  99);
sprite_change_offset("roll_backward",   50,  99);
sprite_change_offset("airdodge",        52,  84);
sprite_change_offset("waveland",        50,  99);
sprite_change_offset("tech",            50,  99);

//hurt
sprite_change_offset("hurt",            47, 81);
sprite_change_offset("bighurt",         47, 81);
sprite_change_offset("bouncehurt",      47, 81);
sprite_change_offset("spinhurt",        47, 81);
sprite_change_offset("uphurt",          47, 81);
sprite_change_offset("downhurt",        47, 81);
sprite_change_offset("vigilante_hurt",  66, 66);

//normals
sprite_change_offset("jab",             73,  99, true);
sprite_change_offset("utilt",           49,  96, true);
sprite_change_offset("ftilt",           47,  91, true);
sprite_change_offset("dtilt",           35,  94, true);
sprite_change_offset("dattack",         48,  99, true);
sprite_change_offset("ustrong",         23,  99, true);
sprite_change_offset("fstrong",         65,  99, true);
sprite_change_offset("dstrong",         48,  109,true);
sprite_change_offset("nair",            45,  86, true);
sprite_change_offset("uair",            48,  78, true);
sprite_change_offset("fair",            52,  84, true);
sprite_change_offset("bair",            72,  70, true);
sprite_change_offset("bairEmpty",       72,  70, true);
sprite_change_offset("dair",            108, 77, true);

//specials
sprite_change_offset("nspecial",        48, 99, true);
sprite_change_offset("uspecial",        41, 58, true);
sprite_change_offset("uspecialGround",  53, 88, true);
sprite_change_offset("fspecialSpawn",   45, 99, true);
sprite_change_offset("fspecialDash",    45, 99, true);
sprite_change_offset("fspecialJump",    48, 90, true);
sprite_change_offset("fspecialTurn",    45, 99, true);
sprite_change_offset("fspecial2",       50, 99, true);
sprite_change_offset("dspecial",        48, 91, true);

//misc
sprite_change_offset("taunt",           49, 79, true);
sprite_change_offset("downtaunt",       55, 99, true);
sprite_change_offset("intro",           50, 99, true);
sprite_change_offset("intro2",          50, 99);
sprite_change_offset("outlaw_intro",    50, 99);
sprite_change_offset("plat",            50, 48);
sprite_change_offset("wait0",           55, 99);
sprite_change_offset("wait1",           55, 99);
sprite_change_offset("wait2",           55, 99);
sprite_change_offset("wait3",           55, 99);


//article
sprite_change_offset("johnCheese",            48,  50, false);
sprite_change_offset("johnCheese_hurt",       48,  50);
sprite_change_offset("johnDeath",             48,  50, true);
sprite_change_offset("johnHitParticles",      100, 100);
sprite_change_offset("johnDeathParticles",    100, 100);

//custom
sprite_change_offset("cheeseBullet",           102, 102);
sprite_change_offset("cheeseBulletEnd",        100, 104);
sprite_change_offset("cheeseBulletBig",        100, 100);
sprite_change_offset("cheeseBulletBigDead",    105, 105);

sprite_change_offset("targetBreak",            300, 150);
sprite_change_offset("tauntEffect",            46,  60);
sprite_change_offset("uairExplosion",          100, 100); //96,  156

sprite_change_offset("uziBullets",             31,  31);
sprite_change_offset("rocketProjectile",       52,  52);
sprite_change_offset("rocketExplosionGround",  33,  63);

sprite_change_offset("bairProj",               50,  54);
sprite_change_offset("bairProjMask",           50,  48);
sprite_change_offset("bairProjDestroy",        50,  46);

sprite_change_offset("dynamite",               100, 100);
sprite_change_offset("dynamiteExplosionGround",64,  110);

sprite_change_offset("cowWarning",             50,  69);
sprite_change_offset("crate",                  50,  69);
sprite_change_offset("explosion2",             150, 150);
sprite_change_offset("cow",                    50,  98);
sprite_change_offset("plank",                  50,  50);
sprite_change_offset("stompVFX",               166, 162);

sprite_change_offset("weenieMask",             45, 100);
sprite_change_offset("weenieSpawn",            45, 99);
sprite_change_offset("weenieDash",             45, 99);
sprite_change_offset("weenieDashEffect",       45, 99);
sprite_change_offset("weenieIdle",             45, 99);
sprite_change_offset("weenieTurn",             45, 99);
sprite_change_offset("weenieDie",              50, 70);
sprite_change_offset("fspecial_hurt",          62, 70); //67

//Hud
sprite_change_offset("hud",                    0, -2);
sprite_change_offset("hud_blank",              0, -2);
sprite_change_offset("hud_outlaw",             0, -2);
sprite_change_offset("hud_mask",               0, -2);
sprite_change_offset("hudIcons",               50,  50);

//Sprite Masks
sprite_change_offset("map_sprite1",            45, 40);
sprite_change_offset("map_sprite2",            49, 42);
sprite_change_offset("map_sprite3",            49, 42);
sprite_change_offset("map_sprite4",            49, 42);
sprite_change_offset("map_sprite5",            40, 39);
sprite_change_offset("map_sprite6",            46, 39);
sprite_change_offset("map_sprite7",            46, 39);
sprite_change_offset("map_sprite8",            46, 39);
sprite_change_offset("map_sprite9",            39, 39);
sprite_change_offset("map_sprite10",           39, 39);
sprite_change_offset("map_sprite11",           46, 39);
sprite_change_offset("map_sprite12",           48, 48);
sprite_change_offset("map_sprite13",           42, 35);
sprite_change_offset("map_sprite14",           42, 42);
sprite_change_offset("map_sprite15",           42, 42);
sprite_change_offset("map_sprite16",           42, 42);
sprite_change_offset("map_sprite17",           42, 42);
sprite_change_offset("map_sprite18",           42, 42);
sprite_change_offset("map_sprite19",           42, 42);

//Compat
sprite_change_offset("sonictrick",             48, 89, true);