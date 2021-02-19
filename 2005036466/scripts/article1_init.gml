/*
    Codec array initializer


    puppy time

*/
sprite_index = asset_get("empty_sprite"); // literally required
with (player_id) {
    base_codecs();
    workshop_codecs();
}
instance_destroy();
exit;

#define base_codecs

var subj = 0;

subjects[subj] = -1;
codec_panels[subj] = [
        [
            181,
            1,
            "forza",
            [
              [1,"Forza, have any info on this fighter?"]
            ],
            sound_get("codec_notsupported1")
        ],
        [
            444,
            2,
            "forza",
            [
                [1,"No, can't say that I do."],
                [133,"There is no information on this fighter!"],
                [283,"You're going to have to do this by yourself, Penny."]
            ],
            sound_get("codec_notsupported2")
        ],
        [
            78,
            1,
            "forza",
            [
              [1,"Hear you loud and clear."]
            ],
            sound_get("codec_notsupported3")
        ]
    ];
subj++;
//perish codec.
subjects[subj] = -1;
codec_panels[subj] = [
        [
            362,
            2,
            "forza",
            [[1,"Penny? Answer me! Penny?! PENNYYY!"]],
            sound_get("codec_death")
        ]
    ];
subj++;
// perish (hime)
subjects[subj] = -1;
codec_panels[subj] = [
        [
            409,
            2,
            "hime",
            [[1,"Puppy? Are you okay? Puppy!? PUUUUPPYYYYYYY!"]],
            sound_get("codec_deathhime")
        ]
    ];
subj++;

subjects[subj] = CH_ZETTERBURN; // the subject's url
codec_panels[subj] = [
    [
        264,                                                                    //duration (13 frames added automatically.)
        2,                                                                      //active speaker
        "forza",                                                                //speaker2 for this panel
        [
            [1,"Are my eyes deceiving me? Is that THE Fire's Roar?"]            //frame, text pairs.
        ],
        sound_get("codec_zetter1")                                              //audio for this panel
    ],
    [
        272,
        1,
        "forza",
        [
            [1,"It sure does look like him. The rightful heir to the throne, Zetterburn."]
        ],
        sound_get("codec_zetter2")
    ],
    [
        1165,
        2,
        "forza",
        [
            [1,"If Zetterburn is your opponent, then you must proceed with caution, he's quite the war veteran."],
            [353,"His mane is made up of a powerful flame, and with his sharp claws, he has quite the power arsenal."],
            [723, "He can use his fiery mane to flick fireballs at you, use his own hands to place it on the ground, and even release it in a flaming sphere."]
        ],
        sound_get("codec_zetter3")
    ],
    [
        319,
        1,
        "forza",
        [
            [1,"I heard rumors of what he did to Merchant Port. Do you think we have time to warn him about Loxodont?"]
        ],
        sound_get("codec_zetter4")
    ],
    [
        262,
        2,
        "forza",
        [
            [1,"Once you're done using your fists, then, maybe we'll have time."]
        ],
        sound_get("codec_zetter5")
    ]

    ];
subj++;

subjects[subj] = CH_ORCANE;
codec_panels[subj] = [
        [
            249,
            2,
            "forza",
            [[1,"Be careful Penny! It seems Merchant Port isn't very happy with you."]],
            sound_get("codec_orcane1")
        ],
        [
            338,
            1,
            "forza",
            [[1,"What did I do? If anything, why did they send this… THING to get me?"]],
            sound_get("codec_orcane2")
        ],
        [
            564,
            2,
            "forza",
            [
                [1,"That THING is named Orcane. He's known as the Puddle Jumper."],
                [278,"He's been known to be quite the playful trickster, however, he's also got a criminal record."]
            ],
            sound_get("codec_orcane3")
        ],
        [
            171,
            1,
            "forza",
            [
                [1,"Oh, well, now I'm not holding back!"]
            ],
            sound_get("codec_orcane4")
        ],
        [
            1078,
            2,
            "forza",
            [
                [1,"It would be best if you didn't."],
                [124,"You see, Orcane has the ability to produce puddles that he can control from anywhere on the stage."],
                [437,"He can even use the puddle while he's knocked out."],
                [581,"However, you should stay away from it as much as possible."],
                [763,"He can teleport to it, make it evaporate into bubbles, and even make his attacks stronger."]
            ],
            sound_get("codec_orcane5")
        ],
        [
            186,
            1,
            "forza",
            [
                [1,"Heard you loud and clear, time to brick this dolphin!"]
            ],
            sound_get("codec_orcane6")
        ]
    ];
subj++;

subjects[subj] = CH_WRASTOR;
codec_panels[subj] = [
        [
            136,
            1,
            "forza",
            [[1,"Hey Forza, look, it's Wrastor!"]],
            sound_get("codec_wrastor1")
        ],
        [
            563,
            2,
            "forza",
            [
                [1,"Good eye, Penny! That's The Wind's Fury. Wrastor has been known to be a fierce and unpredictable fighter."],
                [372,"Even his superiors know him more for his arrogance than his results."]
            ],
            sound_get("codec_wrastor2")
        ],
        [
            161,
            1,
            "forza",
            [
                [1,"He looks pretty nimble, judging by his form."]
            ],
            sound_get("codec_wrastor3")
        ],
        [
            1205,
            2,
            "forza",
            [
                [1,"Wrastor's quite speedy, especially when he creates a gust of wind with his wings."],
                [263,"It allows him to travel at quite far distances."],
                [456,"Oh, I just found an interesting detail! The Air Armada uses codenames, much like planes and trains in our time..."],
                [896,"and soldiers get their own codenames for flight charting."],
                [1069,"It seems Wrastor's codename is Windows."]
            ],
            sound_get("codec_wrastor4")
        ],
        [
            279,
            1,
            "forza",
            [
                [1,"Thanks for the little detail, I'll be sure to keep an ear out for any callouts under that name."]
            ],
            sound_get("codec_wrastor5")
        ]
    ];
subj++;

subjects[subj] = CH_KRAGG;
codec_panels[subj] = [
        [
            177,
            1,
            "forza",
            [[1,"Hey Forza, I got a rough looking beetle over here..."]],
            sound_get("codec_kragg1")
        ],
        [
            852,
            2,
            "forza",
            [
                [1,"That looks to be Kragg. Kragg is the defender of the Aetherian Forest."],
                [265,"Part of a group known as the Wall Runners, who patrol the wall daily."],
                [459,"Their job is to keep that wall from breaking, otherwise, the forest will begin to corrupt the land of Aether."]
            ],
            sound_get("codec_kragg2")
        ],
        [
            359,
            1,
            "forza",
            [
                [1,"How could a big being like him be a runner? He looks more like a jogger to me."]
            ],
            sound_get("codec_kragg3")
        ],
        [
            340,
            2,
            "forza",
            [
                [1,"Wall Runners are made up of creatures, who can curl themselves into balls"],
                [203,"and traverse the ground at high speeds."]
            ],
            sound_get("codec_kragg4")
        ],
        [
            865,
            2,
            "forza",
            [
                [1,"The only difference between the other wall runners and Kragg, is that, Kragg can manipulate the Earth beneath him."],
                [324,"Creating rocks he can toss, pillars to stand on, and even jagged spikes of rock. Trust me when I say, this match will not be FAIR."]
            ],
            sound_get("codec_kragg5")
        ]
    ];
