//For Genesis skin soak

if !abyssEnabled{
	runeA = false;
	runeB = false;
	runeC = false;
	runeD = false;
	runeE = false;
	runeF = false;
	runeG = false;
	runeH = false;
	runeI = false;
	runeJ = false;
	runeK = false;
	runeL = false;
	runeM = false;
	runeN = false;
	runeO = false;
	runeAny = false;
	runesUpdated = false;
}

if (skin == 1){
    if (get_gameplay_time() mod 11 - random_func(player, 11, true) > 8){
        glitchtimer = 10;
    }
    if (has_hat == 1){
    	has_hat = 0;
    }
}


if (glitchtimer > 0){
	glitchtimer--;
}


//Set cloud height

var cloudheight = 230;

if (get_stage_data(SD_Y_POS) == 0 || get_stage_data(SD_Y_POS) == 848){
    if !initiated{
        finalcloudheight = y - cloudheight;
        initiated = true;
    }
    
    if (!initiated2 && place_meeting(x,y+1,asset_get("par_block"))){
        finalcloudheight = y - cloudheight;
        initiated2 = true;
    }
}else if !initiated{
    finalcloudheight = get_stage_data(SD_Y_POS) - cloudheight;
    initiated = true;
}



//Play various cooldown SFX

if (rain_cooldown == cooldown_min) {
    sound_play(sound_get("cooldown_end"));
}

if (rain_cooldown == cooldown_max - 6){
    sound_play(sound_get("cooldown_start"));
}

if (sideways_cooldown_timer == 12){
    sound_play(sound_get("cooldown_click"));
}

if (sideways_cooldown_timer > 0){
    sideways_cooldown_timer--;
}



//Disable specials during cooldown and increment cooldown value

if (rain_cooldown > 0){
    rain_cooldown--;
}

if (rain_cooldown > cooldown_min){
    move_cooldown[AT_DSPECIAL] = 2;
    move_cooldown[AT_FSPECIAL] = 2;
    move_cooldown[AT_NSPECIAL] = 2;
    move_cooldown[AT_USPECIAL] = 2;
}



//Spawn molotov after projectile hits

if shouldspawnmolotov{
    var molotov = instance_create(floor(molotovx), floor(molotovy), "obj_article3");
    molotov.temp_hsp = molotovhsp;
    shouldspawnmolotov = false;
    molotov.hit = molotovhit;
    molotov.target = molotovtarget;
}



//Roll cloud creation

switch(state){
    case PS_ROLL_FORWARD:
    case PS_ROLL_BACKWARD:
        if (state_timer == 0 && cloudcooldown == 0){
            spawnCloud(0);
        }
        break;
    case PS_TECH_FORWARD:
    case PS_TECH_BACKWARD:
        if (state_timer == 1 && cloudcooldown == 0){
            spawnCloud(0);
        }
        break;
}



//Airdodge cloud creation

if ((state == PS_AIR_DODGE && state_timer == 22) || (strongcloudtrigger && !hitpause)){
    window = 0;
    window_timer = 0;
    pratanim = false;
    state = PS_PRATFALL;
    y -= 34;
    vsp = -7;
    spawnCloud(34);
    strongcloudtrigger = false;
    /*if (left_down){
        hsp = -jump_change;
    }
    if (right_down){
        hsp = jump_change;
    }*/
}

if (state != PS_AIR_DODGE && state != PS_PRATLAND && state != PS_PRATFALL){
    pratanim = true;
    nerfedpratfall = false;
}

if pratanim{
    prat_fall_accel = 1;
}else{
    prat_fall_accel = 2;
}



//Reset killclouds

if (killclouds && state != PS_DEAD && state_timer > 1){
    killclouds = false;
}



//Pratfall physics, including early fastfall

if (state != PS_PRATLAND){
    prat_land_time = 16;
}
prat_fall_accel = 2;

if (state == PS_PRATFALL){
    if !pratanim{
    	if (vsp > 10 && vsp < fast_fall - 1){
	        vsp = 10;
	    }
	    if (down_pressed && vsp < 0 && !nerfedpratfall){
	        vsp = 0;
	    }
	    hurtboxID.sprite_index = sprite_get("pratfall_hurt");
    }
    
    if nerfedpratfall{
        hsp = clamp(hsp, -2, 2);
        prat_land_time = 24;
        prat_fall_accel = 0.7;
    }
}



//Fix stupid pratfall-->walljump hurtbox bug :(

if (state == PS_WALL_JUMP){
	hurtboxID.sprite_index = hurtbox_spr;
}



//Restore airdodge if you leave pratfall

if (state != PS_PRATFALL){
    has_airdodge = true;
}



//Passive particles

shouldmakeparticle = false;

switch(state){
    case PS_WALK:
    case PS_DASH:
    case PS_DASH_START:
    case PS_DASH_STOP:
    case PS_AIR_DODGE:
    case PS_WAVELAND:
        shouldmakeparticle = true;
        break;
}

if ((state == PS_FIRST_JUMP || state == PS_DOUBLE_JUMP || state == PS_WALL_JUMP || state == PS_ATTACK_AIR) && state_timer < 10){
    shouldmakeparticle = true;
}

if (state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND){
    switch(attack){
        case AT_DATTACK:
        case AT_DSTRONG:
            shouldmakeparticle = true;
            break;
        case AT_USTRONG:
        case AT_FSTRONG:
            if (window == 1){
                shouldmakeparticle = true;
            }
            break;
        case AT_NSPECIAL:
            if (window < 3){
                shouldmakeparticle = true;
            }
            break;
    }
}

if (get_gameplay_time() mod (particlerate || particlerate2) != 0){
    shouldmakeparticle = false;
}

if (vsp == 0 && hsp == 0){
    shouldmakeparticle = false;
}

if shouldmakeparticle {
    particlex = ((random_func(0, 100, true) - 50) / 2) * spr_dir;
    particley = ((random_func(0, -40, true) - 30) / 2);
    var puff = instance_create(floor(x+particlex), floor(y+particley), "obj_article2");
    puff.source = 1;
}

if shouldmakecloudparticle {
    var puff = instance_create(floor(cloudparticlex), floor(cloudparticley), "obj_article2");
    puff.source = 2;
    shouldmakecloudparticle = false;
}

if shouldmakemolotovparticle {
    var puff = instance_create(floor(molotovparticlex), floor(molotovparticley), "obj_article2");
    puff.source = 3;
    shouldmakemolotovparticle = false;
}

if shouldmakebulletparticle {
    var puff = instance_create(floor(bulletparticlex), floor(bulletparticley), "obj_article2");
    puff.source = 4;
    shouldmakebulletparticle = false;
}



//Handle opponent unsoak stuff, and get codec

