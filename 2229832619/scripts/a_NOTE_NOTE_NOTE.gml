/*

hyuponia - n/a

this file is created as a note to myself. this should be removed by myself before release.
it you are reading this, well, i've forgotten and failed at doing this, yes.

vsound stop for something i don't remember, playtest
vreset air nspecial duration in set_attack, allowing ground nspecial to properly shorten air nspecial
xcancel to nspecial from something?
-laser shockwave vfx in post_draw?
vdspecial laser less recoil (like, super less)
vvictory theme, abyss results cut
vshorten fspecial further? maybe endlag
vquicken uspecial slash article hit a little more
vuspecial article slash parriable with extended
vbuffs to fstrong, maybe damage, maybe startup (faster charge release?)
-full charge indicator, maybe done with rotating circles whilst SC_GROUND_NEUTRAL, or maybe with init_shader
vbubble counter go to cooldown for few frames after down special electricity
vadditionally, "deactivated" should take priority over elec
vquicken nspecial void hitbox spawn while in bubble
vshorten grounded nspecial height distance
xquicken fspecial drastically in startup?
v"true blue" "true green" "true red" etc alts, non-elemental roaaco
vadd alt select sound and uncomment
-deathbox when slashe, bird guy and n/a screams at the same time
vfspecial bubble shade color needs to inherit previous color that is now unaffected by current colors.gml
vfspecial into cooldown while n/a itself is parried
v"charged" sound can play twice. in alternate playing method thing take notice of if n/a is in dspecial and in window or not
vhardcode bubble slash angles for each slash because most attacks have same angles
vfix dair












N/A has been in works since November 15, 2019.

if you are reading this anyway, i might as well do some shoutouts to some people;

cyel/"cat" - general support, big help with usage of angle code, for always being there for me
supersandbag, todd z - for being a friend
supersonic, shplurmff, sai, sleepyplayer16, shock, fungiwizard - for supporting me, also most yall name starts with an S
archytas, tritone - for being hyped for the character
fespadea - for little coding help
artistofseer - for explaining to me what zoners usually are, which helped me get an idea on uspecial
trail mix - for scaryami's css bg color that i followed suit (gave me permission btw)
captain technicality - for aseprite export script
soundcloud undertale au music community and eebrozgi - for all the heckan cool music pumpin me up to work through this

you've all helped me get this far. i must thank you all

*/


/*
Beings make metaphora of us gazing back.
We do not.
We are always watching.

It's here.
who
The intertuption when we talked about Acid Rainbows.
It's here.

High certain we had reached your contact once back whence. We recognize your element.
The elements, the aspects, attunement, aura of all beings.

Huh, I do remember reading about this specific abyss creature in the old documents. Let me make sure...
hell no this is not the time to read books
...Yeah. This is documented as N/A. Some say this documented name is an acronym, but I'm sure it's just a placeholder.
For all intents and purposes, let's just use that and call them N/A.

Ones have given this vessel name. Curious.

how are you so calm facing against unknown
Hey, as long as it's documented, it's not unknown to us!
...Although it's barely written upon in the documents...

Uh, so, I see that you can speak. And communicate, even?

This is one of the few formae have we given cognitio.
We grant this habilitatum sparingly.

I must ask. What do you guys want, going as far as invading upon everything?
If some forms can talk, can't we discuss over this and come to an agreement?

It would not be wise for any being to disclose one's stratagem.

Fair enough. I see you are not so simple.

A hive mind would not be any simple.

Okay, while this guy is not fighting, we gotta discuss how we fight this thing!
Muno, can you help us out?
Unfortunately, not really. It's a new character.
Alright. Trummel, this freaky axolotl is primarily documented to summon a pure black bubble.
Apparently, this bubble is safe to pass through, but once any force is applied to it, it violently explodes and hurt us.
It happens quick too, so there aren't any hopes of defending against it once we end up popping it.
We just gotta try not to pop the thing... Oh, the document says arrows and bullets simply passed through the bubble.
Maybe it doesn't explode against projectiles? Let's take note of that.
It is also observed that N/A can send surge of energy through the bubble, damaging people inside it in rapid succession.
There's a vague paragraph regarding it that, while doing so, N/A seemed to be charging something, and charged for a while.
If N/A can charge up something for what is said to be a while, I think it means big trouble.
We should pay attention to when they might have fully charged something, or we could just interrupt their charging.

Now, abyss creature, for convenience in adressing, we will call your form N/A for the time being.
N/A, must we really fight?

All conflicting forces are fated to fight.

Alright. Trummel, you think we can return home safely fighting against a high elite of the Abyss?
nothing stopped us before   even mcdonalds mascot
Right! Trummel. Let's have a gourmet dinner if we can get out safe, alright?
We can't let this be our final battle. Let's go!
lets go man
*/