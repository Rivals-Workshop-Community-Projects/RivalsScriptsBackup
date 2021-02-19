/*

ARTICLE 3:	"What is my purpose?"

	 MUNO:	"You initialise text."

ARTICLE 3:	"Oh my god"

*/



sprite_index = asset_get("empty_sprite");
image_index = 0;
mask_index = asset_get("empty_sprite");



with player_id{
	
	frameData();	//Frame Data; for move assignments + descriptions
	codecMisc();	//Codec initialisation, as well as tutorial + patch notes
	codecBase();	//Codecs for base RoA roster
	codecWork();	//Codecs for workshop chars
	
	text_inited = true;
	
}



#define frameData

frame_data_atk_index[0] = 998;
frame_data_atk_index[1] = 999;
frame_data_atk_index[2] = AT_NSPECIAL;
frame_data_atk_index[3] = AT_FSPECIAL;
frame_data_atk_index[4] = AT_USPECIAL;
frame_data_atk_index[5] = AT_DSPECIAL;
frame_data_atk_index[6] = AT_JAB;
frame_data_atk_index[7] = AT_FTILT;
frame_data_atk_index[8] = AT_UTILT;
frame_data_atk_index[9] = AT_DTILT;
frame_data_atk_index[10] = AT_DATTACK;
frame_data_atk_index[11] = AT_NAIR;
frame_data_atk_index[12] = AT_FAIR;
frame_data_atk_index[13] = AT_BAIR;
frame_data_atk_index[14] = AT_UAIR;
frame_data_atk_index[15] = AT_DAIR;
frame_data_atk_index[16] = AT_FSTRONG;
frame_data_atk_index[17] = AT_USTRONG;
frame_data_atk_index[18] = AT_DSTRONG;

frame_data_atk_label[0] = "Honeycycle 1"
frame_data_atk_label[1] = "Honeycycle 2"
frame_data_atk_label[2] = "NSpecial"
frame_data_atk_label[3] = "FSpecial"
frame_data_atk_label[4] = "USpecial"
frame_data_atk_label[5] = "DSpecial"
frame_data_atk_label[6] = "Jab"
frame_data_atk_label[7] = "FTilt"
frame_data_atk_label[8] = "UTilt"
frame_data_atk_label[9] = "DTilt"
frame_data_atk_label[10] = "DAttack"
frame_data_atk_label[11] = "NAir"
frame_data_atk_label[12] = "FAir"
frame_data_atk_label[13] = "BAir"
frame_data_atk_label[14] = "UAir"
frame_data_atk_label[15] = "DAir"
frame_data_atk_label[16] = "FStrong"
frame_data_atk_label[17] = "UStrong"
frame_data_atk_label[18] = "DStrong"


var n = 0;

frame_data_guide_blurb[n,0] = "Your horizontal movement is through the roof at the cost of midair jump height and hurtbox size.

Parry, roll, or complete an airdodge to dismount your bike.

You can perform any Special straight from the bike, and pressing A performs an aerial. The vertical boost from the latter stacks with a jump.";
frame_data_guide_blurb[n,1] = "OK Otto, listen up - this bike is really one of your greatest assets. Any good chance you get to use this thing in neutral, you should take it, since that's the only way you're going to get speed that isn't just super committal. It's honestly kind of ridiculous since you can use aerials right away, and you can even wavedash!! Yeah, wavedashing on a bike... that's new.";
n++;

frame_data_guide_blurb[n,0] = "The bike hitbox has 4 predetermined KB angles, but damage, trajectory, and base KB vary with the attack used.

The bike has 2 HP; it gets damaged when it hits a foe or gets hit BY a foe. The latter can cause a bike cooldown.

You can spike a bike which sits on a soft platform, and it will go down through the platform!";
frame_data_guide_blurb[n,1] = "This is your only form of stage control, and it's a freaking powerful one if used properly. Not only is the KO power great, but comboing both a foe and the bike simultaneously just means more damage output for you. Make sure to use FSpecial or DSpecial if the foe goes to attack it; you do NOT want to be dealt that cooldown. Also, use a billiard ball to hit the bike when it's least expected!";
n++;

frame_data_guide_blurb[n,0] = "Hold B to resume a charge instead of immediately firing.

During the charge, you can jump cancel, drop through platforms, or end the move neutrally by pressing shield. Also, press A to send the ball downward.

You can hit a ball after it bounces off of anything, sending the ball flying!";
frame_data_guide_blurb[n,1] = "It's always a good idea to keep a ball charge going during a match, Otto. Obviously the cooldown is gonna keep you from spamming it outright, but peppering these in during neutral will help a lot. The 5-Ball can extend combos after you knock a foe out of reach, and the 8-Ball pretty much IS a walking combo. Combine a 7-Ball with a bike to cover shorthops at a distance!";
n++;

frame_data_guide_blurb[n,0] = "This move puts you on your bike after use. It has its own short cooldown, and it can't be used again until you land, get hit, or walljump.

After hitting a foe or ball, you can act very quickly. You can also hitfall it!

The beginning of this attack is a bit stronger than the lingering hitbox.";
frame_data_guide_blurb[n,1] = "FSpecial is a combo MONSTER. The IASA on hit really helps you out here, but you'll need to be smart with it. Depending on percents, you're gonna need to use hitfalls and jump heights to get the follow-up you're after. It's also great for recovery, especially since your next attack or airdodge will come with a bonus hop! And onstage, you can really chase people with this + your bike mobility.";
n++;

frame_data_guide_blurb[n,0] = "Otto's recovery move does not cause pratfall, but is still limited to one use until you land, get hit, or walljump.

The grounded version of this move goes much higher than if you start it from the air.

When you use this move, your bike hops up at the same time. This has no hitbox, but works even if the bike is in midair.";
frame_data_guide_blurb[n,1] = "This is... actually a pretty solid recovery move. If you're recovering high, anyway. You can move horizontally super well during flight. If you're recovering low, good luck counteracting edgeguards with that lack of spike; mix things up. Onstage, this move is handy sometimes for extending jugggles. Those with a big brain should try messing around with the bike hop to find setups.";
n++;

frame_data_guide_blurb[n,0] = "This attack can be charged for increased power (see speedometer). While charging, you can move, platform drop, or jump; each jump slightly extends the max charge time.

Like FSpecial, this move puts you on your bike and can be used straight from it.

In midair, you get a small boost upward upon release.";
frame_data_guide_blurb[n,1] = "DSpecial is basically a moving Strong Attack, which is pretty scary when you consider your crazy movement speeds when on the motorcycle. The movement speed while charging is slow, though, so don't think you can use it to space in neutral. Where it DOES shine is in advantage state, as a combo out of FSpecial, or when edgeguarding an unlucky offstage opponent.";
n++;

frame_data_guide_blurb[n,0] = "Otto's jab is only a single hit which launches opponents.

Its hitbox extends down to ground level, despite the animation.";
frame_data_guide_blurb[n,1] = "...Not a ton to say here, honestly? It's a one-hit jab. Not much to it, dude. You can combo into tilts at low percent, and the low hitbox could be useful for when you've got the high ground.";
n++;

frame_data_guide_blurb[n,0] = "Otto's extended arm is invincible during this attack.