with oPlayer{
    if (id != other.id){
        if (other.needscodec || other.practice){
            trummelcodecneeded = true;
            trummelcodec_id = other.id;
            if (trummelcodec != 17){
                if (select - 1 < 15 && select - 1 > 0){
                    trummelcodec = select - 1;
                }
                
                if (url == 1865940669){ //Sandbert
                	trummelcodec = 15;
                }
                
                if (url == 1866016173){ //Guadua
                	trummelcodec = 16;
                }
                
                if (url == 1962084547){
                	trummelcodec = 28; //bird up
                }
            }
            other.externalcodec = trummelcodec;
            other.codec_id = id;
        }
    
        //Dry off in the afterlife
    
        if (state == PS_RESPAWN && !other.godmode){
            soaked = false;
        }
        
        //Dry off in other cases
        
        if (unsoak && !other.godmode){
            soaked = false;
            unsoak = false;
            with(soaked_id){
                sound_play(sound_get("unsoak1"));
                sound_play(sound_get("unsoak2"));
                spawn_hit_fx(other.x, other.y - other.char_height / 2, unsoak_fx);
            }
        }
        
        //Handle first hit dealio
        
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && state_timer = 1){
            soaked_firsthit = true;
        }
    }
}



//Dash taunt; QoL for godmode trigger

switch state{
    case PS_DASH:
    case PS_DASH_START:
    case PS_DASH_TURN:
    case PS_DASH_STOP:
        if taunt_pressed{
            set_attack(AT_TAUNT);
        }
}



//Text box logic

if (godmodeanimtimer > 0){
    godmodeanimtimer--;
}

