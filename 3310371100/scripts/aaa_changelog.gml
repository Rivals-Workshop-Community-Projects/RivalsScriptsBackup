/*
```diff
+--.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,usher changelog.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,.+*'"'*+.,--+
```
```diff
+--.+*'"'*+.,.+*'"'*+.usher changelog.+*'"'*+.,.+*'"'*+.,--+


===IDK v.A===
:: STATS ... max air speed 3.75 -> 4.
:: STATS ... run speed 5.75 -> 6.
:: DTILT ... no longer has sweetspot. can not cancel
:: FSPECIAL ... weird now. has no landcancel
:: UTILT ... 2nd half hitbox main hit has angle flipper 3. might mean backward hit is easier now. idk
:: RAINCLOUD STATE ... disappears upon freeze usage.
:: RAINCLOUD STATE ... max time 500 -> 100.
:: RAINCLOUD STATE ... slightly faster timer decrease when they are offstage.
:: FAIR ... [NYI] 




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