subj++;

subjects[subj] = CH_FORSBURN;
codec_panels[subj] = [
        [
            176,
            1,
            "forza",
            [[1,"Forza, tell me what you know about Forsburn."]],
            sound_get("codec_forsburn1")
        ],
        [
            994,
            2,
            "forza",
            [
                [1,"Forsburn, The Exiled Flame, was the right hand man to his father, The Fire King."],
                [310,"He is the eldest between him and Zetterburn, meaning that if he wasn't exiled, he'd be the next king."],
                [686,"However, he sensed Loxodont's treasonous act coming, and was too late to tell his father."]
            ],
            sound_get("codec_forsburn2")
        ],
        [
            273,
            1,
            "forza",
            [
                [1,"If only he got there sooner... we wouldn't be in the mess we're in now."]
            ],
            sound_get("codec_forsburn3")
        ],
        [
            994,
            2,
            "forza",
            [
                [1,"However, the exile worked in his favor, he joined a group of rebels and mastered the way of smoke."],
                [355,"While he still accepts his bloodline, he has rejected the flame, and is now a skilled assassin."],
                [688, "With the power of smoke, he's able to create illusions and hide himself, so be cautious."]
            ],
            sound_get("codec_forsburn4")
        ],
        [
            46,
            1,
            "forza",
            [
                [1,"Got it."]
            ],
            sound_get("codec_forsburn5")
        ]
    ];
subj++;

subjects[subj] = CH_MAYPUL;
codec_panels[subj] = [
        [
            296,
            1,
            "forza",
            [[1, "Forza, I see a raccoon in front of me, who is that?"]],
            sound_get("codec_maypul1")
        ],
        [
            1277,
            2,
            "forza",
            [
                [1, "That's no raccoon, Penny. That's Maypul, the Sylvan Watcher, and she's actually a black-footed ferret."],
                [428, "Maypul is self-appointed Guardian of the Aetherian Forest, she resides in the canopy with her sister, Mayreed."],
                [843, "Maypul is known as a vigilante, dealing out justice the only way she believes is right, and listening to the trees when trouble brews."]
            ],
            sound_get("codec_maypul2")
        ],
        [
            235,
            1,
            "forza",
            [
                [1,"A vigilante, eh? I think that's enough to warrant an arrest."]
            ],
            sound_get("codec_maypul3")
        ],
        [
            637,
            2,
            "forza",
            [
                [1, "I wouldn't do that if I were you..."],
                [164, "Maypul is one of the few who could convert one of Sylvanos' underlings, Lily, to the light."],
                [495, "She may be more righteous than you think."]
            ],
            sound_get("codec_maypul4")
        ]
    ];
subj++;

subjects[subj] = CH_ABSA;
codec_panels[subj] = [
        [
            300,
            1,
            "forza",
            [[1, "Forza, my fur is starting to stand up a bit, where's the static coming from?"]],
            sound_get("codec_absa1")
        ],
        [
            786,
            2,
            "forza",
            [
                [1, "That would be from your opponent, Absa, The Storm Architect. Absa is a famous engineer of the Air Alliance."],
                [412, "While she can't fly, she has the distinct ability to control clouds, and even harness the power of electricity."]
            ],
            sound_get("codec_absa2")
        ],
        [
            236,
            1,
            "forza",
            [
                [1,"Air Alliance? Was this before the Air Armada?"]
            ],
            sound_get("codec_absa3")
        ],
        [
            123,
            2,
            "forza",
            [
                [1, "Well... sort of."]
            ],
            sound_get("codec_absa4")
        ],
        [
            706,
            2,
            "forza",
            [
                [1, "The Air Armada is a branch of the Air Alliance."],
                [167, "They're made of winged citizens, while the Air Alliance, is for the souls who can't fly."],
                [458, "While they are connected, the Air Alliance believes in law and wisdom."]
            ],
            sound_get("codec_absa5")
        ],
        [
            203,
            1,
            "forza",
            [
                [1, "Law and wisdom? Why is she fighting me then?"]
            ],
            sound_get("codec_absa6")
        ],
        [
            314,
            2,
            "forza",
            [
                [1, "Well, it's been rumored that she practiced fighting in secrecy, maybe it's a sparring match?"]
            ],
            sound_get("codec_absa7")
        ],
        [
            261,
            1,
            "forza",
            [
                [1, "Suuure... this TOTALLY seems like training."]
            ],
            sound_get("codec_absa8")
        ]
    ];
subj++;


subjects[subj] = CH_ETALUS;
codec_panels[subj] = [
        [
            151,
            1,
            "forza",
            [[1,"Hey Forza, what's with the ICEE bear?"]],
            sound_get("codec_etalus1")
        ],
        [
            776,
            2,
            "forza",
            [
                [1,"That's Etalus, The Glacier's Might, he's a legendary warrior from the Ice Barrens."],
                [321,"However, he's one of the last of the guards there, The Harbor Guard."],
                [554,"He used to work in a group, but now, he's working on his own."]
            ],
            sound_get("codec_etalus2")
        ],
        [
            280,
            1,
            "forza",
            [
                [1,"Last of the Harbor Guard? Well, it's quite an honor to fight him."]
            ],
            sound_get("codec_etalus3")
        ],
        [
            674,
            2,
            "forza",
            [
                [1,"I wouldn't get... too excited."],
                [169,"Etalus has the ability to control ice."],
                [325, "He can summon it with a simple roar, create armor with it, and his breath is cold enough to freeze any surface."]
            ],
            sound_get("codec_etalus4")
        ],
        [
            448,
            2,
            "forza",
            [
                [1,"If he has enough force, he can even use ice to freeze you in place."],
                [213, "Try to prevent him from making any ice, it'll secure your victory."]
            ],
            sound_get("codec_etalus5")
        ],
        [
            83,
            1,
            "forza",
            [
                [1,"ROGER that."]
            ],
            sound_get("codec_etalus6")
        ]
    ];
subj++;
//Ori
subjects[subj] = CH_ORI;
codec_panels[subj] = [
        [
            221,
            1,
            "forza",
            [[1,"Awww... I don't know if I want to fight this one, Forza!"]],
            sound_get("codec_ori1")
        ],
        [
            757,
            2,
            "forza",
            [
                [1,"That appears to be Ori, the Spirit Guardian, he's from another dimension who somehow made his way in ours."],
                [363,"Alongside him is a being of light called Sein."],
                [525,"Together, they restored light in their dimension, and saved hundreds."]
            ],
            sound_get("codec_ori2")
        ],
        [
            258,
            1,
            "forza",
            [[1,"The little guy is a hero? Definitely don't want to fight him anymore..."]],
            sound_get("codec_ori3")
        ],
        [
            312,
            2,
            "forza",
            [
                [1,"Ori's quite fast, able to dodge and weave through attacks with ease"],
                [220,"and can even fight in tandem with-"]
            ],
            sound_get("codec_ori4")
        ],
        [
            76,
            1,
            "forza",
            [[1,"Hey Forza?"]],
            sound_get("codec_ori5")
        ],
        [
            41,
            2,
            "forza",
            [[1,"Yes?"]],
            sound_get("codec_ori6")
        ],
        [
            103,
            1,
            "forza",
            [[1,"Can we keep hiiiiim?"]],
            sound_get("codec_ori7")
        ],
        [
            40,
            0,
            "forza",
            [[1,"..."]],
            -1
        ],
        [
            46,
            1,
            "forza",
            [[1,"No."]],
            sound_get("codec_ori8")
        ]
    ];