The Sakurai Angle on this move makes it launch at angle 40 against grounded foes and angle 45 against midair ones.";
frame_data_guide_blurb[n,1] = "FTilt is a pretty solid disjointed poke. Using it out of a wavedash is a great way to call out a ranged whiff, or to hit a ball / bike which would otherwise be out of reach. It hits the bike at a pretty favorable angle.";
n++;

frame_data_guide_blurb[n,0] = "UTilt sacrifices upward reach for a large front-covering hitbox.

Hit a ball to send it diagonally upward.";
frame_data_guide_blurb[n,1] = "Alright Otto, this here is a bread and butter move if I've ever seen one. It covers a big area in front of you, AND it can combo like heaven! It's also super quick to execute. You can use it to quickly pop a bike up to greet a foe sitting on a platform, or for a unique ball angle for snipes.";
n++;

frame_data_guide_blurb[n,0] = "This attack is movement based, with a strong hit early on and a lingering late hit as Otto continues rolling.

You can roll off of a ledge, which allows you to act as soon as the hitbox disappears.";
frame_data_guide_blurb[n,1] = "OK Sonic the Hedgehog. No but seriously, DTilt is pretty niiiice. It's a really good combo option depending on DI, especially if you get that ledge cancel. That movement is also handy for hitting a bike or ball while keeping on the move.";
n++;

frame_data_guide_blurb[n,0] = "This move is a command grab! You can hold back on the control stick to throw backwards.

You can grab a bike or ball! Try mixing either with grabbing a foe to deal extra damage and different KB.

This attack will always send a grabbed billiard ball in the direction of the throw.";
frame_data_guide_blurb[n,1] = "If you land a Dash Attack, expect a pretty hefty reward, since you'll get to choose which area of the stage the foe should get sent. Not only this, but you can copycat Clairen's DI mixups by reversing the throw direction. Oh, and go for this move if your opponent dares linger near a bike or bouncing ball... grabbing it and them at once will deal mean damage!";
n++;

frame_data_guide_blurb[n,0] = "NAir covers a large area with a disjointed hitbox.

If you hit a bouncing billiard ball, it will send at a downward diagonal angle.";
frame_data_guide_blurb[n,1] = "This is another pretty standard move, but the disjoint is always gonna be handy. You can combo pretty nicely into it, and its big coverage is great for hitting your bike or a rebounding ball. In fact, the angle it sends balls at is great for snipes! Beyond that, it's just a really solid move all around.";
n++;

frame_data_guide_blurb[n,0] = "FAir is a command dash whose distance lessens the more it's used without landing. BAir is the exact same move.

After connecting with this move, you hover briefly and can input another aerial quickly. NAir and UAir will have a small height increase.

At any point during the attack, you can walljump.";
frame_data_guide_blurb[n,1] = "FAir and BAir are the same move, which means you'll always have access to this high-utility command dash. It's a great recovery mixup, and offensively, it's great for combos and KOs alike. Just be aware of its punishable whifflag. You can also use this attack to hit the bike while staying on the move, like DTilt. Oh, and try comboing this off of FSpecial!";
n++;

frame_data_guide_blurb[n,0] = "This is, like, the exact same move as FAir. Even the attack_update.gml code just checks for either of these moves being used.

See the previous page.";
frame_data_guide_blurb[n,1] = "You heard the guy. I'm not repeating myself.";
n++;

frame_data_guide_blurb[n,0] = "UAir has identical coverage on both sides of Otto, with a big rectangle hitbox.";
frame_data_guide_blurb[n,1] = "This is a really solid aerial, dude. It's got some punch to it, and you can ladder if you follow DI properly. It also sends your bike absolutely FLYING! Use this whenever your foe is above you in a juggle situation, basically.";
n++;

frame_data_guide_blurb[n,0] = "DAir is a stall-then-fall attack which can go through platforms by holding down on either analog stick.

Normally you bounce up on hit, but you can hitfall.

Using DAir on a ball or bike causes you to bounce with huge horizontal speed. However, if it's done on the bike, the bike takes damage.";
frame_data_guide_blurb[n,1] = "This is a ridiculously slow aerial attack, but it's also ridiculously powerful. Offstage you can cover a huge area, and onstage you can surprise foes through plats. Also, it's handy for hitting a bouncing billiard ball straight downward offstage, using the rebound to recover. Oh, and when recovering, try combining DAir with the USpecial's bike hop!";
n++;

frame_data_guide_blurb[n,0] = "During FStrong's charge, Otto shifts his hurtbox backward to dodge counter-hits.

Hitting a billiard ball with FStrong will return the ball to your charge rather than sending it flying.

For the record, the name of the above technique is ''ball return''.";
frame_data_guide_blurb[n,1] = "This is really just a dummy strong move, Otto, so use it to launch foes and bikes alike - but it's got some nuance to it. The hurtbox shift is something you should try learning, though it seems tough to use. The ball return thing is also niche since FStrong itself is so slow, but might come in handy... imagine doing that with a 7- or 8-Ball! I bet someone will find some big-brain play with this.";
n++;

frame_data_guide_blurb[n,0] = "UStrong fires the charged ball from NSpecial, but straight upward. Land the melee hit to combo into the ball.

Balls that were initially shot from UStrong will not last after hitting a foe.";
frame_data_guide_blurb[n,1] = "As a melee attack, UStrong is actually pretty nice. It's the fastest Strong. That upward ball shot, though, adds a lot more to this attack. You can snipe foes and bikes who are directly above you, OR you can land the melee hit to combo into any billiard ball on demand! ...Just be aware that if you miss, you're throwing away that charged ball. So it's a risky play in that way.";
n++;

frame_data_guide_blurb[n,0] = "DStrong is a two-hit attack. The first hit spikes with set knockback, and will never KO as an edgeguard.

The second hitbox's size increases after the first hit successfully lands.";
frame_data_guide_blurb[n,1] = "This is a pretty out-there move, and not just thematically. This two-hit attack packs a wallop, but is almost excruciatingly slow! The spike hitbox at the start is good for both edgeguards and bike interactions. Speaking of the bike, try catching both it and the foe inside a single DStrong; both you and the bike will hit twice consecutively! It's just a ton of damage.";

num_of_attacks = n;

for (i = 0; i < 4; i++){
    for (j = 0; j < 4; j++){
        frame_data_guide_text[i,j] = "ERROR_" + string(i) + string(j);
    }
}
frame_data_guide_text[1,0] = "";



#define codecMisc

hud_speaker_name[0] = "Muno";
hud_speaker_name[1] = "Alto";
hud_speaker_name[2] = "Trummel";
hud_speaker_name[3] = "Otto";
hud_speaker_name[4] = "Rouxls Kaard";
hud_speaker_name[5] = "A. Hime";
hud_speaker_name[6] = "Mollo";
hud_speaker_name[7] = "Peacock";
hud_speaker_name[8] = "Avery";
hud_speaker_name[9] = "Sonic";


spr_hud_char[0] = sprite_get("hud_char_muno");
spr_hud_char[1] = sprite_get("hud_char_alto");
spr_hud_char[2] = sprite_get("hud_char_trum");
spr_hud_char[3] = sprite_get("hud_char_otto");
spr_hud_char[4] = sprite_get("hud_char_rouxls");
spr_hud_char[5] = sprite_get("hud_char_ahime");
spr_hud_char[6] = sprite_get("hud_char_mollo");
spr_hud_char[7] = sprite_get("hud_char_pea");
spr_hud_char[8] = sprite_get("hud_char_avery");
spr_hud_char[9] = sprite_get("hud_char_sonic");

