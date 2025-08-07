/*
```diff
+--.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,usher changelog.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,--+
```
```diff
+--.+*'"'*+.,.+*'"'*+.usher changelog.+*'"'*+.,.+*'"'*+.,--+
```

===v3.8===
---balancing---
:: JAB ... further changes to avoid problems

---notes---
thanks to spider for exact changes

===v3.7===
---balancing---
:: JAB ... jab 1 no longer has knockback scaling

===v3.6===
---balancing??---
:: JAB1 ... now forces flinch.
-- DTILT ... endlag increased by 2 frames
++ RAINCLOUD STATE ... freezing now only takes a quarter of the max duration away. now you can at best freeze it like 4 times
++ RAINCLOUD STATE ... EXPERIMENTAL: max duration increased by like 200 frames. (500 -> 700)
:::: ... i was thinking to balance it out i could make it so usher getting hit would reduce the duration as a form of like counterplay
:::: ... but 1. there already is parrying, 2. looking at maypul or absa, they only have parrying as the gimmick counterplay, 3. though the range is large vertically, it does require charging and you cannot relocate it as long as it's already out
:::: ... so that's not in, yet. code is ready though

---notes---
heres the raincloud buff you ordered





===v3.5===
---changes---
:: my aerial autocancel attack grid code now has whiff multiplier

---fixes---
:: NSPECIAL-GROUND ... parrying it now makes it go up
:: JAB ... getting parried work proper now

---balancing---
-- USTRONG ... startup increased by 2 frames, 1 before charge and 1 after charge
:: FSPECIAL ... when fully charged, body hitbox active time extended by 4 frames
-- BAIR ... endlag increased by 2 frames



===v3.4===
---additions---
:: extra vfx for FSPECIAL, when your FSPECIAL is fully charged, and NSPECIAL iceball.
:::: ... let me know if there are performance problems.

---changes---
:: HUD ... adjusted
:: JAB ... now a 2 part jab, with tweaked animation. old jab is now jab1 and the v3.1 jab is now jab2.
:::: ... that means you can tilt cancel, i guess
:: NSPECIAL-GROUND ... iceball for ground version looks different now? very slightly.
:: NSPECIAL-GROUND ... EXPERIMENTAL: specifically for NSPECIAL-GROUND, iceball's physics has been adjusted.
:: FSPECIAL ... AG_OFF_LEDGE is now false. that means you don't slide off the edge of the ground into air.
:: FSPECIAL ... the recoil now has ledge snap.
:: FSPECIAL ... umbrella blast now has body hitbox, doesnt scale with charge nor velocity. it's just a weak hitbox
:: DSPECIAL ... EXPERIMENTAL: the end has a little bit of ledge snap?
:: DSPECIAL ... now has a priority 0 hitbox that covers the umbrella(doesnt hit players but destroys projectiles)
:: DSPECIAL ... bouncing off of raincloud is now much higher (VSP -8 -> -13)

---fixes---
-- ANIMATIONS ... miscolored spots have been spotted in PARRY and FSTRONG. like. this whole time. fixed these now
-- DSPECIAL ... fixed an issue where player/cloud bounce velocity behaves weird when you do it really early in the move
-- NSPECIAL-AIR ... fixed hurtbox not being filled green when landing

---balancing??---
this is ordered with attacks instead of uh neutral-buffs-nerfs that i usually do
i usually order attacks in: jab, dattack, tilts, aerials, strongs, specials, and directions n, f, b, u, d
:: STATS ... WALLJUMP horizontal speed increased (5 -> 6)
-- STATS ... WALLJUMP height decreased (11 -> 8)
:::: ... the only reason i have walljumps like that for my chars are because i didnt really know that there was like standards for base cast walljumps and i just liked them to go vertical. thats like, the only reason
:::: ... with the later change on dspecial height and her general recovery height i think its fine to reduce the walljump height
:::: ... and im comfortable with horizontal speed increase with her new horizontal recovery option of dspecial
-- JAB1 (old jab) ... startup is 1 frame shorter. (5 -> 4)
-- JAB1 (old jab) ... now has less forward momentum. (HSP 2 -> 1)
:: JAB2 (new jab) ... EXPERIMENTAL: hitbox angle is 40????
:: JAB2 (new jab) ... knockback growth has been increased (KBG 0.2 -> 0.35)
-- DATTACK ... more of the endlag are properly included in the whifflag, it's pretty dang slow on whiff now
++ DATTACK ... endlag reduced by 5 frames, excluding whifflag (25 -> 20)
++ DATTACK ... hurtbox sliced a little, hands are no longer hurtbox
:: DATTACK ... EXPERIMENTAL: early hit angle now 80, late hit angle 70
:: DATTACK ... base knockback decreased, knockback growth increased (BKB 9, 9 -> 8, 8) (KBG 0.4, 0.2 -> 0.5, 0.3)
++ FTILT ... hurtbox sliced a little too, when arms are out forward it's not hurtbox
-- FTILT ... startup increased by like 2 frames (5 -> 7)
:::: ... with ftilt's things like pivot cancels and things maybe its fine to add like that
++ DTILT ... time between 1st hitbox and 2nd hitbox is reduced by 3 frames. (7 -> 4)
:::: ... DTILT's this inbetween time was always kinda weird so i guess its better
:: NAIR1 ... hitbox timings match the animation frame change a bit more now, this makes early hit shorter by 4 frames (8 -> 4), and late hit longer by 5 frames. (17 -> 22)
++ NAIR1 ... to compensate, early hit base knockback increased by 1. (BKB 5 -> 6)
++ NAIR (both) ... landing lag lower by 2 points (7 -> 5), but no longer has autocancel.
++ FAIR ... startup shorter by 1 frame (17 -> 16)
++ FAIR ... umbrella's hurtbox was cut in half
++ FAIR ... main hit now has hit lockout of 15
++ FAIR ... EXPERIMENTAL: main hit angle is now 45 (50 -> 45)
++ FAIR ... EXPERIMENTAL: main hit knockback scaling reduced a bit (1.0 -> 0.95)
:::: ... maybe i shouldnt have done all these at the same time, lets see how this goes
++ BAIR ... EXPERIMENTAL: hurtbox was cut for the shoes, i noticed thats a thing with like ssbu hurtboxes
++ UAIR ... EXPERIMENTAL: main hit angle is now 50 (45 -> 50)
:::: ... i do like upward angle uair. maybe too good? hard to say, we'll see
:: FSTRONG, USTRONG, DSTRONG ... hit lockout of 15 has been added to all of these
++ USTRONG ... knockback growth has been increased (KBG 1.0 -> 1.1)
++ DSTRONG ... both knockback growth are now the same, and has been increased by 0.05 (KBG 0.75, 0.8 -> 0.85)
++ NSPECIAL-GROUND ... startup reduced by 2, it's now the same with NSPECIAL-AIR (19 -> 17)
++ FSPECIAL ... umbrella blast minimum startup has been shortened by 6 frames
++ USPECIAL ... startup spike hitbox hitpause scaling increased (HPS 0.6 -> 0.8)
++ DSPECIAL ... hitbox size increased
++ DSPECIAL ... endlag, also being the window after cancelling, is shorter by 2 frames.
:::: ... as i tried to buff dspecial more, i felt a disturbance in the air and shivered. even if anyone thinks this move is not good, i am not going to make this move any better. no...

---notes---
thank you spider boi and others, for balance feedbacks!
thank you v_force for the ledge snap they added for slenderman fspecial

i figured out how to make dspecial hit multiple times but im not putting it yet she isn't ready




===v3.2===
---balancing??---
-- UTILT ... 2nd hitbox active frame shorter by 1 frame at the end, it matches the animation now
---fixes---
-- DASH ... just found out theres been a miscolored part that used the eye color in place of green like. this whole time. fixed that




===v3.1===
---additions---
:: new hud element to indicate FSPECIAL spin charge state

---fixes---
:: fixed an issue where in an usher ditto match, the ice hitbox from the rainclouds frozen by usher, belongs to the usher who made the raincloud
:: fixed the issue of fully charged FSPECIAL still shooting out the raincloud even when it's parried.
:: fixed how FSPECIAL spin charge amount was not reset upon getting KO'd.
:: fixed some results screen things. i added some ditto stuff too while im at it.
:: added some extra data for munobird because everyone keeps complaining about it on all of my characters. can you guys please like stop speaking in numbers i speak in windows. like i'm seriously like begging you please. i don't know what exact frame the hitbox spawns. i don't know where to where the endlag duration is, not to mention the whifflag. hitbox spawns on window 2 and everything from there is endlag. seriously please stop i'm crying
:: in specific, IASA windows are now excluded from the endlag.
:: some extra notes that were actually there before is now present because i fixed the attack index id number. i had it wrong before.

---balancing??---
++ NSPECIAL-GROUNDED ... hitbox lifetime for this move is different from NSPECIAL-AIR, but it is now even longer a bit. (80 -> 100 frames)
++ FSPECIAL ... spin charge scaling for the hitboxes are stronger for knockback growth. as of v3.1, damage max is 11, bkb max is 8.10, kbg max is 0.85.
++ DSPECIAL ... EXPERIMENTAL: it can now be exited-out-of early if you land on ground && you are not holding SPECIAL.
-- FSPECIAL ... recoil velocity no longer applies when you were parried.
-- FSPECIAL ... 1st spin when starting charge no longer charges 

---notes---
early bugfixes and tweaks. looks like ive missed a bunch a stuff.
not gonna make any more changes for the time being, let things sit a little bit for the early days
open for inputs!



===v3.0===
:: "version 2.0" is overdone so it's version 3.0 now. Yeah that's the only reason.

---ameliorations---
:: every single animation has been touched up!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! every single one!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
:: new portrait!

---additions---
:: new jab animation! that means new hitbox size and new frame data
:: new dattack animation! taller, but less distance.
:: completely new dtilt!
:: new nspecial-ground! a re-purposing of old dspecial throw animation, she throws the ice ball up high with the umbrella. it's slightly slower to start than nspecial-air.
:: completely new dspecial! a forward leap riding the umbrella. it can be held and you bounce on grounds, and with the hitbox you can bounce on opponents too! only once though cause i couldnt figure it out
:::: after a bit, you can go out of it by releasing special, pressing parry, or pressing jump. around the same time, you'll be able to fastfall too.
:::: that means you don't have a raincloud throw anymore, but it has been moved to...
:: new fspecial! a chargeable umbrella blast with a recoil that scales with how much you charged. it's interestingly versatile, maybe?? hopefully???
:::: and as a bonus, when it's fully charged, it shoots out the raincloud, on its own, not attached to a player. you can interact with it the same way you've always done, but it doesn't follow the opponent anymore!!
:::: you can also bounce on it with dspecial. only once though cause i couldnt figure it out
:: new taunt!
:: ALT COLORS ... Palette Set D is now available. re-includes some fan favorites like the Sorbet alt!

---changes---
:: ALT COLORS ... like 95% of the alt colors had their shading strength value tweaked.
:: ALT COLORS ... alt color Overcast has been tweaked to be hopefully more interesting than just a straight up a mash of grey colors, similarly for alt color Lens too
:: ALT COLORS ... Dreaming Starburst alt has a new mask texture thanks to Reiga! it also no longer does the attack pattern fade thing.
:: UTILT ... hitbox location and size has been tweaked in accordance to the new animation.
:: NAIR1 ... early and late hitbox values are now swapped, along with some tweaks.
:: USPECIAL ... umbrella float has directional input sprites now
:: RAINCLOUD ... the width of the rain area now utilizes Easing, and it is now wider for longer

---balancing??---
== NAIR1 ... stronger hitbox is now weaker
++ STATS ... run speed increased. (5.75 -> 6)
++ STATS ... max air speed increased. (3.75 -> 4)
++ NAIR2 ... early hitbox is now taller. (48 -> 58)
++ USTRONG ... middle hitbox shape is now a rounded rectangle, and it is also taller.
:::: this way should be able to hit platforms a bit more easier. it was either this or make it unable to
-- no nerfs?

---notes---
now that the worst parts of her is done and gone, let me know any feedback to nerf her if necessary.
open for inputs! as i always say.



===v1.9===
---changes---
:: alt color Sorbet moved somewhere else
:: in its place, we have the Seasonal alt now

---fixes---
:: fixed an issue where FSPECIAL land-cancelling didnt work
:: fixed an issue where after playing certain characters, usher's alt list might look... Broken

---notes---
i wanted to put changes on FSPECIAL landcancelling but
currently usher is in an online majors roster so it's in a patch lockout. hold on tight! im also busy and also want to rest



===v1.8===
---changes---
:: it's v1.8 now. all of a sudden. yeah.
:: victory dialogue for asra and venus yeah i'll keep updatin for all-star heroines chars

---notes---
an update to hopefully address issues.



===v1.2===
---changes---
:: alt color Hymn moved somewhere else
:: alt color Starlove has been moved to Hymn's former slot
:: alt color Seasonal has been added after Abyss and Early Access
:::: ...is what i would write, but Usher's confirmed to be in the roster of major tournament Riptide!!
:: so, for now, replacing Seasonal, riptide and poolparty-themed alt color Sorbet is added
:::: seasonal alts are ready tho

---notes---
just alt color stuff havin' fun.
still open for feedbacks like balance changes yknow!
but since a major is comin' up i won't be able to patch til that's over.



===v1.1===
---changes---
:: CPU AI stuff slightly improved.
:::: i think ive imbued her with like 30% of my fighting power
:::: to think i could... i could make her smarter.... kinda spooky
:: added little vfx on successful pivot cancel ftilt

---fixes---
:: fixed issue where in practice mode, when CPU Usher's action is set to stand (or anything other than fight), she can still act on her own somewhat. (the classic not-detecting-"fight"-option-issue)

---balancing??---
-- RAINCLOUD STATE ... all freezing hitbox now applies longer extended parry stun on top of what's already there.
:::: normal freeze applies 1/5 more frames, FSTRONG freeze applies *2 more frames.
:::: as you can imagine, this is a janky implementation. who knows if anything else is broken...
-- FTILT ... looking at it now, i agree, that is pretty dang fast. increased endlag by 2 frames (excluding whifflag, whifflag's gon add up yknow)
-- walljump_vsp -1 (12 -> 11)

---notes---
some tiny early changes.
open for inputs!



===beta to v1.0===
---additions kind of---
++ pogumbo compat
++ mamizou compat
++ scoop compat
++ results screen dialogue
++ miiverse images (waiting for 4 more though)
++ star ko/screen ko compat
++ alt color ASHe now has special treatment with particles! many of the ASHe characters has this also!
++ alt color Dreaming Starburst now has an EXTRA special treatment! fancyyyy!!
++ added CPU AI stuff. did you know ive never added this ever since Acid Rainbows?????????
:::: i slightly figured out how to do ai_update stuff so i was messing around with it, now i think she can fight slightly ok

---changes---
:: alt colors Moondusk, ASHe, Swaying, and Mirror adjusted
:: did you know FSPECIAL's land-cancelling is disabled if you are holding SPECIAL? i.. even i didnt remember i did that. anyways, it now checks for ''special_pressed'' being false, which means it'll count off first 6 frames of SPECIAL being pressed. hopefully this reduces it happening accidentally?
:: munobird notes on aerials extended to be loud and clear about actual landing lag value.

---fixes---
:: alt color Anemone had a wrong color for the CSS icon. fixed that

---balancing??---
-- BAIR ... startup increased by 2 (5 -> 7)
-- BAIR ... late hit hitbox active frame decreased by 2 (11 -> 9)
-- FSPECIAL ... startup increased by 2...? (7 -> 9)
-- FSPECIAL ... cooldown increased to 4 frames (3 -> 4) and it applies on land cancel now too
:::: both: people's been pointing out these moves are kinda overcentralizing sometimes and i wouldnt like that, so both's been toned down
++ FSPECIAL ... travels slightly more distance. (relevant number: 10 -> 11)
-- UTILT ... startup increased by 1 (4 -> 5)
:::: slightly iffy on this but it really was weird how utilt was faster than jab so

---notes---
thank you all for all the support!
open for inputs!



===beta v.RC2===
---additions kind of---
:: some compats are in but expect em to be broken or incomplete rn

---balancing??---
:: USTRONG ... angle is now 90. idk
++ USTRONG ... BKB increased by 1 (7 -> 8)
++ USTRONG ... startup decreased by 1 (10 -> 9)
:: DSTRONG ... hitpause increased (BHP 7 -> 9, HPG 0.6 -> 0.7)
-- DSTRONG ... uh...startup... increased by 1???? (6 -> 7)



===beta v.RC===
---changes---
:: most of the alt colors in the palette selection A has been adjusted, in hopes of appeal and distinction
:::: notably, big changes were made to alt colors Cobalt (Blue), Sundawn (Red), and Otherside
:::: sorry if anyone liked one of these before, kinda a drastic changes being made to most of these
:: alt color Song renamed to Overcast
:: alt color Otherside renamed to Twinleaf
:: DSTRONG umbrella no longer has weird shading and outline

---fixes---
:: USPECIAL ... it now properly stops upward velocity if it is parried

---balancing??---
-- DATTACK ... late hit hitbox lifetime halved (16 -> 8)
-- FSPECIAL ... startup increased by 2 frame (5 -> 7)
:::: im glad about this change, i do want fspecial be kinda fast but i dont want her gameplay to be fspecial-centric
:: RAINCLOUD STATE ... gradual on-hit reduction now decreases more each hit (relevant number: 35 -> 55)



===beta v.jk===
long time coming
---THE TODO---
[v] fix dspecial grab ungrabbable issue SOMEHOW
[v] when raincloud is iced, it counts up an internal hit counter, and it eventually makes raincloud lose its duration on ice-hit .... i think only 1st hit should be a timer increase
[x] or atleast it could be that iceballs does not increase timer at all
[v] uspecial umbrella open timing extend, for mix up thingy
[v] uspecial killpower buff a little
[v] uspecial fix with the spike hitbox only being there if usher is aerial etc
[v] fspecial spamming issue? add slight cooldown? but remove cooldown when landcancelled?
[v] id be fine with fspecial startup increased by 1 i think im not sure

---changes---
:: alt color Doomsday Forever adjusted, should be more appealing to use now hopefully
:: DSPECIAL ... sound effect added
:: RAINCLOUD STATE ... added sound cues to application and end
:: USPECIAL ... grounded/aerial hitbox on the startup hit, now depends on usher's groundedness and not the opponent's

---fixes---
:: fixed issue where dspecial grab "fails" in some particular specific situation. phew!

---balancing??---
++ USPECIAL ... going into umbrella mode, extended the input window for about like 7 more frames at the end
:::: looks a lil odd but probably worth it
++ USPECIAL ... kick hit early (strong) hit KBG increased by 0.1 (0.7 -> 0.8)
-- FSPECIAL ... startup increased by 1 frame (4 -> 5)
-- FSPECIAL ... 3 frames of cooldown to itself is applied at end (does not apply when land-cancelling)
-- RAINCLOUD STATE ... it now only increases the duration the 1st ice, after that it gradually decreases the duration more and more you ice it
-- RAINCLOUD STATE ... in addition, hitstun no longer stops decreasing the duration (1/3 the speed of normal in hitstun)
:::: will still stop in hitpause though



===beta v.Hi===
hi
---changes---
::bair has a late hitbox now, active for 5 frames after main hit. values resemble that of ranno bair sour hit.
++raincloud duration is increased from 300 frames to 500 frames.
::::in isolation, like putting cpu into it in practice mode, this seems like a long time, but in a real battle you're gonna be fighting and taking hits.
::::as ive written in previous changelogs, hitting usher decreases the timer by 3rd of its max duration, so it'll still take the same amount of hits to remove the status from you.
::::can always decrease with updates anyway! i may also make it so hitting usher decreases the timer more, like half.
--made it so activating freeze on raincloud no longer restores raincloud timer to max, and now just increases by 4th of current timer amount. cant use the same raincloud forever!
::::i might apply this to using dspecial again while there is already raincloud, too, but uh i'll see.
::relocated alternate palette set icon thing
::css bg is now Water, css info button text filled in

---fixes---
::fixed uh air idle after walljump (its like a bandaid fix but hey it works)
::fixed issue where end of raincloud rain was jittery. turns out it was a code order issue

---balancing??---
++nair late hitbox size is extended slightly, mostly backwards
++nair2 hitbox size adjusted at the end (it is extended downwards)
++air dodge speed(distance) increased, 7 -> 8, 8 is maximum a base cast char has
::ground friction decreased, 0.6 -> 0.4, experimental
::adjusted wavedash values according to this change also for the sake of adjusting it too idk how well it went
::uspecial intro aerial hit (one that spikes) hitpause increased
++uspecial umbrella open hop velocity increased by 1 (its not much)
--moonwalk accel 1.2 -> 1.1
::walljump hsp decreased because holy heck



===beta v.G===
this is just a beta changelog so im not gonna give exact values im too lazy to brain my way around these
---changes---
::uspecial has hud_offset
++utilt has a stronger sounding hit sound now. it makes sense, bkb got adjusted last patch and all that
--fspecial, when landing, can now be continued instead of land-cancelled, by holding special.
++fstrong sfx adjusted! this is the best i can do with base cast sfx

---fixes---
::nspecial on rain, while i did change to not make it do hitpause, i forgot to not make it put hsp/vsp to old_hsp/old_vsp. fixed this now

---balancing??---
::nspecial now has hitstun multiplier of 0.75
::to make up for it though it now has bkb 7 (6 -> 7)
--nair startup +1
++utilt hurtbox cut off for umbrella. this should help against aerial opponents?
++dtilt hurtbox has ponytail parts removed
++ftilt hurtbox has umbrella part cut in half, hopefully you can Poke with that question mark ?
++dstrong hurtbox has ponytail parts removed
++fspecial hurtbox much reduced for umbrella. but it's not invincible, not yet
++uspecial hurtbox cut off for umbrella. same for held uspecial too! hope there's some use for that.
--fspecial endlag -3~
++apparently i didnt mention it anywhere so idk when i changed it but bair endlag -3~? this change may have happened along with the landinglag nerf
--fstrong "far (weaker)" hit kbg reduced (1.2 -> 1.1)
--fstrong hitboxes' hitpause values increased in according to ranno fstrong.
++RAIN status effect's ICE hitbox cooldown has now been reduced (50 -> 30)




===beta v.F===
this is just a beta changelog so im not gonna give exact values im too lazy to brain my way around these
---additions---
::nothing

---fixes---
::HOPEFULLY fixed issue where applying dspecial for the first time in game session makes it show rain tiled to the whole screen for like 1 frame or so

---changes---
::fstrong can now be angled with rightstick too, if youre using strongstick or so or if you want to use it to angle anyway too
::uspecial1 hsp clamp is now 3 (2.5 -> 3)
::some of the window data now includes messages for future generations
::swapped around uspecial sounds
::freezing rain with nspecial now no longer applies hitpause on usher
++freezing rain with fstrong now has a different hitbox summoned on the opponent. it is dspecial hitbox 4. angle 50, bkb 6, kbg 1.2, same values as the current fstrong far (weaker) hit except the hitpause. i think its fine cause you can only do fstrong on ground.

---balancing??---
++jab can be tilt-cancelled now 3 frames into endlag
++nair base knockback increased to 5, other values also increased a lil too, the hitpauses
++uair now has a bit more active hitbox at the end where theres a backwards launching hitbox thing.
::when i decreased damage for uair before somewhere, i forgot to decreasee damage for uair backwards hitbox so i did that
::utilt has now bkb 7 and kbg 0.5. this nerfs amount of combos i think but it will at least be reliable, probably for the better
++dstrong bkb and kbg increased, hitpause too
++fair now has 13 damage (10 -> 13)
::uair bkb is now 5 (4 -> 5)
::bair bkb is now 6.5 (5 -> 6.5), hitpause growth increased
--bair landing lag now 8+ (7 -> 8)

--notes--
++ma personal thanks goes to mallow




===beta v.E===
this is just a beta changelog so im not gonna give exact values im too lazy to brain my way around these
---additions---
++portrait!
++CSS portrait!
++sound when cloud is applied!
++when rain is frozen, the hitbox that hit rain now spawns hfx!

---fixes---
::fixed dspecial masking in playtest screen (thankyou to jh)
::fixed issue where when you dspecial an opponent who has raincloud already applied, an another raincloud spawns

---changes---
::colors.gml color range tweak (does not affect gameplay any bit)
::idk if ive mentioned it but raincloud timer is 300 now, i did this initially for demonstration purposes but i think i will keep it, idk if this change was on v.D or not
::when you've been rainclouded, hitting usher now decreases the timer by 3rd of its max duration.
::[EXPERIMENTAL] dspecial throw can now be turned around. might revert

---balancing??---
++dspecial grab hitbox is now Taller (height 24 -> 32)
++fair startup -1
--fair landing lag +1
++ustrong endlag -2~




===beta v.D===
this is just a beta changelog so im not gonna give exact values im too lazy to brain my way around these
---additions---
++taunt added
++dspecial gimmick added! places a raincloud on opponent on-hit. its hurtbox can be hit by ice moves. hurtbox can be seen in the hitbox view
::as the opponent, you can either wait it out (it's on timer), or hit usher. usher getting parried in general will remove it for everyone too
::in a free for all setting, ANY usher can hit the raincloud with ice too.

---changes---
::color alt system half-re-coded, might work better, might not, who knows
++reiga alt has special code

---fixes---
::uspecial getting parried now resets vsp proper.
::same treatment done for dattack.

---balancing??---
::nair2 can now be done as fast as you hit nair1 early hit
::nair2 hitbox values changed alot enough to have different uses. atleast hopefully?
::notably, it now has kb values identical to that of orcane dair. = weak spike
--because of this change, nair early hit and nair2 hitbox damages reduced (early 5 -> 4, nair2 5 -> 3)
++nair2 has less landing lag (9 -> 7)
++nair2 endlag reduced by like 8+ frames
--fair startup +2, total startup is now like 18
--i think uspecial distance is about half now
::ustrong angle now 80
::ustrong angle flippers are now flipped
::added hit lockout of 10 to fstrong
::uspecial angles are now 90, formerly 80
++nspecial endlag -7
++fstrong close hit extended backwards by quite a bit - it can still miss when youre too close but it should be better





===beta v.C===
this is just a beta changelog so im not gonna give exact values im too lazy to brain my way around these
---additions---
++uspecial2 been put! press special again at uspecial upward peak
++all moves have been received dust effects treatment yes

---changes---
::fair proper
::uair proper
::dair proper
::dattack proper
::dstrong proper
::uspecial proper
::dspecial tweak
::dtilt sweet sfx

---balancing??---
++ustrong startup -1
++dstrong bkb both +0.5 = 6
++fstrong bkb far (weak) now 6. bkb close (strong) now 7.
--nair2 has more landing lag (9)




===beta v.B===
this is just a beta changelog so im not gonna give exact values im too lazy to brain my way around these
---additions---
++uspecial now has hitboxes & proper values, vfx too
++various hitboxes have proper values now like the hitpause n vfx n stuff, but not all yet
++dspecial is there, still no gimmick for it tho
++added 6 alts. as such the alts have been slightly reordered (this took a good 30 minutes or so)

---fixes---
::added unload.gml and made it reset synced var to 0
::fixed issue where you can b-reverse fspecial.... AFTER IT HAS ALREADY HIT

---balancing---
++nair landinglag reduced by 2 (initially had it as dr mario + 1 = 8 because it had like extra functions because of hit2 but welp). it is now 6
++fair landinglag reduced. it is now 8
++bair landinglag reduced. it is now 7
++uair landinglag reduced. it is now 7
++dair landinglag reduced. it is now 7
++nair endlag reduced by like 8+ frames? end windows also are now walljump cancellable
++applied IASA to fair endlag, so that basically halved fair endlag
++utilt 2nd hitbox horizontally bigger backwards cause it LOOKS like it should hit more. woe of being too close to dr mario
++dtilt sweet dmg 6 -> 7
++applied whifflag to fspecial and made base endlag on it shorter. this should make it so it ends faster if you hit it

--uair damage 10 -> 8
--uspecial distance reduced ?
--did you know dtilt can be cancelled into dspecial? well i made it happen later and it is now only doable on-hit.
--dstrong startup +2
--ustrong startup +2

??ustrong angle 60 -> 70
??ustrong bkb 4 -> 7
??ustrong kbg 1.3 -> 1.0










*/