if codec{
    codectimer++;
    if (textboxframe == 8 || textboxframe == 7){
        switch(codecfile){
            case 0: //Tutorial
                maxcodecindex = 18;
                switch(codecindex){
                    case 0:
                        speaker = 0;
                        storedtext[1] = "Hiya! It's me, Muno, the"
                        storedtext[2] = "developer of Trummel &"
                        storedtext[3] = "Alto. Here's some advice"
                        storedtext[4] = "for playing as them!"
                        break;
                    case 1:
                        storedtext[1] = "First off: recovery. You"
                        storedtext[2] = "might notice USPECIAL's"
                        storedtext[3] = "height gain is a little"
                        storedtext[4] = "bit subpar."
                        break;
                    case 2:
                        storedtext[1] = "Trummel's main recovery"
                        storedtext[2] = "is actually his airdodge!"
                        storedtext[3] = "It has some weird and"
                        storedtext[4] = "special traits."
                        break;
                    case 3:
                        storedtext[1] = "As it has you hop off of"
                        storedtext[2] = "Alto, it causes pratfall."
                        storedtext[3] = "However, it has no other"
                        storedtext[4] = "limit on its use."
                        break;
                    case 4:
                        storedtext[1] = "So you can regain it by"
                        storedtext[2] = "walljumping or getting"
                        storedtext[3] = "hit, just like a regular"
                        storedtext[4] = "recovery move."
                        break;
                    case 5:
                        storedtext[1] = "The main recovery is"
                        storedtext[2] = "jumps x2 -> airdodge ->"
                        storedtext[3] = "walljump -> airdodge."
                        storedtext[4] = "Get the hang of it!"
                        break;
                    case 6:
                        storedtext[1] = "With that taken care of,"
                        storedtext[2] = "I'll talk about Trummel"
                        storedtext[3] = "& Alto's other primary"
                        storedtext[4] = "gimmicks."
                        break;
                    case 7:
                        storedtext[1] = "You must have noticed"
                        storedtext[2] = "the clouds left behind"
                        storedtext[3] = "when you airdodge and"
                        storedtext[4] = "hop off of Alto."
                        break;
                    case 8:
                        storedtext[1] = "You can have up to two"
                        storedtext[2] = "clouds out at a time;"
                        storedtext[3] = "the older cloud has an"
                        storedtext[4] = "arrow above it."
                        break;
                    case 9:
                        storedtext[1] = "Watch out - any hitbox"
                        storedtext[2] = "from an opponent can"
                        storedtext[3] = "stun a cloud for a few"
                        storedtext[4] = "seconds."
                        break;
                    case 10:
                        storedtext[1] = "These clouds mirror two"
                        storedtext[2] = "of your Special Moves:"
                        storedtext[3] = "NSPECIAL (only on hit)"
                        storedtext[4] = "and DSPECIAL."
                        break;
                    case 11:
                        storedtext[1] = "DSPECIAL inflicts the"
                        storedtext[2] = "SOAK status, which a"
                        storedtext[3] = "foe can get rid of by"
                        storedtext[4] = "hitting you twice."
                        break;
                    case 12:
                        storedtext[1] = "A soaked foe will receive"
                        storedtext[2] = "stun after a direct hit"
                        storedtext[3] = "from any Special except"
                        storedtext[4] = "for DSPECIAL."
                        break;
                    case 13:
                        storedtext[1] = "All four Specials share a"
                        storedtext[2] = "short cooldown. Hitting a"
                        storedtext[3] = "soaked foe with a melee"
                        storedtext[4] = "hit ends it early."
                        break;
                    case 14:
                        storedtext[1] = "Besides airdodging, you"
                        storedtext[2] = "make clouds by rolling,"
                        storedtext[3] = "tech-rolling, or with"
                        storedtext[4] = "the other gimmick..."
                        break;
                    case 15:
                        storedtext[1] = "Flying Strong Attacks!"
                        storedtext[2] = "Charge up a Strong and"
                        storedtext[3] = "move the Control Stick"
                        storedtext[4] = "to fly freely."
                        break;
                    case 16:
                        storedtext[1] = "However, after the move"
                        storedtext[2] = "ends, you'll hop off Alto"
                        storedtext[3] = "into pratfall, making"
                        storedtext[4] = "you vulnerable."
                        break;
                    case 17:
                        storedtext[1] = "That's pretty much it!"
                        storedtext[2] = "Put time into mastering"
                        storedtext[3] = "the cloud mechanics and"
                        storedtext[4] = "soak stun combos."
                        break;
                    case 18:
                        storedtext[1] = "If you have further"
                        storedtext[2] = "questions, I'm in the"
                        storedtext[3] = "official RoA Discord."
                        storedtext[4] = "Seeya!"
                        break;
                }
                break;
            case 1: //Zetterburn
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "That's Zetterburn,"
                        storedtext[2] = "The Fire's Roar! He's"
                        storedtext[3] = "been around longer than"
                        storedtext[4] = "his loincloth has."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Zetter is a courageous"
                        storedtext[2] = "battler who wages war"
                        storedtext[3] = "for the Fire Capitol, to"
                        storedtext[4] = "which he is an heir."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...That won't stop Zetter"
                        storedtext[2] = "mains from hiding behind"
                        storedtext[3] = "their fancy DoT fire"
                        storedtext[4] = "effect, though."
                        break;
                    case 3:
                        speaker = 1;
                        storedtext[1] = "Just try to keep a level"
                        storedtext[2] = "head, if you can help it..."
                        storedtext[3] = "those Strongs are really"
                        storedtext[4] = "overpowered."
                        break;
                    case 4:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Hey, be glad it has a time"
                        storedtext[2] = "limit, unlike y'all's Soak"
                        storedtext[3] = "effect. I could've given"
                        storedtext[4] = "you guys one too!"
                        break;
                    case 5:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "Yeah, but we can't even"
                        storedtext[2] = "get hit or they dry off!!"
                        storedtext[3] = "I'll take the timer at"
                        storedtext[4] = "this point, frankly."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Trummel... just don't let"
                        storedtext[2] = "Zetter land a Strong. Try"
                        storedtext[3] = "using our air mobility to"
                        storedtext[4] = "stall out the burn."
                        break;
                }
                break;
            case 2: //Orcane
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "It's Orcane!! Oh, this guy"
                        storedtext[2] = "is the best. His moveset"
                        storedtext[3] = "is so cool and quirky! Fun"
                        storedtext[4] = "to edgeguard, too."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "He's got some tricks up"
                        storedtext[2] = "his sleeve, though. Good"
                        storedtext[3] = "luck trying to keep this"
                        storedtext[4] = "slippery foe soaked."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Come to think of it, how"
                        storedtext[2] = "DO we soak him, actually?"
                        storedtext[3] = "He's made of water to"
                        storedtext[4] = "some extent, right??"
                        break;
                    case 3:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "idk"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 4:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Eh, it's probably not too"
                        storedtext[2] = "relevant. If you DO soak"
                        storedtext[3] = "him, you can try to stun"
                        storedtext[4] = "him as he teleports."
                        break;
                    case 5:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "That way, you'll start a"
                        storedtext[2] = "combo! Plus, you get to"
                        storedtext[3] = "make the foe regret"
                        storedtext[4] = "their life choices."
                        break;
                    case 6:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Top 10 Hardest Reads -"
                        storedtext[2] = "Super Smash Bros."
                        storedtext[3] = "GRSmash"
                        storedtext[4] = "103,475 views"
                        break;
                }
                break;
            case 3: //Wrastor
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "HEY!! This guy's from"
                        storedtext[2] = "the Air Armada! Oh, it's"
                        storedtext[3] = "on. Trummel, this one's"
                        storedtext[4] = "personal..."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "Wrastor's so BROKEN too,"
                        storedtext[2] = "honestly. They literally"
                        storedtext[3] = "JUST nerfed him and he's"
                        storedtext[4] = "STILL busted!! Ugh."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "...We have a small edge,"
                        storedtext[2] = "though; we can actually"
                        storedtext[3] = "outpace him in terms of"
                        storedtext[4] = "vertical air mobility."
                        break;
                    case 3:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Plus, Wrastor is so FULL"
                        storedtext[2] = "OF HIMSELF that he'll"
                        storedtext[3] = "oftentimes overextend"
                        storedtext[4] = "out of arrogance."
                        break;
                    case 4:
                        speaker = 1;
                        expression = 3;
                        storedtext[1] = "If he whiffs a high-"
                        storedtext[2] = "commitment move, we"
                        storedtext[3] = "can totally punish him"
                        storedtext[4] = "however we see fit!"
                        break;
                    case 5:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Have clouds ready to"
                        storedtext[2] = "cover his airspace, or to"
                        storedtext[3] = "punish brash Up Special"
                        storedtext[4] = "or Strong attempts."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "P.S. Watch out for his"
                        storedtext[2] = "added speed while he's"
                        storedtext[3] = "inside Revali's Ga- I"
                        storedtext[4] = "mean, his slipstream!"
                        break;
                }
                break;
            case 4: //Kragg
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "This would be Kragg,"
                        storedtext[2] = "The Earth's Bastion. One"
                        storedtext[3] = "of the Wall Runners, he"
                        storedtext[4] = "can control earth."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "I guess he got bored"
                        storedtext[2] = "of using those powers"
                        storedtext[3] = "for maintenance work"
                        storedtext[4] = "on that wall,"
                        break;
                    case 2:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...so now we get to deal"
                        storedtext[2] = "with his stupid rolling"
                        storedtext[3] = "move in RoA. Just what"
                        storedtext[4] = "the world needed..."
                        break;
                    case 3:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "On the plus side, we do"
                        storedtext[2] = "have an edge: our rain"
                        storedtext[3] = "can break Kragg's pillar!"
                        storedtext[4] = "Sucks to be him."
                        break;
                    case 4:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "It can't break his little"
                        storedtext[2] = "rock, though. No idea"
                        storedtext[3] = "what that's about, but"
                        storedtext[4] = "it's kinda wack."
                        break;
                    case 5:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "That's probably my"
                        storedtext[2] = "fault, but it's pretty"
                        storedtext[3] = "funny and I don't really"
                        storedtext[4] = "care enough to fix it."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "Fair enough!"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                }
                break;
            case 5: //Forsburn
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "This guy's so edgy! He's"
                        storedtext[2] = "got a skull mask on! Love"
                        storedtext[3] = "it. His name's Forsburn,"
                        storedtext[4] = "Zetterburn's brother."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Not a huge fan of this"
                        storedtext[2] = "whole smoke thing, TBH."
                        storedtext[3] = "It's kind of an uncanny"
                        storedtext[4] = "valley for us clouds..."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Forsburn can also clone"
                        storedtext[2] = "himself, which is super"
                        storedtext[3] = "tricky! Watch out for"
                        storedtext[4] = "the remote explosion."
                        break;
                    case 3:
                        speaker = 1;
                        expression = 3;
                        storedtext[1] = "If you've soaked Fors,"
                        storedtext[2] = "his clone won't mirror"
                        storedtext[3] = "the VFX - so you can"
                        storedtext[4] = "tell them apart!"
                        break;
                    case 4:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "For the record, I have"
                        storedtext[2] = "no idea how to code"
                        storedtext[3] = "that to work properly."
                        storedtext[4] = "Totally not a bug tho"
                        break;
                    case 5:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "smh"
                        storedtext[2] = "literally unplayable"
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 6:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "I'm not complaining, to"
                        storedtext[2] = "be quite honest. I'd hate"
                        storedtext[3] = "having to deal with this"
                        storedtext[4] = "stuff legit..."
                        break;
                }
                break;
            case 6: //Maypul; redo. Alto suggests treating Trummel like Lily? lol
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "That's Maypul, Aether's"
                        storedtext[2] = "Guardian of the Forest."
                        storedtext[3] = "She's super in-sync"
                        storedtext[4] = "with the plant life."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Her thing is that she"
                        storedtext[2] = "can mark people with"
                        storedtext[3] = "certain moves, like her"
                        storedtext[4] = "seed and lunge."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Her Strongs will wrap"
                        storedtext[2] = "marked opponents, which"
                        storedtext[3] = "is actually kinda similar"
                        storedtext[4] = "to our soak stun!"
                        break;
                    case 3:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...Kinda makes us seem"
                        storedtext[2] = "underpowered, yea? Her"
                        storedtext[3] = "mark doesn't go away"
                        storedtext[4] = "when she's hit..."
                        break;
                    case 4:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "To be fair, you two are"
                        storedtext[2] = "kinda busted in other"
                        storedtext[3] = "ways, AND you have good"
                        storedtext[4] = "confirms into stun."
                        break;
                    case 5:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "That's true! I guess that"
                        storedtext[2] = "ours is high-effort, but"
                        storedtext[3] = "high-reward. Quite the"
                        storedtext[4] = "interesting MU."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Trummel, the strategy"
                        storedtext[2] = "here is to avoid her"
                        storedtext[3] = "combos and retaliate"
                        storedtext[4] = "by abusing soak stun."
                        break;
                }
                break;
            case 7: //Absa
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "I recognize that cloud"
                        storedtext[2] = "over there, Trummel..."
                        storedtext[3] = "Hey, it's Absa!! Oh man,"
                        storedtext[4] = "us two go way back."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "Absa's the Storm"
                        storedtext[2] = "Architect who built the"
                        storedtext[3] = "defense system at the"
                        storedtext[4] = "Archai Mountains."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "...And she's more than"
                        storedtext[2] = "willing to use those same"
                        storedtext[3] = "stormy powers in RoA to"
                        storedtext[4] = "bring the hurt."
                        break;
                    case 3:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Her clouds are WAY more"
                        storedtext[2] = "powerful than ours are."
                        storedtext[3] = "Don't get near them, if"
                        storedtext[4] = "you can help it."
                        break;
                    case 4:
                        speaker = 1;
                        expression = 3;
                        storedtext[1] = "But if one of OUR clouds"
                        storedtext[2] = "is above Absa when she"
                        storedtext[3] = "channels her cloud, we"
                        storedtext[4] = "can get a free soak!"
                        break;
                    case 5:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Not only that, but her"
                        storedtext[2] = "clouds don't remove the"
                        storedtext[3] = "soak when she hits y'all"
                        storedtext[4] = "with them."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Mhm! I almost feel bad"
                        storedtext[2] = "for Absa here... Oh well,"
                        storedtext[3] = "that's the matchup. Go"
                        storedtext[4] = "ace it, Trummel!"
                        break;
                }
                break;
            case 8: //Etalus
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Woah, look at that big"
                        storedtext[2] = "guy over there! His"
                        storedtext[3] = "name is... Etalus? He is"
                        storedtext[4] = "a giant polar bear."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...That's all I got."
                        storedtext[2] = "Never seen this guy."
                        storedtext[3] = "Lemme look him up on"
                        storedtext[4] = "the RoA website..."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Alright, so apparently"
                        storedtext[2] = "he can put ice on the"
                        storedtext[3] = "ground and then slide"
                        storedtext[4] = "across it... Huh."
                        break;
                    case 3:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "That's right - it's"
                        storedtext[2] = "really infamous for"
                        storedtext[3] = "being an insanely fast"
                        storedtext[4] = "approach tool."
                        break;
                    case 4:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "Wh-- and he can JUMP"
                        storedtext[2] = "CANCEL IT??? That's"
                        storedtext[3] = "dumb. Lucky we're an"
                        storedtext[4] = "air-based character."
                        break;
                    case 5:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Etalus doesn't have a"
                        storedtext[2] = "projectile except for"
                        storedtext[3] = "his falling icicles. Use"
                        storedtext[4] = "platforms for cover."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "Yeah - if we can just"
                        storedtext[2] = "evade this guy's insane"
                        storedtext[3] = "ice zoom thing, we can"
                        storedtext[4] = "totally take this!"
                        break;
                }
                break;
            case 9: //Ori
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "That's Ori from Ori &"
                        storedtext[2] = "the Blind Forest. Ori"
                        storedtext[3] = "is an exceptionally"
                        storedtext[4] = "quick fighter."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Ori doesn't really have"
                        storedtext[2] = "a single gimmick. So it's"
                        storedtext[3] = "kind of hard to sum up"
                        storedtext[4] = "Ori in one tattle."
                        break;
                    case 2:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Have you always been so"
                        storedtext[2] = "anti-pronoun, Alto?"
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 3:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Ori's androgynous, genius."
                        storedtext[2] = "I'm tryna ignore that"
                        storedtext[3] = "whole deal and just give"
                        storedtext[4] = "some fighting tips."
                        break;
                    case 4:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Well all you're doing is"
                        storedtext[2] = "drawing attention to it."
                        storedtext[3] = "Surely you could word"
                        storedtext[4] = "it more elegantly."
                        break;
                    case 5:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Ugh fine. THEY don't have"
                        storedtext[2] = "a single gimmick, so it's"
                        storedtext[3] = "hard to sum THEM up in"
                        storedtext[4] = "one tattle. Happy?"
                        break;
                    case 6:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Yes. Trummel, there's"
                        storedtext[2] = "not a ton that's gonna"
                        storedtext[3] = "catch you off guard"
                        storedtext[4] = "here. Good luck!"
                        break;
                }
                break;
            case 10: //Ranno
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "...Hey, what's this icky"
                        storedtext[2] = "gross green stuff all"
                        storedtext[3] = "over us?? Oh, it's the"
                        storedtext[4] = "frog guy huh?"
                        break;
                    case 1:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Yeah, that's Ranno."
                        storedtext[2] = "He calls himself the"
                        storedtext[3] = "Poisonous Pacifist."
                        storedtext[4] = ""
                        break;
                    case 2:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Those kicks don't seem"
                        storedtext[2] = "very pacifistic to me..."
                        storedtext[3] = "I've got bruises now and"
                        storedtext[4] = "I have no idea how."
                        break;
                    case 3:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "(Reminder: I am a cloud)"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 4:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "ranno literally HOW"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 5:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...Seems like we can get"
                        storedtext[2] = "rid of this by landing"
                        storedtext[3] = "a melee hit on Ranno,"
                        storedtext[4] = "though. Good riddance"
                        break;
                    case 6:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Yep! It also extends the"
                        storedtext[2] = "stun inflicted by his"
                        storedtext[3] = "bubbles. Seems you've"
                        storedtext[4] = "met your match."
                        break;
                }
                break;
            case 11: //Clairen
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "That's Clairen. She claims"
                        storedtext[2] = "to be from the future... "
                        storedtext[3] = "but who knows if she's"
                        storedtext[4] = "actually serious."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "I would advise not"
                        storedtext[2] = "getting tippered by her."
                        storedtext[3] = "Her sword traps the"
                        storedtext[4] = "souls of its victims..."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...in a super annoying"
                        storedtext[2] = "stun effect. Why would"
                        storedtext[3] = "any good character have"
                        storedtext[4] = "something like that??"
                        break;
                    case 3:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "we have it too tho"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 4:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "Yeah, but we've gotta"
                        storedtext[2] = "WORK for it, dangit. DLC"
                        storedtext[3] = "privilege, I swear..."
                        storedtext[4] = ""
                        break;
                    case 5:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...Anyway, try to float"
                        storedtext[2] = "either inside or outside"
                        storedtext[3] = "her tipper range. Use"
                        storedtext[4] = "that air speed here."
                        break;
                    case 6:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Yep! Just watch out for"
                        storedtext[2] = "her 「NO FUN ZONE」. It"
                        storedtext[3] = "kills all projectiles AND"
                        storedtext[4] = "stuns your clouds!"
                        break;
                }
                break;
            case 12: //Sylvanos
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        if(get_stage_data(SD_TOP_BLASTZONE) == 612 && (get_stage_data(SD_WIDTH) == 704 || get_stage_data(SD_WIDTH) == 512)){ //Treetop Lodge (normal and 4p)
                            speaker = 1;
                            expression = 5;
                            storedtext[1] = "It's... Sylvanos??? How"
                            storedtext[2] = "did he get all the way"
                            storedtext[3] = "up here? We better"
                            storedtext[4] = "warn Mayreed, huh."
                        }
                        else if(get_stage_data(SD_TOP_BLASTZONE) == 580 && get_stage_data(SD_WIDTH) == 768){ //Rock Wall
                            speaker = 1;
                            expression = 5;
                            storedtext[1] = "It's... Sylvanos??? How"
                            storedtext[2] = "did he get on top of the"
                            storedtext[3] = "Rock Wall? We've got to"
                            storedtext[4] = "stop him, Trum."
                        }
                        else if(get_stage_data(SD_WIDTH) == 704 || get_stage_data(SD_WIDTH) == 896){ //Forest Floor (normal and 4p)
                            speaker = 1;
                            expression = 5;
                            storedtext[1] = "Trummel - it's Sylvanos!"
                            storedtext[2] = "Shoulda known he'd be"
                            storedtext[3] = "here... well, we better"
                            storedtext[4] = "fend for ourselves."
                        }
                        else{ //Any other stage
                            speaker = 1;
                            expression = 5;
                            storedtext[1] = "SYLVANOS?? How'd he get"
                            storedtext[2] = "outside the Rock Wall??"
                            storedtext[3] = "We gotta take care of"
                            storedtext[4] = "this, and fast..."
                        }
                        break;
                    case 1:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "Fear not, for I have"
                        storedtext[2] = "lots of intel on this"
                        storedtext[3] = "guy! He's kind of a big"
                        storedtext[4] = "deal, so, y'know."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Sylvanos spreads the life"
                        storedtext[2] = "of the Aetherian Forest"
                        storedtext[3] = "everywhere he treads."
                        storedtext[4] = "Keep him airborne!"
                        break;
                    case 3:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Once he's got grass, he"
                        storedtext[2] = "can do tons of insane"
                        storedtext[3] = "stuff - and he ALREADY"
                        storedtext[4] = "has dumb disjoints."
                        break;
                    case 4:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "We can't exactly feel the"
                        storedtext[2] = "grass on our feet, so we"
                        storedtext[3] = "need to keep a visual on"
                        storedtext[4] = "him and his flowers."
                        break;
                    case 5:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Keeping an ear open is"
                        storedtext[2] = "important as well - if"
                        storedtext[3] = "you hear his howl, take"
                        storedtext[4] = "to the skies ASAP."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 3;
                        storedtext[1] = "Yep yep! I doubt we'll"
                        storedtext[2] = "be able to miss THAT."
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                }
                break;
            case 13: //Elliana
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Alto... what are you"
                        storedtext[2] = "doing in Elliana's"
                        storedtext[3] = "steam?"
                        storedtext[4] = ""
                        break;
                    case 1:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Shhh I'm hiding"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 2:
                        if (get_player_color(codec_id.player) == 1 && get_player_color(player) == 0){ //Elliana blue alt + Trummel default alt
                            speaker = 0;
                            expression = 0;
                            storedtext[1] = "We can see you, y'know."
                            storedtext[2] = "The matching color's"
                            storedtext[3] = "not fooling anyone. Get"
                            storedtext[4] = "out of there already."
                        }
                        else{ //Any other combination of costumes
                            speaker = 0;
                            expression = 0;
                            storedtext[1] = "We can see you, y'know."
                            storedtext[2] = "We're not colorblind."
                            storedtext[3] = "Come on out, dingus."
                            storedtext[4] = ""
                        }
                        break;
                    case 3:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "Phew. It's like a sauna"
                        storedtext[2] = "in there... Thank"
                        storedtext[3] = "goodness for SDI."
                        storedtext[4] = ""
                        break;
                    case 4:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Come to think of it,"
                        storedtext[2] = "Elli's like us in more"
                        storedtext[3] = "ways than one..."
                        storedtext[4] = ""
                        break;
                    case 5:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Air-based, thing riding"
                        storedtext[2] = "another thing, anti-"
                        storedtext[3] = "Air Armada, cooldown,"
                        storedtext[4] = "air-OK Strongs..."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 3;
                        storedtext[1] = "Just try and control the"
                        storedtext[2] = "pace of neutral and we'll"
                        storedtext[3] = "be fine. Should be pretty"
                        storedtext[4] = "familiar territory!"
                        break;
                }
                break;
            case 14: //Shovel Knight (idea: pickpocketer)
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "Wh-- HEY! This guy's"
                        storedtext[2] = "pickpocketing me!"
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 1:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "C'mere, hot shot. I've"
                        storedtext[2] = "got experience dealing"
                        storedtext[3] = "with the likes of you"
                        storedtext[4] = "back at Slum's."
                        break;
                    case 2:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "...That would be Shovel"
                        storedtext[2] = "Knight. The gems you're"
                        storedtext[3] = "seeing all around are"
                        storedtext[4] = "just his gimmick."
                        break;
                    case 3:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Then why's my wallet"
                        storedtext[2] = "empty? Trum, did you"
                        storedtext[3] = "make a ''surprise trip''"
                        storedtext[4] = "to the bar again?"
                        break;
                    case 4:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "what no"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = "give fighting tips"
                        break;
                    case 5:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Fighting tips! Right. Once"
                        storedtext[2] = "this guy's cash loses its"
                        storedtext[3] = "colored outline, we can"
                        storedtext[4] = "snag it!"
                        break;
                    case 6:
                        speaker = 1;
                        expression = 3;
                        storedtext[1] = "If he ever gets greedy,"
                        storedtext[2] = "that's an opening! Keep"
                        storedtext[3] = "clouds strewn about for"
                        storedtext[4] = "a free soak."
                        break;
                }
                break;
            case 15: //Sandbert
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...Who's this supposed"
                        storedtext[2] = "to be?"
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 1:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "This is Sandbert. He is"
                        storedtext[2] = "a terrifying deity born"
                        storedtext[3] = "before the construction"
                        storedtext[4] = "of this world."
                        break;
                    case 2:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "he's a box tho"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 3:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Yes, but he's also a"
                        storedtext[2] = "force to be reck-"
                        storedtext[3] = ""
                        storedtext[4] = ""
                        if (currentcodecline == 2 && codectimer2 / 2 == string_length(storedtext[currentcodecline])){
                            with(codec_id){
                            	set_attack_value(AT_TAUNT, AG_CATEGORY, 2);
                                set_attack(AT_TAUNT);
                            }
                        }
                        break;
                    case 4:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "...Lovely. Trummel, the"
                        storedtext[2] = "best tip I can give you"
                        storedtext[3] = "here is to watch out for"
                        storedtext[4] = "ambiguous animations."
                        break;
                    case 5:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "Also, his actions seem"
                        storedtext[2] = "kinda color-coded! Red"
                        storedtext[3] = "for hitstun, cyan for"
                        storedtext[4] = "parries and dodges..."
                        break;
                    case 6:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "If his EYES turn red,"
                        storedtext[2] = "well, then I guess it's"
                        storedtext[3] = "our time. Nice knowin"
                        storedtext[4] = "ya, Trum."
                        break;
                }
                break;
            case 16: //Guadua
                maxcodecindex = 6;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "Woah, it's Guadua!! The"
                        storedtext[2] = "BIGGEST, BADDEST PANDA"
                        storedtext[3] = "that the world of Rivals"
                        storedtext[4] = "has EVER SEEN!!"
                        break;
                    case 1:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "I can tell someone had"
                        storedtext[2] = "that workshop trailer"
                        storedtext[3] = "on loop for a couple"
                        storedtext[4] = "days, huh?"
                        break;
                    case 2:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "...Maybe"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 3:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "Anyway, the main danger"
                        storedtext[2] = "here is her NSPECIAL."
                        storedtext[3] = "If she eats her bamboo"
                        storedtext[4] = "stuff, she heals!"
                        break;
                    case 4:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Yeah. I think it's like"
                        storedtext[2] = "a 10% heal or something?"
                        storedtext[3] = "She'll do it while you're"
                        storedtext[4] = "offstage or dead."
                        break;
                    case 5:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "bro WHAT"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = "that's busted lmao"
                        break;
                    case 6:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "Yeah, it's totally"
                        storedtext[2] = "stupid and hilarious!"
                        storedtext[3] = "Good thing she's not"
                        storedtext[4] = "legal in tournament."
                        break;
                }
                break;
            case 17: //Workshop
                maxcodecindex = codec_id.trummelcodecmax;
                speaker = codec_id.trummelcodecspeaker[codecindex];
                expression = codec_id.trummelcodecexpression[codecindex];
                speakers[3] = codec_id.trummelcodecsprite1;
                speakers[4] = codec_id.trummelcodecsprite2;
                var i = 1;
                repeat(4){
                    storedtext[i] = codec_id.trummelcodecline[codecindex,i];
                    i++;
                }
                break;
            case 18: //Workshop without a codec set up
                maxcodecindex = 3;
                switch(codecindex){
                    case 0:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Who is THAT?"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 1:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "I have no data on this"
                        storedtext[2] = "fighter. I can't believe"
                        storedtext[3] = "it!"
                        storedtext[4] = ""
                        break;
                    case 2:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "It must be an intruder"
                        storedtext[2] = "from another dimension!"
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 3:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "Whatever it is, the goal"
                        storedtext[2] = "remains the same:"
                        storedtext[3] = "to fight and win!"
                        storedtext[4] = ""
                        break;
                }
                break;
            case 19: //Patch Notes
                maxcodecindex = 9;
                switch(codecindex){
                    case 0:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Version 4.1 was released"
                        storedtext[2] = "on Fri, 22 May, 2020."
                        storedtext[3] = "It tones down power in"
                        storedtext[4] = "a couple spots."
                        break;
                    case 1:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "FSpecial's bullets can"
                        storedtext[2] = "now be broken by moves."
                        storedtext[3] = "The move also has 15"
                        storedtext[4] = "frames more endlag."
                        break;
                    case 2:
                        speaker = 1;
                        expression = 5;
                        storedtext[1] = "It and USpecial have"
                        storedtext[2] = "extended parry stun..."
                        storedtext[3] = "why did they ever NOT?!"
                        storedtext[4] = ""
                        break;
                    case 3:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "It was a different time,"
                        storedtext[2] = "a time I look back upon"
                        storedtext[3] = "with shame."
                        storedtext[4] = ""
                        break;
                    case 4:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "ok shakespeare"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 5:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Rain isn't transcendent"
                        storedtext[2] = "anymore, but good luck"
                        storedtext[3] = "actually using that for"
                        storedtext[4] = "much of anything."
                        break;
                    case 6:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "The last nerfs are"
                        storedtext[2] = "related to your air"
                        storedtext[3] = "mobility... a major"
                        storedtext[4] = "outlier in RoA."
                        break;
                    case 7:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "Air Accel 0.4 --> 0.3"
                        storedtext[2] = "Jump Change 4 --> 3"
                        storedtext[3] = "DSpecial: no drift,"
                        storedtext[4] = "but keep momentum"
                        break;
                    case 8:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "...That's not too bad,"
                        storedtext[2] = "honestly. We still have"
                        storedtext[3] = "our high max air speed!"
                        storedtext[4] = ""
                        break;
                    case 9:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "woag"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                }
                break;
            case 20: //Angery
                maxcodecindex = 1;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "Oh, you're gonna be"
                        storedtext[2] = "like that, huh? Ya"
                        storedtext[3] = "feelin confident? I"
                        storedtext[4] = "see how it is."
                        break;
                    case 1:
                        speaker = 1;
                        expression = 4;
                        storedtext[1] = "Trummel, let's take"
                        storedtext[2] = "off the shackles..."
                        storedtext[3] = "no holding back for"
                        storedtext[4] = "this jerk."
                        break;
                }
                break;
            case 21: //Patch Notes (Closed Beta)
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 0;
                        expression = 0;
                        storedtext[1] = "I'm not writing patch"
                        storedtext[2] = "notes here just for"
                        storedtext[3] = "the closed beta..."
                        storedtext[4] = "check the Discord."
                        break;
                }
            case 22: //TCO
                maxcodecindex = 1;
                switch(codecindex){
                    case 0:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "not funny didnt laugh"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                    case 1:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "That image is the best"
                        storedtext[2] = "thing I've seen all week!"
                        storedtext[3] = "Can you give this to me"
                        storedtext[4] = "after the match?"
                        break;
                }
                break;
            case 23: //No Buy Nothin
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "What, you're not gonna"
                        storedtext[2] = "equip anything?..."
                        storedtext[3] = "Suit yourself I guess."
                        storedtext[4] = ""
                        break;
                }
                break;
            case 24: //Overflow
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 2;
                        storedtext[1] = "...I hope you and your"
                        storedtext[2] = "opponent agreed to this."
                        storedtext[3] = "Otherwise, kinda unfair."
                        storedtext[4] = ""
                        break;
                }
                break;
            case 25: //RNG Runes
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 1;
                        storedtext[1] = "Yeah, let's do it! Love"
                        storedtext[2] = "a good surprise. Think"
                        storedtext[3] = "fast, Trum."
                        storedtext[4] = ""
                        break;
                }
                break;
            case 26: //Home Run Fail
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 1;
                        expression = 0;
                        storedtext[1] = "Nice one, genius."
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                }
                break;
            case 27: //Home Run woag
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "woag"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                }
                break;
            case 28: //bird up
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "bird up"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                }
                break;
            case 29: //hikaru
                maxcodecindex = 0;
                switch(codecindex){
                    case 0:
                        speaker = 2;
                        expression = 0;
                        storedtext[1] = "not funny didnt laugh"
                        storedtext[2] = ""
                        storedtext[3] = ""
                        storedtext[4] = ""
                        break;
                }
                break;
        }
        expression *= 2;
    }  
        
    if(textboxframe == 8){
        speakerframe = 0;
        
        if (codectimer2 mod 12 < 7){
            speakerframe = 1;
        }
        
        switch(currentcodecline){
            case 1:
            case 2:
            case 3:
            case 4:
                codecprint[currentcodecline] = string_copy(storedtext[currentcodecline], 0, floor(codectimer2 / 2));
                if (codectimer2 / 2 > string_length(storedtext[currentcodecline])){
                    currentcodecline++;
                    codectimer2 = 0;
                }
                break;
            case 5:
                speakerframe = 0;
                break;
        }
        
        codectimer2++;
        
        if (codectimer2 >= 90 && (codecfile == clamp(codecfile, 22, 29) || !practice)){
        	if (codecindex < maxcodecindex){
		    	sound_play(sound_get("textpage"));
			    codecindex++;
			    currentcodecline = 1;   //Line of codec being written
			    codectimer2 = 0;    //Anim timer for text scroll
			    codecprint[1] = "";
			    codecprint[2] = "";
			    codecprint[3] = "";
			    codecprint[4] = "";
		    }else{
			    sound_play(sound_get("textleave"));
			    textboxframe = 9;   //Frame after pausing frame
			    codectimer = 0;     //Reset timer for even frame timing
		    }
		}
    }
    if (codectimer mod 6 == 0){
        if (textboxframe != 8 && codectimer != 0){
            textboxframe++;
        }
        if (textboxframe == 14){
            if (codec && is_ai && codecfile == 20){
                godmodeanimtimer = godmodemaxtimer;
                godmode = true;
            }
            codec = false;
        }
    }
}
else{
    speaker = 5;
}