subj++;
//Ranno
subjects[subj] = CH_RANNO;
codec_panels[subj] = [
        [
            235,
            1,
            "forza",
            [[1,"Forza, I'm seeing a monk in front of me, who are they?"]],
            sound_get("codec_ranno1")
        ],
        [
            390,
            2,
            "forza",
            [
                [1,"That would be Ranno, The Poisonous Pacifist, and"],
                [190,"The orbs floating around him are toxic liquids that can control at-will."]
            ],
            sound_get("codec_ranno2")
        ],
        [
            452,
            2,
            "forza",
            [
                [1,"He originates in a swampy part of Aether, he's been trained by wise monks"],
                [220,"and now actively seeks to maintain water quality for all of Aether."]
            ],
            sound_get("codec_ranno3")
        ],
        [
            235,
            1,
            "forza",
            [[1,"A pacifist? Why does it look like this frog is ready to fight?"]],
            sound_get("codec_ranno4")
        ],
        [
            793,
            2,
            "forza",
            [
                [1,"While he is a pacifist, he'll do what he must if the task calls for it, even if it's beating the heck out of you."],
                [390,"Try your best not to get hit with his poison, because the more you have on you, the longer it will take to escape his toxic bubble."]
            ],
            sound_get("codec_ranno5")
        ],
        [
            49,
            1,
            "forza",
            [[1,"Noted."]],
            sound_get("codec_ranno6")
        ]
    ];
subj++;
//Clairen
subjects[subj] = CH_CLAIREN;
codec_panels[subj] = [
        [
            215,
            1,
            "forza",
            [[1,"I-It can't be. I thought the time machine failed!"]],
            sound_get("codec_clairen1")
        ],
        [
            464,
            2,
            "forza",
            [
                [1,"No, The Flame's Salvation is still alive, there's no doubt about it!"],
                [293,"I'm sure you know quite a bit about Clairen, don't you Penny?"]
            ],
            sound_get("codec_clairen2")
        ],
        [
            508,
            1,
            "forza",
            [
                [1,"..."],
                [58,"Yes, she used to be part of the Imperial Guard. She has the distinct ability to control Plasma AND control the flame."]
            ],
            sound_get("codec_clairen3")
        ],
        [
            540,
            1,
            "forza",
            [
                [1,"Since most people in our time can't control their flame, her blade is an official weapon used by the army to make up for it."],
                [428,"It's known for the stun at the tip."]
            ],
            sound_get("codec_clairen3_p2")
        ],
        [
            501,
            2,
            "forza",
            [
                [1,"Don't forget about her plasma field, it can destroy projectiles, making it hard for your Kinetic Burst to go through."],
                [393,"You're going to have to play around it."]
            ],
            sound_get("codec_clairen4")
        ],
        [
            203,
            1,
            "forza",
            [
                [1,"Ugh..."],
                [66,"I always hated the No Fun Zone."]
            ],
            sound_get("codec_clairen5")
        ],
        [
            55,
            2,
            "forza",
            [
                [1,"Best of luck!"]
            ],
            sound_get("codec_clairen6")
        ]
    ];
subj++;
//Sylvanos
subjects[subj] = CH_SYLVANOS;
codec_panels[subj] = [
        [
            155,
            1,
            "forza",
            [[1,"I thought Sylvanos was just a myth..."]],
            sound_get("codec_sylv1")
        ],
        [
            668,
            2,
            "forza",
            [
                [1,"You couldn't be further from the truth, Penny."],
                [138,"Some think that the Heart of The Forest is a myth passed down to explain why the wall exists."],
                [443,"However, many don't consider it to be true in our time anymore."]
            ],
            sound_get("codec_sylv2")
        ],
        [
            491,
            2,
            "forza",
            [
                [1,"During the early years of Aether..."],
                [116,"a large war broke out between the Firelands and the Aetherian Forest..."],
                [330,"and it caused the Heart of The Forest to grow restless."]
            ],
            sound_get("codec_sylv3")
        ],
        [
            239,
            1,
            "forza",
            [[1,"So they had to build a hulking monster of a wall just to keep him contained?"]],
            sound_get("codec_sylv4")
        ],
        [
            770,
            2,
            "forza",
            [
                [1,"Yup, Sylvanos has quite the range, with his vine whip attacks and seed bombs."],
                [305,"Even while running, grass grows under Sylvanos, further proving that he is the forest incarnate."],
                [685,"Please be safe."]
            ],
            sound_get("codec_sylv5")
        ],
        [
            83,
            1,
            "forza",
            [[1,"No promises..."]],
            sound_get("codec_sylv6")
        ]
    ];
subj++;
//Snek Mech
subjects[subj] = CH_ELLIANA;
codec_panels[subj] = [
        [
            331,
            2,
            "forza",
            [[1,"The Aerial Arsenal, Elliana, can't believe I'm seeing her with my own eyes."]],
            sound_get("codec_elliana1")
        ],
        [
            226,
            1,
            "forza",
            [[1,"You're telling me? I'm face to face with the snake!"]],
            sound_get("codec_elliana2")
        ],
        [
            821,
            2,
            "forza",
            [
                [1,"Elliana used to dream of flying and joining the Air Armada..."],
                [219,"but after being rejected, she turned to an engineer to construct her machine."],
                [469,"However, she never told the engineer her entire plan."],
                [677,"She was going to destroy the Air Armada."]
            ],
            sound_get("codec_elliana3")
        ],
        [
            438,
            1,
            "forza",
            [
                [1,"Her mech doesn't look too stable..."],
                [119,"especially with the technology they had back then."],
                [300,"It almost looks like a ticking time bomb."]
            ],
            sound_get("codec_elliana4")
        ],
        [
            386,
            2,
            "forza",
            [
                [1,"Her mech isn't exactly the most efficient way of flying, it can get overheated quickly."],
                [278,"Try using that to your advantage!"]
            ],
            sound_get("codec_elliana5")
        ],
        [
            226,
            1,
            "forza",
            [
                [1,"Will do!"],
                [63,"..."],
                [119,"Hey, Forza?"]
            ],
            sound_get("codec_elliana6")
        ],
        [
            51,
            2,
            "forza",
            [[1,"Yes, Penny?"]],
            sound_get("codec_elliana7")
        ],
        [
            104,
            1,
            "forza",
            [[1,"Do you think the mech has a name?"]],
            sound_get("codec_elliana8")
        ],
        [
            341,
            2,
            "forza",
            [
                [1,"Hm..."],
                [58,"..."],
                [90,"Probably not."],
                [163, "but I'd wager a guess and say it's probably Sparx."]
            ],
            sound_get("codec_elliana9")
        ]
    ];