//Init arrays
for (var i = 0; i < 100; i++){
    for (var j = 0; j < 30; j++){
        text_speakers[i,j] = 0;
        text_talk_exp[i,j] = 0;
        text_gimmicks[i,j] = 0;
        text_contents[i,j] = "Frick, this message shouldn't appear. Let me know if it does. 

[ Codec " + string(i) + ", Page " + string(j) + " ]";
    }
    text_page_count[i] = 0;
    text_codecs_url[i] = 0;
    text_second_url[i] = 0;
}



abyssMods = array_create(16,[-1,"Not Implemented."]);



//Tutorial
var cur = 0; //Codec entry being written to
var i = 0; //Page
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hey - it's me, Muno! I'm the developer of Otto. Here's a quick fly-by of his Special Moves and primary mechanics.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "And I'm Alto! Muno's brought me back into the mix for more dialogue stuff.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The first thing to know about Otto is his bike mechanic. Use either FSpecial or DSpecial and you'll be riding a bike!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You retain almost a full range of movement... but your stats wildly change. Try just running around with it!";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "If you couldn't guess from the concept of it, you're a lot faster than before. Midair jumps are weak, though.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Attacking or dodging also causes you to hop off the bike, leaving it alone on the ground.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "After this, you can actually knock that bike around with any attack! It can even hit opponents.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Goodness... talk about road rage.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Next up is NSpecial, which is a charged projectile. Each billiard ball has different traits.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Yeah - each has its own knockback angle! The 7-Ball has insane launch power, and the 8-Ball has this broken stun!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You can store the charge by jumping or pressing shield, and UStrong will actually launch the ball upward instead.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "The real fun comes from hitting the bike with this move! Try it out. Your opponents will HATE you.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "USpecial is a floaty burst of flight upward, which does not cause pratfall... but there's no hitbox, either.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "Look out for edgeguards, dude.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "From among the normal attacks, the main weird thing is FAir / BAir / DAir. All of these are movement based attacks.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "They pack a punch and are awesome for mobility or combos. However, keep in mind that they all have punishable endlag.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "I think that's pretty much it, yea?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yep, that covers the basics! Check out the Move Guide if you want to know more about some of the finer details.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hit me up on Discord if you have any inquiries; I'm in the official RoA server as well as the Extended Workshop.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You can also check out my personal RoA character discord at this address: 

discord.gg/yhchvBB";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "P.S: Mod creators, check out the Steam page for info on how to add a custom bobblehead to Otto's bike!";

/*
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yep! If you make one of those and then shoot me a Discord DM, I'll write a codec for your character. * While supplies last";
*/

text_page_count[cur] = i;



//Patch Notes
cur = 1;
i = 0;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Patch " + patch_ver + " was released on " + patch_date + ". It reduces the strength with which the 7-Ball hits the bike.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Patch 1.5 was released on 22 May, 2020. It fixes bugs, tweaks balance, and adds more codecs!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You *did* nerf 8ball this time, right?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah - by popular demand, the 8ball now will not stun foes if it has already hit someone.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Finally, no more taking 50 damage from one projectile.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Previously, if you were to hit both the foe and the bike w/ FStrong or UStrong, the weaker bike KB would take priority.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Now, the bike will inherit the knockback of the move in that specific instance, so you won't be robbed of KOs.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Makes sense to me.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Aside from this, it's all just housekeeping and QoL as far as actual changes are concerned.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Your bike cooldown has this cool flashing effect for visibility - and DStrong has a cool new sound effect!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Non-flinch moves like Fox lasers no longer force a dismount, and the bike itself despawns when Otto suffers a KO.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "New codecs this patch:
- Don Chan
- Game & Watch
    (Rainbow)
- Bandana Dee (tdude)";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Word.";
i++;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "woag";
text_page_count[cur] = i;



/*



//Patch Notes 1.4
cur = 1;
i = 0;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Patch " + patch_ver + " was released on " + patch_date + ". It fixes bugs, tweaks design, and adds more codecs!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Seems like we're getting 4 new codecs per wave... nice.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "First, though, the nitty gritty. Otto's bike can no longer be hit if a foe has depleted its HP.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "This keeps you from just hitting a bike back after a foe kills it. That was kiiiiiiinda cheap.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "FAir and BAir can no longer ignore parry stun. Aerials done off bike (except DAir) once again do not hit the bike.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Down-thrown balls can't hit foes after bouncing. Godmode ball volley once again properly combos.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Oh, here's a big one, Otto: your 8-Ball now has extended parry stun! It lasts 20 frames longer than normal, too.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah, turns out the reflect was pretty picky about applying the full stun effect. Now it's consistently punishable.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Last up, DSpecial's hitbox size was reduced. Now it's not stupidly disjointed.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "New codecs this patch:
- Sonic (ricE)
- Feri
- Wizard
- Hat Kid";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Sick. I gotta check those out later.";
i++;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "woag";
text_page_count[cur] = i;



//Patch Notes 1.3
cur = 1;
i = 0;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Patch " + patch_ver + " was released on " + patch_date + ". It fixes bugs and adds more codecs!";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "More codecs? Heck yeah!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "First, though, the important bugfixes. Kragg's rock shards no longer freeze when hitting Kragg.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah... turns out hit_player.gml runs for those things, too. Thanks Dan.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The ball rehit direction is also more accurate now. Last patch you might've noticed some erroneous ball launches.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Lastly, balls launched downward by pressing A during NSpecial will now bounce off of platforms.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "New codecs this patch:
- Fry
- Paddler
- Peacock
- Shy Guy";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Alto showed me the scripts for these, and they're pretty great. Check them out.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I should mention that Notakin, the creator of Peacock, sent me some dialogue and assets for the guest appearances!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Note that this isn't mandatory at all, and I don't encourage others to do it since I'm happy to write 'em myself...";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...but I felt the need to give credit where it's due, and the sprites for it are sick.";
i++;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "woag";
text_page_count[cur] = i;



//Patch Notes 1.2
cur = 1;
i = 0;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Patch " + patch_ver + " was released on " + patch_date + ". It fixes bugs and publishes last patch's experiments.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "We won't bore you with the bugfixes, but check the Steam page. Big one: workshop_previous might work now?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...But there's no promises, since I haven't tested this myself. I isolated what should be all of the screwy bits of code.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The rest of the changes are just finalised versions of what used to be the ''experimental'' stuff, right?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yep. These changes were available in v1.1 for testing, but now they're active by default. In case you missed last patch...";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The first one is that if you press A while charging up a ball, you'll shoot it downward!";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Then you can instantly hit it with another move as a follow-up!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So it's kinda like a tennis serve, eh? Not bad.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Speaking of hitting balls, the angle is now based on the move used, rather than the ball's own knockback angle.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Most moves send it up, down, left, or right, but UTilt and NAir send diagonally.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Lastly, you'll be able to hit balls after they bounce off of walls.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Really plays up the sniper aspect of this move... neat.";
i++;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "woag";
text_page_count[cur] = i;

//Patch Notes 1.1
cur = 1;
i = 0;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Patch " + patch_ver + " was released on " + patch_date + ". It contains a couple of small initial changes.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "day one patch smh";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Hey man, it happens.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Alt 14's pool cue color is now a dark grey, to better contrast with the white (especially on 5ball and 6ball).";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The other notable changes are experimental ones, which you can try out by setting HUD Mode to Debug.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "The first one is that if you press A while charging up a ball, you'll shoot it downward!";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Then you can instantly hit it with another move as a follow-up!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So it's kinda like a tennis serve, eh? Not bad.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Speaking of hitting balls, the angle is now based on the move used, rather than the ball's own knockback angle.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Right now, it's restricted to up, down, left, or right, so you don't have to worry about janky precise angles.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I can see upsides to both approaches... we'll have to mess around with that.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Yep, that's why these are experimental changes! Hit us up with some feedback, guys.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Lastly, you'll be able to hit balls after they bounce off of walls.";
i++;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "woag";
text_page_count[cur] = i;



//Patch Notes 1.0
cur = 1;
i = 0;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The character just came out, genius. There aren't any patch notes yet.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "you said that last time";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 4;
text_contents[cur,i] = "Shut";
text_page_count[cur] = i;

*/