//Playtesting Menu

if playtest{
	//spawn_hit_fx(x - 80, room_height - 160, 301);
}



//Self Codec

if trummelcodecneeded{
    trummelcodec = 17;
    trummelcodecmax = 6;
    trummelcodecsprite1 = sprite_get("idle");
    trummelcodecsprite2 = sprite_get("idle");

    //Page 0
    trummelcodecspeaker[0] = 1;
    trummelcodecexpression[0] = 5;

    trummelcodecline[0,1] = "It's... US???";
    trummelcodecline[0,2] = "";
    trummelcodecline[0,3] = "";
    trummelcodecline[0,4] = "";

    //Page 1
    trummelcodecspeaker[1] = 1;
    trummelcodecexpression[1] = 2;

    trummelcodecline[1,1] = "Trummel... I don't";
    trummelcodecline[1,2] = "like this one bit.";
    trummelcodecline[1,3] = "";
    trummelcodecline[1,4] = "";

    //Page 2
    trummelcodecspeaker[2] = 2;
    trummelcodecexpression[2] = 0;

    trummelcodecline[2,1] = "hey there good lookin";
    trummelcodecline[2,2] = "";
    trummelcodecline[2,3] = "";
    trummelcodecline[2,4] = "";

    //Page 3
    trummelcodecspeaker[3] = 1;
    trummelcodecexpression[3] = 2;

    trummelcodecline[3,1] = "Well uh... not sure what";
    trummelcodecline[3,2] = "real advice I can give,";
    trummelcodecline[3,3] = "Trum. I think we know";
    trummelcodecline[3,4] = "these two already...";

    //Page 4
    trummelcodecspeaker[4] = 1;
    trummelcodecexpression[4] = 1;

    trummelcodecline[4,1] = "Oh! I can tell you all my";
    trummelcodecline[4,2] = "deepest insecurities!";
    trummelcodecline[4,3] = "That'd be novel intel.";
    trummelcodecline[4,4] = "";

    //Page 5
    trummelcodecspeaker[5] = 2;
    trummelcodecexpression[5] = 0;

    trummelcodecline[5,1] = "im ur friend not ur";
    trummelcodecline[5,2] = "therapist";
    trummelcodecline[5,3] = "";
    trummelcodecline[5,4] = "";

    //Page 5
    trummelcodecspeaker[6] = 0;
    trummelcodecexpression[6] = 0;

    trummelcodecline[6,1] = "We'll talk about that";
    trummelcodecline[6,2] = "later, Alto. You two";
    trummelcodecline[6,3] = "focus on the battle";
    trummelcodecline[6,4] = "at hand.";
}