subj++;
//Shovel Knight
subjects[subj] = CH_SHOVEL_KNIGHT;
codec_panels[subj] = [
        [
            234,
            1,
            "forza",
            [[1,"Forza, I'm seeing a knight wielding a... shovel?"]],
            sound_get("codec_shovel1")
        ],
        [
            716,
            2,
            "forza",
            [
                [1,"NO WAY! That's the legendary hero!"],
                [183,"The Shovel of Hope!"],
                [283,"Shovel Knight!"],
                [343,"He's done plenty of spectacular deeds!"],
                [490,"Like saving his world and his lover from the clutches of darkness."]
            ],
            sound_get("codec_shovel2")
        ],
        [
            373,
            1,
            "forza",
            [
                [1,"Sounds like one heck of a hero!"],
                [140,"But one question..."],
                [280,"Why... the shovel?"]
            ],
            sound_get("codec_shovel3")
        ],
        [
            447,
            2,
            "forza",
            [
                [1,"While it isn't the most conventional weapon..."],
                [133,"his arsenal is wide with a series of gadgets."],
                [291,"Most of which he gets from doing business with Chester."]
            ],
            sound_get("codec_shovel4")
        ],
        [
            49,
            1,
            "forza",
            [[1,"Chester?"]],
            sound_get("codec_shovel5")
        ],
        [
            357,
            2,
            "forza",
            [
                [1,"It's a man who lives inside of a blue treasure chest."],
                [163,"Shovel Knight apparently carries him around for just this sort of situation."]
            ],
            sound_get("codec_shovel6")
        ],
        [
            356,
            1,
            "forza",
            [
                [1,"That's..."],
                [60,"concerning."],
                [163, "Regardless, I think this will be one difficult match."]
            ],
            sound_get("codec_shovel7")
        ]
    ];
subj++;


#define workshop_codecs
var subj = 16;
//DITTO LINE TIME WOO YEAH
//pubby,
subjects[subj] = "2005036466";
codec_panels[subj] = [
        [
            273,
            2,
            "forza",
            [
                [1,"That's Penny, she's a fistfighter fr-"],
                [185, "Wait, hang on...."]
            ],
            sound_get("codec_penny1")
        ],
        [
            117,
            1,
            "forza",
            [[1,"Forza, my head hurts..."]],
            sound_get("codec_penny2")
        ],
        [
            414,
            2,
            "forza",
            [
                [1,"I'd heard rumors that Loxodont was experimenting with cloning technology..."],
                [248,"but I never thought it would actually work."]
            ],
            sound_get("codec_penny3")
        ],
        [
            288,
            1,
            "forza",
            [
                [1,"If you define working as making sub-standard trash copies..."],
                [179,"then yeah, I guess it works..."]
            ],
            sound_get("codec_penny4")
        ],
        [
            978,
            1,
            "forza",
            [
                [1,"I mean, look at her!"],
                [127,"She's already completely off!"],
                [233,"Her gaze is all over the place..."],
                [343,"she's not focused..."],
                [413,"her balance is all wrong..."],
                [542,"I could knock her over with a pail of water!"],
                [697,"What an amateur."],
                [800,"I'm almost ashamed to have the same face as this fraud."],
            ],
            sound_get("codec_penny5")
        ],
        [
            294,
            1,
            "forza",
            [
                [1,"No need for advice this time, Forza..."],
                [160,"she's not even good enough to be my fake."]
            ],
            sound_get("codec_penny6")
        ]
    ];
subj++;

//astra
subjects[subj] = "1904437331";
codec_panels[subj] = [
        [
            186,
            2,
            "forza",
            [[1,"Hey Penny, what do you see in your future?"]],
            sound_get("codec_astra1")
        ],
        [
            283,
            1,
            "forza",
            [
                [1,"I see you!"],
                [79,"But that's about it, why do you ask?"]
            ],
            sound_get("codec_astra2")
        ],
        [
            1037,
            2,
            "forza",
            [
                [1,"W-"],
                [58,"W-Well um... I uh..."],
                [206,"Ha ha..."],
                [270,"(clears throat)"],
                [347,"(sighs)"],
                [423,"Reason I asked is because it seems you're fighting Astra, The Nova Visionary."],
                [696,"Much like Absa, Astra comes from the Archai Mountains, but her sights were set for the stars."]
            ],
            sound_get("codec_astra3")
        ],
        [
            614,
            2,
            "forza",
            [
                [1,"She's an astrologist who can also predict the future."],
                [176,"She uses Tarot Cards, each one being enhanced through the power of the cosmos..."],
                [450,"allowing her to cast spells and set traps."]
            ],
            sound_get("codec_astra4")
        ],
        [
            312,
            1,
            "forza",
            [
                [1,"Interesting..."],
                [113,"wonder if she'll be willing to give a fair prediction if I kick her butt..."]
            ],
            sound_get("codec_astra5")
        ],
        [
            403,
            2,
            "forza",
            [
                [1,"It might be hard since she prefers fighting from a distance."],
                [223,"Maybe if you close the gap you could ask her?"]
            ],
            sound_get("codec_astra6")
        ]
    ];
subj++;

//Pomme
subjects[subj] = "1913517643";
codec_panels[subj] = [
        [
            212,
            2,
            "forza",
            [
                [1,"!!!"],
                [86,"NO WAY!"],
                [212,"IT'S POMME!"]
            ],
            sound_get("codec_pomme1")
        ],
        [
            387,
            1,
            "forza",
            [
                [1,"Hey, um, Forza?"],
                [128,"Try not to get starstruck. I have a battle to win..."],
                [333,"remember?"]
            ],
            sound_get("codec_pomme2")
        ],
        [
            560,
            2,
            "forza",
            [
                [1,"Of course."],
                [70,"Pomme is known as the superstar songstress."],
                [246,"She's known for her pop hits, her amazing voice..."],
                [459,"and her temper..."]
            ],
            sound_get("codec_pomme3")
        ],
        [
            445,
            2,
            "forza",
            [
                [1,"While elemental powers aren't very frequent in our timeline..."],
                [213,"Pomme has the ability to control soundwaves and use them to her advantage."]
            ],
            sound_get("codec_pomme4")
        ],
        [
            242,
            1,
            "forza",
            [
                [1,"Huh, so a celebrity who uses her talents like a weapon?"]
            ],
            sound_get("codec_pomme5")
        ],
        [
            201,
            2,
            "forza",
            [
                [1,"I guess you could say that her words can be sharp like daggers."]
            ],
            sound_get("codec_pomme6")
        ],
        [
            91,
            2,
            "forza",
            [
                [1,"Oh, and Penny?"]
            ],
            sound_get("codec_pomme7")
        ],
        [
            291,
            1,
            "forza",
            [
                [1,"Yes?"]
            ],
            sound_get("codec_pomme8")
        ],
        [
            183,
            2,
            "forza",
            [
                [1,"Do..."],
                [50,"you think you can get her autograph for me?"]
            ],
            sound_get("codec_pomme9")
        ],
        [
            266,
            1,
            "forza",
            [
                [1,"I don't think she'll be willing to give it out-"],
                [168,"If this really is a fight."]
            ],
            sound_get("codec_pomme10")
        ],
        [
            133,
            1,
            "forza",
            [
                [1,"Ah..."],
                [83,"Shame..."]
            ],
            sound_get("codec_pomme11")
        ]
    ];