//Thief
cur = 10;
i = 0;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "You reuploaded the character?!";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "bruhm oment";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 4;
text_contents[cur,i] = "This is my character lmao";
text_page_count[cur] = i;



#define codecBase

var cur = 11; //Zet
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Who's the lion?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "That's Zetterburn, the Fire's Roar. He's an aggressive fighter with deadly kill confirms.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah - look out for his signature combo starters such as BAir and Shine. They're deadly in the hands of a pro.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Not only do they confirm into UStrong, but they inflict the Burn status, which powers up the Strong.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Five bucks says he'll hit you with a burning Strong before you can even see the flame VFX.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'll take you up on that bet.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'd not be so confident. Zetterburn's combo and pressure game are fast- paced and scary.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Your disadvantage is actually kinda bad, Otto, so... try and keep your distance.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'll have to make sure I stay grounded when he's in close quarters, then.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Good luck with that.";
text_page_count[cur] = i;



cur++; //Orc
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Well well, if it isn't this guy again.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Oh? You've met Orcane before?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Sure have; he stops by the bar every so often. Filthy cheater at billiards.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "wait how



he dont have hands";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Never stopped you, Trum.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "shut";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "In any event, Otto, remember that Orcane is also willing to bring those tactics into a fight, not just billiards.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "That's right. He's actually very slippery, and he's weirdly resistant to horizontal KOs.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Try using that nasty UAir of yours to keep him in check and eventually land a kill.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Will do. Fight's always more fun when you've got a grudge to settle...";
text_page_count[cur] = i;



cur++; //Wra
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Wrastor, huh? That name takes me back.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Oh? Were you two friends or something?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Nah, I know him from when I served in the Armada.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Wait, you were in the Air Armada too? FINALLY someone I can share my pain with!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah, what a hellhole that place was... got out of there after my first month.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Remember the short lunch breaks? I barely had time to soak up evaporating water from lakes, oceans, and rivers...";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Sure do. Hopefully this guy gives me a bigger break than that during his advantage state...";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Eh, don't count on it. His combo game is still busted, even after that one patch. Dan himself said so.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You're lucky he wasn't in the Workshop bracket at Genesis 7. Otto, watch out for his combo starters and midair Strongs.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Shouldn't be a problem. I'll just spam NAir and bike.";
text_page_count[cur] = i;



cur++; //Kra
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Fellow heavyweight, I see? We need more of your kind around these parts. Alto, what's the briefing here?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "That's Kragg! He's actually the original heavyweight in Rivals, so he has all the hallmarks of the archetype.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Powerful hits, sluggish movement, and a couple of earth-manipulation moves thrown in for good measure.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Unlike fighters such as Etalus or Sylvanos, you won't find many rule- breaking gimmicks here.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "However, his FSpecial allows him to cover ground while armored, and he can jump out on hit.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I suppose he'd take an interest in using my bike as a jump-cancel target... better watch out for that.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "...Huh, yeah, didn't think of that.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "try bouncing a ball on his pillar too";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "Yeah! ...Wait, Trum, what's possessed you to contribute meaningfully to the conversation?";
i++;
text_gimmicks[cur,i] = 1; //woag
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "oh yeah sorry

ahem..................

woag";
text_page_count[cur] = i;



cur++; //For
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "*cough* *cough* Ugh, this is why we have a no- smoking policy at the bar...";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Not like it'd help much regarding Forsburn. This smoke isn't just a pastime; it's his whole gimmick.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Great. What's it for?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The main thing is that he can hide in the smoke for sneak attacks and clone spawns. He's invisible unless he attacks.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "He can also inhale it to gain a Combust charge, or he can teleport into it without entering pratfall.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Good thing I've got these projectiles to clear it away with. Still, gonna be a pain.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Yeah, that's the key in this matchup. Just stay on top of things, Otto.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "This guy relies on putting on a poker face, which I'm sure you have skill countering.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Yeah. Read the clone's movements and use your pool cue to outrange Forsburn's dagger.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Got it. Hope he doesn't chop the thing in half...";
text_page_count[cur] = i;



cur++; //May
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Good luck going up against Maypul. She has the highest base ground speed in the game.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Great. I'm guessing she has a silly combo game too?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Yep! And she has a funny aerial.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "A what?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Y'know, a funny aerial? ...An aerial that spikes. For her, it's FAir.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You could have just said that.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "fOrWaRd AeRiAl";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "In any event, Otto, you should know that you're advantaged here: your bike has faster ground speed than Maypul.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Yep! Ignoring the super nonsense Workshop characters, I'd be surprised to see another dash speed like that.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'll make good use of that, then. Hope I get a good chance to pull it out in between her combos...";
text_page_count[cur] = i;



cur++; //Abs
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hey Alto, this your girlfriend?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...No, that's Absa. I'd stop joking around if I were you; you'll need all the advice you can get here.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Alright then, shoot.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Absa is a super-powerful zoner, with hits as strong at close-range as from afar. Watch out for that UAir.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "She can also throw out her clouds without committing a whole lot, since those moves are pretty quick to use.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "However, your billiard balls are actually pretty handy for calling out a FSpecial in neutral.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Oh yeah, I guess the cloud won't do anything to stop it. Noted.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Your disadvantage state won't do you any favors here, Otto. Her juggle and trap games are on point.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "However, Absa herself is a lightweight, so feel free to be trigger-happy on your biggest hits.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Gladly. Good thing wood doesn't conduct electricity...";
text_page_count[cur] = i;



cur++; //Eta
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I hope you did your homework this time, Alto.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Yep! I took an all-nighter reading the wiki, and now I'm an Etalus expert!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You know that website hasn't been updated since mid-2019, right?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Great. Hopefully they haven't patched him too much since then. I take it he still has the bellyslide?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Sure does. Otto, try using your bike to keep pace when he's got ice on deck.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Got it. What else can you tell me?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Well, Etalus has a vulnerable recovery. Offstage, he's forced to charge up and then leap with no hitbox.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "That's your chance to go for that powerful DAir of yours!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Just keep in mind that Etalus is projectile invincible during the leap, so I'm afraid billiard balls are a no-go.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Not like I mind getting my hands dirty.";
text_page_count[cur] = i;