//Copy Ability initial swallow

if swallowed {
	swallowed = 0;
	beenswallowed = true;
	var ability_spr = sprite_get("trumkirb");
	var ability_hurt = sprite_get("trumkirb_hurt");
	var myicon = sprite_get("trumkirbyicon");
	var transfersfx_cooldown_end = sound_get("cooldown_end");
	var transfersfx_cooldown_start = sound_get("cooldown_start");
	var transfersfx_cooldown_click = sound_get("cooldown_click");
	var transfersfx_brass_melee = sound_get("brass_melee");
	var transferspr_cooldown = sprite_get("cooldown");
	var transferspr_cooldownfill = sprite_get("cooldownfill");
	var transferspr_cooldownfillborder = sprite_get("cooldownfillborder");
	var transferspr_cooldownfail = sprite_get("cooldownfail");
	
	with enemykirby{
	    swallowedtrum = true;
		newicon = myicon;
		
        rain_cooldown = 0;              
        cooldown_anim = 0;              
        sideways_cooldown_timer = 0;    
        cooldown_max = other.cooldown_max;             
        cooldown_mid = other.cooldown_mid;             
        cooldown_min = other.cooldown_min; 
        
        cooldown_end = transfersfx_cooldown_end;
        cooldown_start = transfersfx_cooldown_start;
        cooldown_click = transfersfx_cooldown_click;
        brass_melee = transfersfx_brass_melee;
        
        cooldown = transferspr_cooldown;
        cooldownfill = transferspr_cooldownfill;
        cooldownfillborder = transferspr_cooldownfillborder;
        cooldownfail = transferspr_cooldownfail;
        
		set_attack_value(AT_EXTRA_3, AG_CATEGORY, 2);
        set_attack_value(AT_EXTRA_3, AG_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_AIR_SPRITE, ability_spr);
        set_attack_value(AT_EXTRA_3, AG_NUM_WINDOWS, 5);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_SPRITE, ability_hurt);
        set_attack_value(AT_EXTRA_3, AG_HURTBOX_AIR_SPRITE, ability_hurt);
        
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_LENGTH, 10);
        set_window_value(AT_EXTRA_3, 1, AG_WINDOW_ANIM_FRAMES, 2);
        
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_LENGTH, 15);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_ANIM_FRAME_START, 2);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_HAS_SFX, 1);
        set_window_value(AT_EXTRA_3, 2, AG_WINDOW_SFX, asset_get("sfx_jumpground"));
        
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_LENGTH, 8);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAMES, 2);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_ANIM_FRAME_START, 5);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 3, AG_WINDOW_HSPEED_TYPE, 1);
        
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_LENGTH, 16);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAMES, 4);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_ANIM_FRAME_START, 7);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED, 0);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED, 0);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_VSPEED_TYPE, 1);
        set_window_value(AT_EXTRA_3, 4, AG_WINDOW_HSPEED_TYPE, 1);
        
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_LENGTH, 11);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAMES, 3);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_ANIM_FRAME_START, 11);
        set_window_value(AT_EXTRA_3, 5, AG_WINDOW_HAS_WHIFFLAG, 1);
        
        set_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH, 01010100010100100101010101001101);
        
        set_num_hitboxes(AT_EXTRA_3, 1);
        
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_TYPE, 1);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WINDOW, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_LIFETIME, 8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_X, 50);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITBOX_Y, -10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_WIDTH, 66);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HEIGHT, 75);
        set_hitbox_value(AT_EXTRA_3, 1, HG_PRIORITY, 3);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DAMAGE, 14);
        set_hitbox_value(AT_EXTRA_3, 1, HG_ANGLE, 90);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_KNOCKBACK, 10);
        set_hitbox_value(AT_EXTRA_3, 1, HG_KNOCKBACK_SCALING, 0.8);
        set_hitbox_value(AT_EXTRA_3, 1, HG_BASE_HITPAUSE, 12);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITPAUSE_SCALING, 1.0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HITSTUN_MULTIPLIER, 1.15);
        set_hitbox_value(AT_EXTRA_3, 1, HG_DRIFT_MULTIPLIER, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_VISUAL_EFFECT, 0);
        set_hitbox_value(AT_EXTRA_3, 1, HG_HIT_SFX, asset_get("sfx_waterhit_medium"));
	}
}