subj++;

//Epinel
subjects[subj] = "1968068304";
codec_panels[subj] = [
        [
            345,
            1,
            "forza",
            [
                [1,"I'm seeing somebody in broken chains, looks like he's got a bit restless-"],
                [286,"Is he a criminal?"]
            ],
            sound_get("codec_epinal1")
        ],
        [
            510,
            2,
            "forza",
            [
                [1,"I uh..."],
                [110, "hm..."],
                [203,"I don't have any background to go off of."],
                [336,"However, I do have information on how he fights."]
            ],
            sound_get("codec_epinal2")
        ],
        [
            318,
            2,
            "forza",
            [
                [1,"The being in front of you is Epinel-"],
                [123,"and it's probably because he wants to go back to sleep."]
            ],
            sound_get("codec_epinal3")
        ],
        [
            497,
            2,
            "forza",
            [
                [1,"Epinel is a very interesting case..."],
                [126,"I have witnesses who all say that he has the ability to manipulate inertia around him."],
                [380,"Meaning he can mess with physics."]
            ],
            sound_get("codec_epinal4")
        ],
        [
            577,
            2,
            "forza",
            [
                [1,"Despite how heavy he looks, when in the air, he can actually float around easily."],
                [273,"Not to mention, he can turn the ground into floating platforms."],
                [486, "Perfect for transportation."]
            ],
            sound_get("codec_epinal5")
        ],
        [
            109,
            1,
            "forza",
            [
                [1,"I wonder if that's something I could do..."]
            ],
            sound_get("codec_epinal6")
        ],
        [
            170,
            2,
            "forza",
            [
                [1,"I..."],
                [73,"wouldn't count on it."]
            ],
            sound_get("codec_epinal7")
        ]
    ];
subj++;

//olympia
subjects[subj] = "1943759600";
codec_panels[subj] = [
        [
            358,
            1,
            "forza",
            [
                [1,"NO WAY!"],
                [117,"Olympia?!"],
                [213,"I didn't know I was getting the chance to fight her!"]
            ],
            sound_get("codec_olympia1")
        ],
        [
            147,
            2,
            "forza",
            [
                [1,"Wait, THE Amethyst Fist?!"]
            ],
            sound_get("codec_olympia2")
        ],
        [
            398,
            1,
            "forza",
            [
                [1,"Sure looks like it."],
                [93,"Quick!"],
                [153,"I need any info you have on her! I need a strategy to beat her."]
            ],
            sound_get("codec_olympia3")
        ],
        [
            412,
            2,
            "forza",
            [
                [1,"Right!"],
                [53,"Olympia comes from humble beginnings in a town called Pezzottaite. It's quite secluded from the rest of the world."]
            ],
            sound_get("codec_olympia4")
        ],
        [
            398,
            2,
            "forza",
            [
                [1,"After training for years..."],
                [93,"never taking a loss, she was eventually sent out to show the power of her people to the world."]
            ],
            sound_get("codec_olympia5")
        ],
        [
            582,
            2,
            "forza",
            [
                [1,"Olympia's true strength comes in the form of her gems..."],
                [176,"which she uses as gauntlets, and can be remotely controlled if she so chooses."],
                [450,"Her punches are flashy and brutal."]
            ],
            sound_get("codec_olympia6")
        ],
        [
            451,
            2,
            "forza",
            [
                [1,"In fact, you can tell the age of her people by looking at their gauntlets."],
                [238,"Older users tend to have crystals that may reach up to their shoulders."]
            ],
            sound_get("codec_olympia7")
        ],
        [
            291,
            1,
            "forza",
            [
                [1,"Impressive!"],
                [238,"D-Do you think my arm will be safe from her blows?"]
            ],
            sound_get("codec_olympia8")
        ],
        [
            394,
            1,
            "forza",
            [
                [1,"If you play defensively, yes."],
                [133,"But knowing you..."],
                [253,"I'll get started on a new model now."]
            ],
            sound_get("codec_olympia9")
        ]
    ];
subj++;

//Mollo
subjects[subj] = "1871989159";
codec_panels[subj] = [
        [
            265,
            1,
            "forza",
            [
              [1,"Forza, are you seriously telling me I have to fight Mollo? Again?"]
            ],
            sound_get("codec_mollo1")
        ],
        [
            244,
            2,
            "forza",
            [
                [1,"Yes, yes I am."],
                [126,"What's the matter?"]
            ],
            sound_get("codec_mollo2")
        ],
        [
            579,
            1,
            "forza",
            [
              [1,"Well, with the homemade bombs he uses..."],
              [180, "His stupid flare gun..."],
              [276, "I don't think I'll get an opening."],
              [390, "I guess you could say..."],
              [460, "He's just..."],
              [530, "Bugging me?"]
            ],
            sound_get("codec_mollo3")
        ],

        [
          503,
          2,
          "forza",
          [
            [1, "Well, with Clairen gone,"],
            [96, "him and rioters needed something to catch the attention of Loxodont."],
            [303, "Besides, they needed something to destroy the Loxobots."]
          ],
          sound_get("codec_mollo4")
        ],

        [
          146,
          1,
          "forza",
          [
            [1, "Point taken."],
            [86, "Any advice?"]
          ],
          sound_get("codec_mollo5")
        ],

        [
          687,
          2,
          "forza",
          [
            [1, "Just fight fire with fire."],
            [123, "You can smack Mollo's bombs back at him-"],
            [263, "with the exception of his basebombs."],
            [396, "Just be careful if he uses another bomb or his gun to detonate stronger ones."]
          ],
          sound_get("codec_mollo6")
        ]
    ];
subj++;

//Kris
subjects[subj] = "1867608473";
codec_panels[subj] = [
        [
            160,
            1,
            "forza",
            [
              [1,"Why is this kid blue?"],
            ],
            sound_get("codec_kris1")
        ],
        [
            645,
            2,
            "forza",
            [
                [1,"That's because they're from the Dark World."],
                [126, "That kid's name is Kris, they're one of the legendary lightners."],
                [361,"Their party is meant to maintain balance between our world and the world of dark."]
            ],
            sound_get("codec_kris2")
        ],
        [
            236,
            1,
            "forza",
            [
                [1,"A protector of balance?"],
                [100, "Why would they hand a kid such power?"]
            ],
            sound_get("codec_kris3")
        ],
        [
            902,
            2,
            "forza",
            [
                [1,"Honestly, I don't know, but they seem to manage just fine."],
                [226, "When in combat, Kris has access to Tension Points, or TP for short."],
                [514,"They can spend TP to use spells, like ranged projectiles or making themselves heavier."]
            ],
            sound_get("codec_kris4")
        ],
        [
            263,
            1,
            "forza",
            [
                [1,"A swordsman and a magician?"],
                [126, "That's quite the combination."]
            ],
            sound_get("codec_kris5")
        ],
        [
            411,
            2,
            "forza",
            [
                [1,"It's best to parry their attacks or make sure they can't even hit you."],
                [231, "Do that and you'll have this match in the bag!"]
            ],
            sound_get("codec_kris6")
        ]
    ];