cur++; //Ori
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Ori time!";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "what pronoun are we supposed to use again";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I always just used ''he.'' I think the devs of his original game left it up to interpretation.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Sounds good to me.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So what's the gameplan here, guys?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Ori's got the highest max air speed in the game. As such, expect a lot of far- reaching air approaches.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yep, and each aerial he lands leads to a combo! Great. You've also gotta watch out for Sein bursts.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Ori's Bash move allows him to take control of any enemy projectile, including your billiard balls.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "If Ori bashes your bike, it won't be able to hit you, but it'll be destroyed and go on cooldown.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Otto, count yourself lucky that the game kept crashing when I tried to give it a hitbox.";
text_page_count[cur] = i;



cur++; //Ran
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "For a Poisonous Pacifist, Ranno seems pretty tough.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "No kidding. He's got some mean kicks, and his poison darts leave a lasting effect.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "You'll take damage every time you use a move, including charging your billiard balls!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Good idea to not let this guy near your drink, huh.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Even without sabotaging your beverage, Ranno can still apply poison at a distance using darts.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Try leaving your bike in between yourself and Ranno. It'll block the darts, and the bike will be unscathed.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I bet there's a lot of situations where that property'll be useful.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Yep! Especially with how many Workshop fighters have dummy strong projectiles.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "as if we're any better";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "True. Nobody tell the pro players Trummel's pistol fire is transcendent...";
text_page_count[cur] = i;



cur++; //Cla
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Who's the cat with the laser sword?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "That's Clairen, The Flame's Salvation. Spoiler alert, but in the future, Loxodont takes over the whole of Aether.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 4;
text_contents[cur,i] = "Clairen's task is to travel to the present day and change the timeline for the better!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "How do you guys come to know these things?";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "youre talking to two professional detectives and one workshop developer";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah. We have our ways. Regarding that plasma blade, you need to watch out; it's got a stun effect at the tip!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So she has my 8-Ball on every move? Great.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Pretty much. She has no projectile attacks, but her 「NO FUN ZONE」 will destroy any projectiles as well as your bike.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "is that a jojo reference";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I think so? I just stole it from the Discord.";
text_page_count[cur] = i;



cur++; //Syl
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 1; //Forest Floor checks below
text_talk_exp[cur,i] = (get_stage_data(SD_WIDTH) == 704 || get_stage_data(SD_WIDTH) == 896) ? 1 : 0;
text_contents[cur,i] = (get_stage_data(SD_WIDTH) == 704 || get_stage_data(SD_WIDTH) == 896) ? "Ah, good to see Sylvanos is back in captivity." : "They really need to stop letting Sylv get outside the Rock Wall. Could cause a couple problems.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Another wood-based fighter, huh? His is a lot less polished than mine.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Do you really feel the need to brag about that? Someone insecure about his moveset?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "No, just making an observation.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Don't let his use of raw wood fool you - Sylvanos is a force to be reckoned with.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "His attacks boast incredible reach, but they come out at a snail's pace.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "hey :(";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Muno, you know that's a sensitive issue for Trum... Not cool. Anyway, Otto, look out for Sylv's grass gimmick.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "He can howl to make all his placed grass sprout up with a hitbox, then he gets to combo off of it!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So I'll just stay airborne whenever I think he's gonna go for it. Good chance to make use of these wings...";
text_page_count[cur] = i;



cur++; //Ell
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Another fighter with a vehicle... think you've met your match, Otto?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Well, she's no stranger. I've seen her around the automotive scene.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Small world! Perhaps I should let your expertise speak?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Can't say I've worked with steam a whole lot, but anything with such a rushed cooling system will overheat like crazy.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'm guessing that that'll be a good chance for me to attack.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Pretty much spot-on. Elli's mech overheats whenever she flies or uses certain moves.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Don't be surprised if she gets crafty and takes advantage of it, though. Her Strongs are more powerful in overheat!";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "It's basically a crazier version of the Flying Strongs that Trum and I use; she can begin them in midair.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "That aside, look out for Elliana's mine. It's kinda similar to our soak in that it traps you when hit with a missile.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Can you tell that I used my experience maining Elli when designing Trummel & Alto's moveset?";
text_page_count[cur] = i;



cur++; //Gus
var i = 0;
text_codecs_url[cur] = cur - 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I know this guy. He's an expert at billiards.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "To be fair, shovels are kind of OP in that game.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Well, Otto, this isn't the real Shovel Knight.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "It's not?!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Nope. As revealed by his special taunt, he's a fish impostor of the original. Not very shovelrous of him...";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "In spite of that, this masked fighter carries several of Shovel Knight's most iconic Relics.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Somehow, he's rich enough to buy stuff every match and just throw it away afterward! Chester must be swimming in it.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'm not surprised. What else do you think you get for winning a billiards tournament?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "You mean they actually let him use the shovel?!";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "i wonder if they let him keep the cash he got by hitting the other players

i mean the balls";
text_page_count[cur] = i;



cur++; //San
var i = 0;
text_codecs_url[cur] = 1865940669;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Ok, this guy's new.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You might have seen Sandbert before with a different face. He's a master of disguise.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I see. How can you tell you're fighting a disguised Sandbert?";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "check down air and up special";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Pretty much. Those two moves are hard to miss.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "That aside, make sure you're constantly watching his expressions and body color. He moves ambiguously.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "he can also scare you with his taunt";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "What's the matter, Trummel? Scared of the white square?";
i++;
text_gimmicks[cur,i] = 2;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "dude do you REMEMBER when we did our first codec for this gu-";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Fun. Wish me luck, guys.";
text_page_count[cur] = i;



cur++; //Gua
var i = 0;
text_codecs_url[cur] = 1866016173;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "A panda? Think she'll pass me some bamboo?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Don't think so. For some reason, she's allowed to heal with it... I'd hoard all of it if I were her.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yep. Otto, you have a lot of ways to delay your recovery to the stage, but I'd get back onstage ASAP.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I can see why. Seems like she'll just heal the whole time I'm out there.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Bingo. Sure do hope Youngblood ends up releasing that balance patch...";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Until then, there's not much you can do to make this FAIR, but try abusing her lack of a true horizontal projectile.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Guadua can fire bamboo shots up or down, but horizontally, she's limited to sprouting bamboo at a set distance.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So if I mix up my spacing and stay on the move, I should be fine.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Pretty much. Don't get predictable.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Well, that's what the bike is for.";
text_page_count[cur] = i;



cur++; //Ott
var i = 0;
text_codecs_url[cur] = url;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Wow, checking the mirror MU codec. How original of you.";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "You're not surprised to see a copy of yourself?";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Dude, I know how the game works.";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Fair enough! Well, I'd give you some fighting tips, but there's a whole Move Guide dedicated to this MU.";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah. Just remember everything from that and you'll be fine!";
i++;
text_gimmicks[cur,i] = 4;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Well, that should just about do it... huh?!";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "What's going on?";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Trum, this is ridiculous.";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "remind me whose idea it was to help otto out with his codecs";
i++;
text_gimmicks[cur,i] = 3;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 4;
text_contents[cur,i] = "Not important!";
text_page_count[cur] = i;