//Copy ability update code

if (enemykirby != noone) { //if kirby is in a match & swallowed
    with oPlayer { //Run through all players
        if ((state == PS_ATTACK_AIR || state == PS_ATTACK_GROUND) && (get_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH) == 01010100010100100101010101001101 && attack == AT_EXTRA_3)) {
            can_fast_fall = false;
            if (window == 1){
                if (window_timer == 1){
                    vsp = clamp(vsp, -2, 2);
                    hsp = clamp(hsp, -2, 2);
                }
            }
            if (window == 2){
                if (window_timer == 1){
                    if special_down{
                        vsp = -14;
                        nspecspeedchange = 0.7;
                    }
                    else{
                        vsp = -7;
                        nspecspeedchange = 2;
                    }
                }
                if (abs(hsp) < 10.5){
                    if (left_down){
                        hsp -= nspecspeedchange;
                    }
                    if (right_down){
                        hsp += nspecspeedchange;
                    }
                }
                if (window_timer == 14){
                    sound_play(brass_melee);
                }
            }
            if (window > 1){
                rain_cooldown = cooldown_max;
            }
        }
        
        if (get_window_value(AT_EXTRA_3, 6, AG_WINDOW_LENGTH) == 01010100010100100101010101001101){
            if (rain_cooldown == cooldown_min) {
                sound_play(cooldown_end);
            }
            
            if (rain_cooldown == cooldown_max - 6){
                sound_play(cooldown_start);
            }
            
            if (sideways_cooldown_timer == 12){
                sound_play(cooldown_click);
            }
            
            if (sideways_cooldown_timer > 0){
                sideways_cooldown_timer--;
            }
            
            if (rain_cooldown > 0){
                rain_cooldown--;
            }
            
            if (rain_cooldown > cooldown_min){
                move_cooldown[AT_EXTRA_3] = 2;
                if (special_pressed && !(down_down || up_down || left_down || right_down) && rain_cooldown < cooldown_max - 4 && sideways_cooldown_timer == 0){
                    sideways_cooldown_timer = 12;
                }
            }
        }
    }
}