subj++;

//Valk
subjects[subj] = 1917713379;
codec_panels[subj] = [
        [
            496,
            1,
            "forza",
            [
              [1,"Forza, there's a big walrus in front of me."],
              [242, "Her smug aura is really starting to tick me off."]
            ],
            sound_get("codec_valk1")
        ],
        [
            221,
            2,
            "forza",
            [
                [1,"That would be Valkyrie."],
                [88,"She's known as the Large Medium."]
            ],
            sound_get("codec_valk2")
        ],
        [
            306,
            1,
            "forza",
            [
              [1,"Large medium? Sounds like an oxymoron to me."]
            ],
            sound_get("codec_valk3")
        ],
        [
            762,
            2,
            "forza",
            [
              [1, "Actually, it has meaning to it!"],
              [154,"Valkyrie lives in the ice barrens, and helps guide the spirits of the Harbour Guard into the afterlife."],
              [476, "She believes in their ideals, and makes sure that they venture into a peaceful rest."]
            ],
            sound_get("codec_valk4")
        ],
        [
            203,
            1,
            "forza",
            [
              [1,"So, a druid of some kind?"]
            ],
            sound_get("codec_valk5")
        ],
        [
            838,
            2,
            "forza",
            [
              [1,"Pretty much."],
              [53, "However, she can use her powers as a medium to summon weaponry-"],
              [274, "or curse you with a simple touch."],
              [395, "She's got plenty of tools as a medium..."],
              [523, "tools that aren't quite seen anywhere else."],
              [663, "So it's going to be up to you to figure out the best counterplay."]
            ],
            sound_get("codec_valk6")
        ],
        [
            259,
            1,
            "forza",
            [
              [1,"I already think I have a rough idea."],
              [142, "I'll just punch her!"]
            ],
            sound_get("codec_valk7")
        ],
        [
            208,
            2,
            "forza",
            [
              [1,"Good luck..."]
            ],
            sound_get("codec_valk8")
        ]
    ];
subj++;

//R-00
subjects[subj] = "1868240517";
codec_panels[subj] = [
        [
            153,
            1,
            "forza",
            [
              [1,"Forza, what model is this delivery unit?"],
            ],
            sound_get("codec_roo1")
        ],
        [
            405,
            2,
            "forza",
            [
                [1, "I believe..."],
                [80, "That's the rogue prototype, R-00!"],
                [275, "I'm surprised you bumped into them again."]
            ],
            sound_get("codec_roo2")
        ],
        [
            312,
            1,
            "forza",
            [
              [1,"Yeah..."],
              [41, "Not exactly as planned."],
              [151, "I wonder what he's delivering?"]
            ],
            sound_get("codec_roo3")
        ],
        [
            848,
            2,
            "forza",
            [
              [1, "If he's fighting you..."],
              [103,"He might be delivering a beating."],
              [197, "Especially with his powerful thrusters."],
              [329, "It would be in your best interest"],
              [416, "to try and avoid letting R-00 get in an advantageous position."],
              [635, "Because once he has you in his sights,"],
              [747, "he's going to finish you quick."]
            ],
            sound_get("codec_roo4")
        ],
        [
            341,
            1,
            "forza",
            [
              [1,"Tell me about it."],
              [81, "Him and his star..."],
              [173, "don't even get me started on his wall."]
            ],
            sound_get("codec_roo5")
        ],
        [
            198,
            2,
            "forza",
            [
              [1,"Yeah."],
              [47, "R-00 is quite devious..."]
            ],
            sound_get("codec_roo6")
        ]
    ];
subj++;

//Gustav
subjects[subj] = "1892030667";
codec_panels[subj] = [
        [
            248,
            1,
            "forza",
            [
              [1,"Hey, look at that, Forza, a classic musket rifle!"]
            ],
            sound_get("codec_gustav1")
        ],
        [
            132,
            2,
            "forza",
            [
              [1, "Woaahh! Fancy!"]
            ],
            sound_get("codec_gustav2")
        ],
        [
            356,
            2,
            "forza",
            [
              [1,"The soldier wielding that rifle is named Gustav."],
              [160, "Not much information is known about him outside of his musket."]
            ],
            sound_get("codec_gustav3")
        ],
        [
            161,
            1,
            "forza",
            [
              [1, "Perhaps his story isn't exactly well-known."]
            ],
            sound_get("codec_gustav4")
        ],
        [
            585,
            2,
            "forza",
            [
              [1,"The only thing we do know..."],
              [77, "is that he's rigged the weapon in a way that almost acts like he's controlling it."],
              [271, "Gustav can throw his musket, control where it moves, even pull himself towards it."]
            ],
            sound_get("codec_gustav5")
        ],
        [
            161,
            1,
            "forza",
            [
              [1,"He must be one heck of a zoner."]
            ],
            sound_get("codec_gustav6")
        ],
        [
            255,
            2,
            "forza",
            [
              [1,"With that fancy rifle of his, I'd be hard pressed to disagree with you."]
            ],
            sound_get("codec_gustav7")
        ]
    ];
subj++;

//mechlair
subjects[subj] = "1924848558";
codec_panels[subj] = [
        [
            334,
            1,
            "forza",
            [
              [1,"Hey Forza, something's wrong with Clairen..."],
              [201,"Why is her blade reversed?"]
            ],
            sound_get("codec_mechlair1")
        ],
        [
            1076,
            2,
            "forza",
            [
              [1, "That's not the Clairen we know, Penny."],
              [131, "That Clairen is from another timeline."],
              [283, "In her timeline, Loxodont won and there was nobody to help save Clairen."],
              [579, "However, instead of executing her..."],
              [737, "Loxodont found her skills useful"],
              [875, "and decided to make her a cyborg that will fight FOR him."]
            ],
            sound_get("codec_mechlair2")
        ],
        [
            178,
            1,
            "forza",
            [
              [1,"So what did that MONSTER call her then?"]
            ],
            sound_get("codec_mechlair3")
        ],
        [
            549,
            2,
            "forza",
            [
              [1, "He calls her Mechlair."],
              [92, "With the robotic enhancements, she can now use a plasma orb"],
              [318, "that not only hurts the opponent but can also be used for movement."]
            ],
            sound_get("codec_mechlair4")
        ],
        [
            482,
            1,
            "forza",
            [
              [1,"Thank you for the advice."],
              [99, "After I beat this chimera..."],
              [247, "I'm going after Loxodont."],
              [365, "Mark my words."]
            ],
            sound_get("codec_mechlair5")
        ]
    ];