#define codecWork

var cur = 31; //Trummel & Alto
var i = 0;
text_codecs_url[cur] = 1933111975;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Woag.";
i++;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "woag";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Muno, do we really have to read this script?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Sorry dude, not my call. Blame P" + string(player) + " for using the codec.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 4;
text_contents[cur,i] = "Not having it. This codec's only gonna be half as long as the others, in the interest of my sanity.";
text_page_count[cur] = i;



cur++; //Kris Deltarune
var i = 0;
text_codecs_url[cur] = 1867608473;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Never seen someone like this... he looks more neon than the background of Cool Table.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "That's Kris! He's from the cult classic UNDERTALE. I mean THUNDRA EEL. Sorry, I mean--";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "nude alert";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "TRUMMEL NO";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...DELTARUNE. Otto, watch out for his DSpecial; it makes him heavier but constantly drains TP.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Not only that, but his Down Special increases his survivability at the cost of meter!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah. Don't forget his Down B, too - for the limited time it's active, he'll be harder to KO.";
i++;
text_gimmicks[cur,i] = 5;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "If Kris holds down on the control stick and then presses the B button, he will activate Courage, which--";
i++;
text_gimmicks[cur,i] = 6;
text_speakers[cur,i] = 4;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "ENOUGH. Thoust worms have sufficiently explained what DSpecial does.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "No kidding. Guess I'll have to figure out his other Specials through trial and error... Thanks, guys.";
text_page_count[cur] = i;



cur++; //Hime Daisho
var i = 0;
text_codecs_url[cur] = 1905208125;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "borgar";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "This opponent keeps looking away from me... face me and fight me like a man, will ya?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Nah, that's just Hime's idle stance. She's a fierce guerilla fighter who uses surprise tactics to her advantage.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I see... so it's my job to keep track of which way she's facing.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "She also has a couple of other traits that demand your attention, so be on your toes.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Yep - her FSpecial shoots a sticky bomb arrow that you can dodge or parry with good timing.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Also, she can sharpen her weapons to power up certain moves. Watch her HUD for that little knife icon.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "If she goes for the buff, that's a prime time to punish. It has a super- long animation.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "i think its about HIME we start fighting";
i++;
text_gimmicks[cur,i] = 5;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "NO THATS NOT HOW YOU SAY IT TRUMMEL AAAAAAAAAAA";
text_page_count[cur] = i;



cur++; //Liz
var i = 0;
text_codecs_url[cur] = 1917856427;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...You OK there, Otto?";
i++;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I don't know what's going on. I feel compelled to dance.";
i++;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Oh yeah, that's Liz for you. She carries this rhythmic energy to her.";
i++;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I see. Let me guess, she attacks on the beat too?";
i++;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Spot on. However, once she gets her meter going, Liz can build it up even with whiffed attacks.";
i++;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Don't let her just camp you out all match and build up that meter... Octave aerials are scary.";
i++;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Got it. Luckily I've got plenty of burst movement to deal with that.";
i++;
text_gimmicks[cur,i] = 7;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...You're gonna have to quit dancing, though.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...There. That's better.";
i++;
text_gimmicks[cur,i] = 11;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "wait how did you do that



i cant stop wiggling help";
text_page_count[cur] = i;



cur++; //R-00
var i = 0;
text_codecs_url[cur] = 1868240517;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "R-00 can have up to 3 battery charges. Moves which edit R-00's momentum/position use 1 charge each.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Gain a charge upon hitting a character or R-00's articles (Star & Wall). R-00's minimum charges on the ground is 1.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Muno, what's going on with that page count?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "At zero charges, R-00 cannot use normals/ aerials which require charges. He can use N-special and U-special.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "Did you copy and paste the entire R-00 manual into here?!?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "NSpecial: R-00 reverses his momentum. Can use in the middle of moves. Once per airtime use.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Muno, what the hell";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "If R-00 has no charges, it only reverses to 70% of the momentum. Example: If going down/right, he goes up/left.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "USpecial: R-00 swaps positions with his Star. If R-00 has no charges, the endlag is doubled (15 to 30 frames).";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'm out, guys. Have fun listening to that, Alto.";
text_page_count[cur] = i;

for(i = 0; i <= text_page_count[cur]; i++){
	text_gimmicks[cur,i] = 8;
}



cur++; //Gustav
var i = 0;
text_codecs_url[cur] = 1892030667;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Seems I've brought a pool cue to a gun fight.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Not only that, but it's a ghost gun! Good luck dude.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "How is that different than a regular gun? Won't the bullets phase through me?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Well, Gustav uses it for quite the unusual fighting style. He'll straight up just chuck the musket at you, then remotely fire!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "There is an obvious weakpoint, though. Gustav has to reload his gun before he can fire it.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Yeah, there's a reason they phased those out for military use. Just hit him while he's reloading.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So I guess camping him out won't be incredibly useful.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yep. Hitscan weapon and all that. Try and stay out of his line of sight.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "On the bright side, Gustav can't reload without picking up his gun again. Use that to your advantage.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Got it. The gun won't be the only ghost around here soon...";
text_page_count[cur] = i;



cur++; //Abyss Hime, Regular
var i = 0;
text_codecs_url[cur] = 1968648848;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "borgar";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Trummel, this is no time for fun and games... we're dealing with the Abyss, here.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah... I'm not getting a good feeling from this at all.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Otto, be on your guard. This is the toughest opponent you've faced yet.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Abyss Hime's airdodge gives her free flight, and her attacks in general are incredibly powerful.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Looks like she hasn't activated Abyss+ or Red Abyss, though, so... maybe she'll go easy on us?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...I wouldn't count on it. They could have just picked regular Hime if that were the case.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "That's true. I'll be on my guard.";
i++;
text_speakers[cur,i] = 5;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "*gulp*";
text_page_count[cur] = i;



cur++; //Abyss Hime, Abyss+
var i = 0;
text_codecs_url[cur] = 0;
text_gimmicks[cur,i] = 1;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "borgar";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Trummel, this is no time for fun and games... we're dealing with the Abyss, here. Abyss+ mode, too.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah... not confident about this one, guys.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Otto, Abyss Hime is in Abyss+ mode, meaning she's powered up. ...I'd recommend restarting with godmode on.";
i++;
text_speakers[cur,i] = 5;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "[STAND] -> [FIGHT]";
i++;
text_gimmicks[cur,i] = 10;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "OTTO, LOOK OUT!!!!!!!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Not gonna fall for that.";
i++;
text_speakers[cur,i] = 5;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Yeah! Let's go! You got this, Otto.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "idk he'll probably still lose";
text_page_count[cur] = i;



cur++; //Abyss Hime, Red Abyss
var i = 0;
text_codecs_url[cur] = 0;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "you are already borgar";
i++;
text_gimmicks[cur,i] = 9;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Nani?!";
text_page_count[cur] = i;