//Runes

runeAny = (runeA || runeB || runeC || runeD || runeE || runeF || runeG || runeH || runeI || runeJ || runeK || runeL || runeM || runeN || runeO);

if runeB{
	air_max_speed = 8.5;
	jump_change = 6;
	air_accel = .6;
	air_friction = .04;
}
else{
	air_max_speed = 7;
	jump_change = 4;
	air_accel = .3;
	air_friction = .03;
}
leave_ground_max = air_max_speed;
max_jump_hsp = air_max_speed;

if runeC{
	djump_speed = jump_speed;
}
else{
	djump_speed = 8;
}

if (runesUpdated && !hasrunemocked){
	var docodec = false;
	
	if (!runeAny && runeMode == 0){
		docodec = true;
		codecfile = 23;
	}
	else if (runeMode == 1){
		docodec = true;
		codecfile = 24;
	}
	else if (runeMode == 2){
		docodec = true;
		codecfile = 25;
	}
	
	if docodec{
		sound_play(sound_get("textappear"));
        textboxframe = 0;   //Anim frame for box
        codec = true;       //Codec on/off
        codectimer = 0;     //Anim timer for box
        codecindex = 0;     //First page
        currentcodecline = 1;   //Line of codec being written
		codectimer2 = 0;    //Anim timer for text scroll
		codecprint[1] = "";
		codecprint[2] = "";
		codecprint[3] = "";
		codecprint[4] = "";
		hasrunemocked = true;
	}
}