subj++;

//Kyoko, mah GIRL
subjects[subj] = "1869304273";
codec_panels[subj] = [
        [
            335,
            1,
            "forza",
            [
              [1,"Hey, Forza, I uh..."],
              [140, "Don't know if I feel good about beating up a teenage girl."]
            ],
            sound_get("codec_kyoko1")
        ],
        [
            630,
            2,
            "forza",
            [
              [1, "I don't think she feels the same way, unfortunately for you."],
              [233, "That's Kyoko, she's from River City."],
              [418, "Apparently where she's from is just one giant fistfight all the time."]
            ],
            sound_get("codec_kyoko2")
        ],
        [
            114,
            1,
            "forza",
            [
              [1,"Then what is she doing here?"]
            ],
            sound_get("codec_kyoko3")
        ],
        [
            171,
            2,
            "forza",
            [
              [1, "I've heard she's trying to hunt down her boyfriend,"],
              [129, "Riki."]
            ],
            sound_get("codec_kyoko4")
        ],
        [
            253,
            1,
            "forza",
            [
              [1,"Hunt down?"],
              [99, "You mean like..."],
              [165, "Take him out?"]
            ],
            sound_get("codec_kyoko5")
        ],
        [
            224,
            2,
            "forza",
            [
              [1,"Yeah, take him out..."],
              [75, "Maybe to a nice dinner and a movie."]
            ],
            sound_get("codec_kyoko6")
        ],
        [
            142,
            1,
            "forza",
            [
              [1,"I don't think we're on the same page here."]
            ],
            sound_get("codec_kyoko7")
        ],
    ];
subj++;

//riki, my boooooy~
subjects[subj] = "1872745659";
codec_panels[subj] = [
        [
            175,
            1,
            "forza",
            [
              [1,"Hey, Forza, who is this punk?"]
            ],
            sound_get("codec_riki1")
        ],
        [
            502,
            2,
            "forza",
            [
              [1, "That's Riki, a student at Hanazono High School, and a notorious street brawler."],
              [311, "Also, according to Kyoko-"],
              [425, "he's her boyfriend."]
            ],
            sound_get("codec_riki2")
        ],
        [
            111,
            1,
            "forza",
            [
              [1,"According to Kyoko?"]
            ],
            sound_get("codec_riki3")
        ],
        [
            996,
            2,
            "forza",
            [
              [1, "It's a very one-sided relationship."],
              [163, "I don't think he even knows who she is."],
              [288, "Anyway, he's just a street thug-"],
              [429, "but don't underestimate him on the battlefield."],
              [572, "There's a reason he's called Mach Punch Riki."],
              [716, "If he hits you with his comb-"],
              [800, "he'll deliver a flurry of blows-"],
              [903, "faster than your eye can see."]
            ],
            sound_get("codec_riki4")
        ],
        [
            557,
            1,
            "forza",
            [
              [1,"He thinks he can outperform me?"],
              [181, "I'd like to see him try."],
              [314, "Come here, pompadour, let's dance!"]
            ],
            sound_get("codec_riki5")
        ],
        [
            208,
            2,
            "forza",
            [
              [1,"I get the feeling that both of you are going home with a black eye."]
            ],
            sound_get("codec_riki6")
        ]
    ];
subj++;

//Sandbert, the end and the beginning, destroyer of gods, and lover of women, men, and those in between and outside.
subjects[subj] = "1865940669";
codec_panels[subj] = [
        [
            306,
            1,
            "forza",
            [
              [1,"Hey, uh, Forza?"],
              [142, "Why is this sandbag... blinking?"]
            ],
            sound_get("codec_sandbert1")
        ],
        [
            973,
            2,
            "forza",
            [
              [1, "Penny, you have to be careful!"],
              [146, "That's Sandbert."],
              [221, "Sandbert is one of the most powerful fighters in Aether."],
              [431, "Rumors say that he was so strong, even Loxodont wanted his power,"],
              [631, "so he's been cloning Sandbert for years."],
              [830, "However, this one looks like the original."]
            ],
            sound_get("codec_sandbert2")
        ],
        [
            694,
            1,
            "forza",
            [
              [1, "Something doesn't sit right with me."],
              [148, "Why does Sandbert fight?"],
              [273, "Isn't he a..."],
              [354, "you know..."],
              [443, "sandbag?"],
              [549, "Aren't they supposed to stay still?"]
            ],
            sound_get("codec_sandbert3")
        ],
        [
            485,
            2,
            "forza",
            [
              [1, "Actually, he fights to make money for his family."],
              [182, "Despite everything..."],
              [258, "he has a loving wife..."],
              [340, "two kids..."],
              [395, "and even a pet rock."]
            ],
            sound_get("codec_sandbert4")
        ],
        [
            234,
            1,
            "forza",
            [
              [1,"A family man, huh?"],
              [103, "Well, I hope his wife knows how to sew."]
            ],
            sound_get("codec_sandbert5")
        ]
    ];
subj++;

//sans.
subjects[subj] = "1869814191";
codec_panels[subj] = [
        [
            240,
            1,
            "forza",
            [
              [1,"Hey Forza, I got this funny looking skeleton in front of me."]
            ],
            sound_get("codec_sans1")
        ],
        [
            1132,
            2,
            "forza",
            [
              [1, "I'm looking him up, hang on."],
              [105, "..."],
              [138, "Riiight, his name is... sans."],
              [358, "sans the skeleton."],
              [491, "Riiight..."],
              [588, "Well, I've got good news!"],
              [679, "intel reports he's only a threat level of 1."],
              [833, "both in attack and defense."],
              [950, "you might not need to worry."],
              [1050, "He looks like a joke!"]
            ],
            sound_get("codec_sans2")
        ],
        [
            333,
            1,
            "forza",
            [
              [1, "I have a hard time believing that."],
              [130, "He's making my skin crawl with a smile like that..."]
            ],
            sound_get("codec_sans3")
        ],
        [
            173,
            2,
            "forza",
            [
              [1, "I can't imagine what you're talking about."]
            ],
            sound_get("codec_sans4")
        ]
    ];
subj++;


//Trummel and Alto
subjects[subj] = "1933111975";
codec_panels[subj] = [
        [
            271,
            2,
            "forza",
            [
              [1,"Are my eyes deceiving me or..."],
              [173, "can that cloud talk?"]
            ],
            sound_get("codec_woag1")
        ],
        [
            342,
            1,
            "forza",
            [
              [1, "Nope, your eyes are working just fine."],
              [171, "Seems there is a snail riding on top of him too."]
            ],
            sound_get("codec_woag2")
        ],
        [
            785,
            2,
            "forza",
            [
              [1, "Oh!"],
              [60, "That would Trummel and Alto!"],
              [195, "Trummel is a detective who comes from a place known as the Merchant Slums."],
              [418, "While he's more deadpan serious..."],
              [553, "Alto is quite musically gifted, he's been known to play the saxophone."]
            ],
            sound_get("codec_woag3")
        ],
        [
            384,
            1,
            "forza",
            [
              [1, "Wait..."],
              [90, "I just noticed that more clouds are produced when they roll..."],
              [318, "what's up with that?"]
            ],
            sound_get("codec_woag4")
        ],
        [
            753,
            2,
            "forza",
            [
              [1, "That's just Alto's form splitting apart."],
              [140, "He can control them all at-will..."],
              [253, "allowing him to rain on your parade from a distance."],
              [428, "Be careful though..."],
              [500, "If you get hit with his saxophone,"],
              [613, "You're going to hear quite the performance!"]
            ],
            sound_get("codec_woag5")
        ],
        [
            115,
            2,
            "forza",
            [
              [1, "N-Noted..."]
            ],
            sound_get("codec_woag6")
        ]
    ];