cur++; //Yoyo
var i = 0;
text_codecs_url[cur] = 1891309722;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yoyo, huh. Wonder why he's called that.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "It's truly a mystery.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Keep your guard up, though. Yoyo is a dedicated melee fighter; his meter even rewards him for comboing.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "As a heavy with a bad disadvantage, you should use your zoning tools until you're comfortable approaching.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "As always.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Yoyo's combo counter doesn't rely on true combos; you'll need a decent gap between hits to clear it.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Plus, it's not only his Strongs that can cash in on the meter, but also BAir and charged NSpecial.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So he's got a lot of options, huh? I'll have to look out for all of them.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hey Alto, did Nackles ever fix that FStrong angle?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "I dunno. We'd better ping him to make sure.";
text_page_count[cur] = i;



cur++; //Moyo
var i = 0;
text_codecs_url[cur] = 1871989159;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Hey, I remember this guy! We did our very first guest codec on him!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Otto, have you met Mollo yet?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Can't say I have, but I've heard plenty about him.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Mollo is a formidable fighter from the same future as Clairen. He specializes in zoning but can get his hands dirty.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "His bombs are actually super hard to keep track of. They bounce around whenever they're hit, and he can have many out.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "These bombs come at an expense, though - he doesn't have traditional Strong Attacks.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Must suck not having c-stick aerials... poor guy.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Say, Muno... why are WE the ones with a molotov? Five different bomb types and he left THAT one out?";
i++;
text_speakers[cur,i] = 6;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Ey, mind your own moveset, vape cloud.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "moll;o tov............";
text_page_count[cur] = i;



cur++; //Fry
var i = 0;
text_codecs_url[cur] = 1960200333;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Another stick figure, huh? How come he's hogging all the shading?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'm sure it's a stylistic difference.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "You reckon the frying pan is, too? I imagine there are more effective picks for a weapon.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You'd be surprised at what one of those is capable of.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "No kidding. I don't need to describe how much pain they dish out when that's already implied by the hitsounds.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "team fortress 2";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Say... any fighting tips?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Trail Mix can't make up his stupid mind on a gimmick and plans to rework Fry soon, so... no tips right now.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "hey not cool


dont talk like that behind his back man";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "...Right, no developer- written codecs this time. Sorry, dude. ...Time to beat up your character lol";
text_page_count[cur] = i;



cur++; //Paddler
var i = 0;
text_codecs_url[cur] = 1888974873;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Who's this guy?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "It's Paddler! Sick. Hey Reggie, when's Rhythm Heaven Wii U?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Paddler uses the rhythm to attack. Try studying the timings for his Specials in Practice Mode.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "This guy's also super easy to manipulate! Watch:";
i++;
text_gimmicks[cur,i] = 12;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Ten flipper rolls! 1, 2, 3, 4, 1, 2, 3, 4, 1, 2, nice!";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Alto, that's cheating.";
i++;
text_gimmicks[cur,i] = 13;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Jab! One, two!";
i++;
text_gimmicks[cur,i] = 14;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "OK dude, I think you're kinda abusing your power now. Cut it ou--";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "ye";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "NO HE GOT TO TRUMMEL";
text_page_count[cur] = i;



cur++; //Peacock, contributed by Notakin! (i edited the words of my chars)
var i = 0;
text_codecs_url[cur] = 1997963969;
text_second_url[cur] = 1999872136;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hey, there's this rubberhose looking child giving me a funny look... You know this girl, Alto?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Ugh! It's Peacock again! Last time we met, she cracked Trummel's shell!";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "owie";
i++;
text_speakers[cur,i] = 7;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Hey! It ain't my fault someone doesn't know how to dodge!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "OK Alto, what you got?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Peacock is a force to be reckoned with both at melee range and from afar.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Somehow, she can spawn in an entire arsenal of guns, bombs, and cartoon props... is that even allowed?";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Sounds annoying...";
i++;
text_speakers[cur,i] = 7;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yeah yeah yeah, cut the chit chat, buzz brain. I wasn't even finished taking places!";
i++;
text_speakers[cur,i] = 8;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "SQUAWK! Get on with it! I wanna see some violence!";
text_page_count[cur] = i;



cur++; //Shy Guy
var i = 0;
text_codecs_url[cur] = 1898782296;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "It's Shy Guy! Best Mario enemy, don't @ me.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "What about Lakitu? I always imagined he'd top your list.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Dude, I might have an ego, but even I recognize perfection when I see it.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Fair. I guess the whole ''shelled guy riding a cloud'' thing has gotten kinda old to you, too.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Well, Otto - Trummel & Alto were originally going to be a Lakitu character.";
i++;
text_gimmicks[cur,i] = 5;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "WHAT??? My whole life is a lie!! Muno WHY did you never tell us thi-";
i++;
text_gimmicks[cur,i] = 15;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "wiiw";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "...Trum, you ok there?";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "what";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Nothing. Focus on the task at hand - let's send this guy back to Subcon.";
text_page_count[cur] = i;



cur++; //Sonic (ricE)
var i = 0;
text_codecs_url[cur] = 1899673724;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Spindash shield time. Great.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Nah, this isn't Smash 4, it's fine.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "Phew, that's a relief! Don't wanna relive those days...";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hi! I'm Omochao!


Press the A Button to jump!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "What the...";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "The Somersault has a long cooldown, so you can't use it repeatedly! Watch out!";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Trum, cut it out. You're reminding me of when character devs kept screwing up your dialogue.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Using the Homing Attack, you can fly straight at the nearest enemy at high speed!";
i++;
text_gimmicks[cur,i] = 5;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Geez, is EVERY character from this franchise so annoyin--";
i++;
text_speakers[cur,i] = 9;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I'll make you eat those words!";
text_page_count[cur] = i;



cur++; //Feri
var i = 0;
text_codecs_url[cur] = 2006712792;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Oh, I've heard of this fighter.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Yep, that's Feri - she's a fast character with a meter gimmick. That's another to the list... thanks Kris.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "...Does anyone know how her new meter works, anyway? It got patched a couple times.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "What? Oh, Feri's meter actually got removed entirely.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "frick";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You really need to keep up with these things, Alto. It's kinda your job.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 4;
text_contents[cur,i] = "I'M DOING MY BEST OKAY";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Something that DIDN'T get patched out is her eggplant thing, which detonates anytime she uses a music attack.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Sounds like she has to walk on eggshells to avoid a premature detonation... I'll use that to my advantage.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "haha i get it
because
......
because eggplant and eggshells";
text_page_count[cur] = i;



cur++; //Wizard
var i = 0;
text_codecs_url[cur] = 1908278153;
text_second_url[cur] = 2006384286;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "It's the Wizard.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Not gonna lie, I was expecting Muno to pull that 300-page trick again for this one.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "If I tried to list out all of Wizard's moves, I'd probably hit the GML code limit.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "never stopped vvizard";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...In any event, your best bet is to take advantage of Wizard's biggest weakness: his melee attacks.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Yeah - he relies so much on his magic that he's got pretty much nothing scary up close.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "So a typical mage sorta deal. Got it.";
i++;
text_gimmicks[cur,i] = 5;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "You should really check out his Steam Workshop page for more info. It's too much to list in a codec like thi--";
i++;
text_gimmicks[cur,i] = 16;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Wizard's Forward and Down Special shoot out magic in front or around himself, respectively, if he has nothing on Deck, Wizard will simply shoot out Gusts of Wind.