//TCO

var tcodec = false; //TCOdec, heh

with (asset_get("oPlayer")){
	if (url == 1932454633){
		if (papertimer == 176){
			tcodec = true;
		}
	}
}

if tcodec{
	sound_play(sound_get("textappear"));
    textboxframe = 0;   //Anim frame for box
    codec = true;       //Codec on/off
    codectimer = 0;     //Anim timer for box
    codecfile = 22;      //TCO
    codecindex = 0;     //First page
    currentcodecline = 1;   //Line of codec being written
	codectimer2 = 0;    //Anim timer for text scroll
	codecprint[1] = "";
	codecprint[2] = "";
	codecprint[3] = "";
	codecprint[4] = "";
}



//Home Run

var do_codec = false;
var do_index = 0;

with(oPlayer){
	if("landed" in self && "launched" in self && "landed_cooldown" in self){
		if (landed && !launched){
			do_codec = true;
			do_index = 26;
		}
		if (abs(distance_x) > 500 && landed){
			do_codec = true;
			do_index = 27;
		}
		if !landed{
			other.did_homerun = false;
		}
	}
	if "counterid" in self{
		if counterid == other.id{
			do_codec = true;
			do_index = 29;
		}
	}
}

if do_codec && !codec && !("did_homerun" in self && did_homerun){
	sound_play(sound_get("textappear"));
    textboxframe = 0;   //Anim frame for box
    codec = true;       //Codec on/off
    codectimer = 0;     //Anim timer for box
    codecindex = 0;     //First page
    currentcodecline = 1;   //Line of codec being written
	codectimer2 = 0;    //Anim timer for text scroll
	codecfile = do_index;
	codecprint[1] = "";
	codecprint[2] = "";
	codecprint[3] = "";
	codecprint[4] = "";
	did_homerun = true;
}



#define spawnCloud

var cloud = instance_create(floor(x-4*spr_dir), floor(y+argument[0]), "obj_article1");
with (asset_get("obj_article1")){
    if (player_id == other.id){
        replacedcount++;
    }
}
sound_play(jump_sound);