subj++;

//LIZ GANG
subjects[subj] = "1917856427";
codec_panels[subj] = [
        [
            296,
            1,
            "forza",
            [
              [1,"Forza, a pink haired girl just jumped out of a portal..."],
              [218, "what's going on here?"]
            ],
            sound_get("codec_liz1")
        ],
        [
            428,
            2,
            "forza",
            [
              [1, "That would be Liz."],
              [101, "She's from another dimension outside of ours..."],
              [251, "she's been sent here to challenge every champion in Aether."]
            ],
            sound_get("codec_liz2")
        ],
        [
            202,
            1,
            "forza",
            [
              [1, "Interesting..."],
              [83, "she doesn't look like a fighter."]
            ],
            sound_get("codec_liz3")
        ],
        [
            1141,
            2,
            "forza",
            [
              [1, "That's because she isn't, she is much more into music."],
              [280, "The reason she's really here is because she ventured into the Amser Forest..."],
              [521, "a place where the rules of time and space are turned on their head."],
              [745, "The only reason anyone would go into the Amser Forest would be to get a wish."],
              [1006, "Her wish is to save her mother."]
            ],
            sound_get("codec_liz4")
        ],
        [
            261,
            1,
            "forza",
            [
              [1, "Oh man..."],
              [120, "I have to let her beat me don't I?"]
            ],
            sound_get("codec_liz5")
        ],
        [
            122,
            2,
            "forza",
            [
              [1, "It would be the right thing to do."]
            ],
            sound_get("codec_liz6")
        ]
    ];
subj++;

//The Baby.
subjects[subj] = "1905208125";
codec_panels[subj] = [
        [
            237,
            1,
            "forza",
            [
              [1,"Forza, I don't know what this thing is but..."],
              [180, "I love her!"]
            ],
            sound_get("codec_hime1")
        ],
        [
            771,
            2,
            "forza",
            [
              [1, "That looks to be a rare species known as homosapien."],
              [177, "he one in front of you, appears to be wielding"],
              [308, "a primitive longbow and a hatchet."],
              [423, "I wouldn't put my guard down if I were you."],
              [555, "It also appears they have a little snake friend."],
              [703, "why don't you ask them for-"]
            ],
            sound_get("codec_hime2")
        ],
        [
            100,
            1,
            "forza",
            [
              [1, "Pspspspspspspsp~!"]
            ],
            sound_get("codec_hime3")
        ],
        [
            129,
            2,
            "forza",
            [
              [1, "What..."],
              [60, "are you doing?"]
            ],
            sound_get("codec_hime4")
        ],
        [
            143,
            1,
            "forza",
            [
              [1, "I'm calling her over!"],
              [80, "Pspspspspspsp~!"]
            ],
            sound_get("codec_hime5")
        ],
        [
            119,
            2,
            "forza",
            [
              [1, "I don't think that's going to work..."]
            ],
            sound_get("codec_hime6")
        ],
        [
            66,
            2,
            "hime",
            [
              [1, "PUPPY!"]
            ],
            sound_get("codec_hime7")
        ]
    ];
subj++;

//AIGIS
subjects[subj] = "1879724331";
codec_panels[subj] = [
        [
            291,
            1,
            "static",
            [
              [1,"Forza, who's this robot lady?"],
              [193, "...and why is she so tall?"]
            ],
            sound_get("codec_aigis1")
        ],
        [
            208,
            2,
            "static",
            [
              [1, "The questions you seek..."],
              [113, "can be answered."]
            ],
            sound_get("codec_aigis2")
        ],
        [
            206,
            1,
            "static",
            [
              [1, "Wait!"],
              [59, "Who are you?!"],
              [133, "Where's Forza?!"]
            ],
            sound_get("codec_aigis3")
        ],
        [
            783,
            2,
            "aigis",
            [
              [1, "I am the Seventh Generation Anti-Shadow Suppression Weapon, Aigis-"],
              [60, "and the person you are trying to reach has been put on hold."],
              [570, "I will be able to answer your questions in his place."]
            ],
            sound_get("codec_aigis4")
        ],
        [
            343,
            1,
            "aigis",
            [
              [1, "Alright… Aigis, what's a Shadow?"],
              [243, "Why are you even here?"]
            ],
            sound_get("codec_aigis5")
        ],
        [
            943,
            2,
            "aigis",
            [
              [1, "A shadow is the lower part of the psyche every being has."],
              [270, "They are suppressed sentient thoughts that are given a physical form."],
              [533, "The creatures that come from..."],
              [626, "what your people call, The Abyss..."],
              [793, "are similar to that of the shadows."]
            ],
            sound_get("codec_aigis6")
        ],
        [
            535,
            2,
            "aigis",
            [
              [1, "However..."],
              [66, "There are some special individuals who have tamed their shadows..."],
              [293, "and with it..."],
              [363, "gain the ability to summon a Persona."]
            ],
            sound_get("codec_aigis7")
        ],
        [
            345,
            1,
            "aigis",
            [
              [1, "Packing quite an encyclopedia..."],
              [139, "How about yourself?"],
              [243, "What's your fighting style like?"]
            ],
            sound_get("codec_aigis8")
        ],
        [
            1289,
            2,
            "aigis",
            [
              [1, "My main combat abilities lie in my Orgia."],
              [215, "By landing attacks on you..."],
              [336, "I may gain Orgia."],
              [460, "Then use it to enhance my next attacks."],
              [616, "As for weaponry..."],
              [723, "I am equipped with a variety of firearms and artillery."],
              [953, "I can also summon my persona..."],
              [1080, "Palladion..."],
              [1150, "to help me deliver strong attacks."],
            ],
            sound_get("codec_aigis9")
        ],
        [
            221,
            1,
            "aigis",
            [
              [1, "Ahh..."],
              [93, "Talk about Mass Destruction..."]
            ],
            sound_get("codec_aigis10")
        ],
        [
            342,
            2,
            "aigis",
            [
              [1, "I see you are also a fan of puns..."],
              [93, "perhaps you'd like to hear pun of mine."]
            ],
            sound_get("codec_aigis11")
        ],
        [
            107,
            2,
            "aigis",
            [
              [1, "I'm so glad we met."]
            ],
            sound_get("codec_aigis12")
        ]
    ];
subj++;