With Wizard's Neutral Special, he summons a Spell Wheel, with it he can select from 8 different Elements, after choosing an Element, it will be in Wizard's HUD, aka, Wizard's Deck.
You can have a maximum of 3 Elements on Deck, however some elements can't exist in the presence of others. Let's see each of them in detail:

- Death: F: Shoots out a Beam Forward, it only deals Knockback when the Opponent isn't in hitstun, so time your move right.
D: Creates a Wave around Wizard
Raises Damage overall
Cancels out Life

- Fire: Shoots Fire in front or around Wizard.
Causes the Burn Status
Cancels out Cold

- Cold: Shoots Cold Air in front or around Wizard
Causes the Chill Status
Cancels out Fire

- Rock: F: Shoots a Bouncing Projectile Forward, if you Hold it it shoots a faster and stronger Projectile
D: Shakes the Ground beneath Wizard
Cancels out Lighting

- Shield: F: Creates a Elemental Shield in front of Wizard, this Shield blocks Projectiles
D: Creates a passive Aura around Wizard, which lasts for 10 seconds and protects him from Projectiles
Cancels out itself

- Water: Shoots a Spray of Water in front or around Wizard
Doesn't deal damage, but Pushes opponents
Causes the Wet Status
Cancels out Lighting

- Lighting: Shoots Lighting in front or around Wizard
Can Stun Wet opponents
Cancels out Rock and Water

- Life: F: Shoots a Healing Beam in front of Wizard, if the opponent parries it, they will get stun instead
D: Casts Life in Wizard it self, so it Heals his wounds

In addition, there are also 3 Sub-Elements, which you can get by combining some specific spells, they are:
- Ice (Water + Cold): F: Shoots out a Icicle forward, if you Hold it, it shoots out 3 instead
D: Brings icicles from underneath Wizard
Cancels out Fire and Steam

-Steam (Water + Fire): Shoots a Spray of Steam in front or around Wizard
Causes the Wet Status
Cancels out Cold and Ice

- Poison (Water + Death: Shoots a cloud of Poison in front of around Wizard
Causes the Poison Status
Cancels out Life

Like you saw, some elements can cause different Status Effects, they are:
- Burn: Similar to Zetterburn's, it makes the opponent Burn, thus dealing damage overtime. The Burn status invalidates Chill and Wet
- Chill: It makes the Opponent Floatier, thus being easier to Combo, but they can also be Frozen by using Water
- Wet: The opponent can be Frozen with Cold Spells our Stunned with Lighting Spells
- Poison: Similar to Ranno's, the opponent takes damage if they whiff out a move
A Chill or Wet opponent can stop the Effect by attacking Wizard 3 times, or being hit 5 times.

Blade Enchantments:
When Wizard has any Element on Deck, if he presses the Taunt Button, he will imbue his Blade with those Elements, and then he can Swing the Sword once before getting back to normal. Unless you enchant the Blade with more of the same Element (For example, a Blade with 1x Fire can cast the effect for 1 swing, but if you enchant with 3x Fire, then you can have the effect for 3 Swings). Remember to check out the Sword in the HUD for guidance. Each Element also have different priorities, they are:

woag";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "ok";
text_page_count[cur] = i;



cur++; //Hat Kid
var i = 0;
text_codecs_url[cur] = 2004919133;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Who's this dapper girl?";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 1;
text_contents[cur,i] = "That's Hat Kid! Seems she's visited Aether on her mission to collect all the Time Pieces.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hat Kid's moveset is ever-changing - she collects Pons by hitting fighters and uses them to buy badges.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "wait so is SHE the real shovel knight or what";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...No, Trummel. They're obviously different people.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "how do u know

hes wearing a hat";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I dunno, that's a bit of a reach, even with the shared gimmick.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "A common theme among Hat Kid's badges is ranged attacks. Both her Jab and DAttack get projectiles tacked on.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Hopefully I can get a good approach before that happens.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "Or you could just grab her controller and buy the 1-Hit Hero Badge!";
text_page_count[cur] = i;



cur++; //Don-Chan
var i = 0;
text_codecs_url[cur] = 1966516921;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "Ohhhhh my gosh look at him he's so cute aaaaaaa";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...That's Don-Chan. He's a living taiko drum from Taiko no Tatsujin.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "From what now?";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "weeb music game";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 4;
text_contents[cur,i] = "HEY! Do NOT talk about Don-Chan like that!";
i++;
text_gimmicks[cur,i] = 5;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "dont worry im a drum too. 
i can say it. 

its like ni          "; //he was about to say nice
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "DON-CHAN'S... BOMBS... activate pretty unusually: they won't explode unless he lands a melee hit on you.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Reminds me of the cloud trumpets. But it's for every move? Interesting.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "Yeah. Watch out for his DAir if you're close to the bomb; it traps you in place while the bomb lurks closer.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "At least it's not a real projectile... I can just keep my distance and the bomb will be useless.";
text_page_count[cur] = i;



cur++; //Mr. Game & Watch (Rainbow)
var i = 0;
text_codecs_url[cur] = 2012934808;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Is there another fighter in the match right now? I can't see anyone.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Oh, that's just Game & Watch. He exists in only two dimensions, so he's kind of hard to see.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "...Oh yeah, I can see him if I squint. What's his deal?";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Mr. Game & Watch isn't exactly of this world. Nobody really knows the true nature of how he operates.";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "In fact, during the Subspace Emissary, his body was used as a factory for an army of Shadow Bugs.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "He's actually incredibly dangerous. ...Luckily, he's also pretty friendly.";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "I see. So I don't want to get this guy on my bad side.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "wait how do 2d guys even work anyway


is he allowed to fight";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "You're two-dimensional too, Trum. We're all just sprite-based.";
i++;
text_gimmicks[cur,i] = 17;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "hecc";
text_page_count[cur] = i;



cur++; //Bandana Waddle Dee
var i = 0;
text_codecs_url[cur] = 1978869652;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "it the boi....



banana dee";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "AAAA! It's Bandana Dee!!";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "What's he gonna do, hug me to death? He's adorable.";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "...Pretty much. His NSpecial is a short- ranged heart. If it hits, you'll be his friend and take constant damage!";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "And he's got ANOTHER projectile to mix you up with. Great.";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "as if we're ones to talk. 


i bet his fspecial isnt even transcendent lol";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "Ours isn't either, dumbass. Didn't you see the patch we got earlier today?";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "in my defense

muno wrote that line like forever ago";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "...Hey, Trum, you feelin OK?";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 3;
text_contents[cur,i] = "what yeah totally fine



all hail banana dee";
text_page_count[cur] = i;



cur++; //Lovely Sweet Dream
var i = 0;
text_codecs_url[cur] = 1993599340;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 5;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 0;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 3;
text_talk_exp[cur,i] = 0;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 1;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "";
i++;
text_speakers[cur,i] = 2;
text_talk_exp[cur,i] = 2;
text_contents[cur,i] = "";
text_page_count[cur] = i;



//goose codec: otto: "...what? it's... just a goose."

//sans: do undertale hud and chatter

//wolf etc: spam shine

//briggs: not allowed to swear (nspecial)

//kuuga codec: equi help?

//olympia: "hey muno! love the character." w/ olympiasmug



total_codecs = cur;