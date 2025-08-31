/*
but I can't sleep until this is done.
they're in my head, they're in my soul.



===v0.7===
------
:: i was reminded of it today so i went ahead and made JAB check for invincibility. now it no longer deals damage-over-time piercing through invincibility.
:::: ... this was only really a thing because i was stubborn JUST to keep the move Weird. it was only a matter of time that this was addressed

------
A ship in harbor is safe, but that's not why ships are built



===v0.4===
------
:: run animations improved
:: ustrong animation adjusted. it's taller

------
:: because of USTRONG animation change, it's so tall now so the hitbox is now separated in 2 parts
:: JAB and SLENDER SICKNESS no longer apply on teammates (thanks to your comments. i read your comments. my eyes see)
:: slenderman can now tank 1 hit from slender-sick opponents, unflinched. it'll remove slender sickness from them of course
:::: multihits should be enough to attack safely. (i was too lazy to figure out how to apply can_hit stuff)
:::: projectiles no longer remove slender sickness, however...
:: SLENDER SICKNESS now applies static as indication on projectiles.
:: when projectiles from slender-sick opponents hits slenderman while he's in JAB, DSPECIAL or FSPECIAL, slenderman will teleport behind them like DSPECIAL.
++ FSPECIAL snaps to ledge now
:: FSTRONG grab stab thingy on-hit effects adjusted it should feel better
++ being near slenderman while they use FSPECIAL or USPECIAL now slowly builds up slender sickness
:: a bunch of SFX and VFX adjustments

------
++ STATS ... walk speed increased (2 -> 2.25), dash speed increased (5 -> 5.5)
++ STATS ... max 1st jump hsp increased (2 -> 3),  max leave ground hsp increased (2.5 -> 3)
:: STATS ... shorthop height increased (6 -> 6.5), fastfall speed increased (13 -> 15)
:: STATS ... air friction increased (0.04 -> 0.06)
:: STATS ... knockback adjustment decreased (this affects knockback weight) (1.1 -> 1)
:::: if chars like hodan is heavy then maybe how tall slenderman is can justify this heaviness idk
++ JAB ... time until you can parry-cancel is now equal to the minimum time jab needs to be active until it can end
-- FTILT ... startup increased by 1. hitbox active time reduced by 3, and damage decreased. (8 -> 6)
:: DTILT ... they merged the endlag windows i think this is going to fix like roundings on whifflag or something
:: DATTACK ... majorly different. it is now a much quicker move with less endlag, and no longer a kill move.
:: NAIR ... the hitbox is now only active for 3 frames, removing the late hitbox.
++ NAIR ... in exchange, endlag is much shorter by about 9 frames.
:: FAIR ... hitbox angle lower (70 -> 60), knockback growth and base hitpause reduced (KBG 1 -> 0.85, BHP 9 -> 8)
:::: it seems with other changes in his kit being able to combo into FAIR more, FAIR needed to be adjusted accordingly.
:: BAIR ... majorly different. it is now 6 active frames with 1 frame being the early hit.
:::: it seems BAIR was formerly one of slenderman's most important moves, having so much quality of a useful move.
:::: now with this change, hopefully it's not a central part of his gameplay anymore?
:: UAIR ... it used to have 2 different hitboxes with different stats, now they are both the same.
++ USTRONG ... it's taller now.
++ USTRONG ... hitbox is now angle 90, hitbox shape is now square, and knockback growth increased (1 -> 1.1)
++ DSTRONG ... pre-charge startup increased by 1, post-charge startup decreased by 11.
++ NSPECIAL ... throw endlag shorter by like 2 frames
:: NSPECIAL ... throw hitbox angle now 90, base knockback higher and knockback growth lower (BKB 6 -> 7, KBG 0.4 -> 0.3)
++ FSPECIAL ... if hit while in super armor, melee hit would instantly apply slender sickness, and if projectile, buildup.
++ DSPECIAL ... time before shadow going active is now quicker (30 -> 20)
-- FTILT, NAIR, BAIR, FSTRONG ... no longer applies slender sickness buildup.

------
gigantic thanks to V_Force and his pals for doing lots of balance work and testing them extensively.
most of the attack changes were done by V_Force.
thanks for playing this character and for helping me.

i think they wanted SLENDER SICKNESS to naturally end by a timer, but i decided not to include it, sorry

------
Never turn around when you don't know what is chasing you



===v0.3===
:: ignore the version i accidentally pushed an update

------
:: "proper" release. real name, real thumbnail, etc. the CSS obscuring is gone now as well, it was cool but oh well
:: SLENDER SICKNESS visual effect "depth" adjusted finally idk why i didnt bother til now

------
:: fixed some frames in CROUCH animation having wrong colors. thanks to the person who let me know! you know who you are. you are you

------
Nothing is so much to be feared as fear



===v0.1===
:: it being v.0 despite it being finished is intentional
:: by nature of changelogs, it can include spoilers. if you want to keep some things a mystery, keep out
:: not that it matters for long, i'm gonna release the character "proper" tomorrow anyway with proper names and such anyway

------
:: SLENDER SICKNESS now no longer disappears upon slenderman's death, haunting you, haunting you, haunting you
:: SLENDER SICKNESS' % fluctuation is now 11% instead of 1%. this has many implications on gameplay but i'll let you think
:: FSPECIAL, when hit while in superarmor, now applies SLENDER SICKNESS BUILDUP on opponent depending on the hitbox's damage
:: when an opponent with SLENDER SICKNESS hits FSPECIAL in superarmor, it also applies the hit's damage on them
:: DSPECIAL now has a slight additional visual effect on slenderman himself

------
:: bandaid fix for online HUD order, at least on 2v2, i hope it works i did not test it yet
:: fixed issue where the grabs on some characters were broken, where they stick to ground.
:::: this was caused by some characters having non-integer char_height values. just a round() fixes the issue
:::: this fixes grabbing spamton

------
:: FSPECIAL ... endlag shorter by 6 frames (23 -> 17)
:: FTILT ... startup faster by 1 frame (8 -> 7)
:: FSPECIAL ... is now invincible to projectiles (while in superarmor)
:: JAB ... is now invincible to projectiles (except endlag)
:: DSPECIAL ... is now invincible to projectiles (except endlag)
:: DSPECIAL ... shadow length increase rate increased from 4 to 4.5, given how easy it would be to just. jump
:: FSTRONG ... grab hitbox now bigger by 4 pixels vertically. this will now hit sylvanos and orcane. not if they crouch though
:: FSTRONG ... throw (stab) hitbox now bigger, not that it matters too much but hey

------
The usefulness of a cup is in its emptiness
















*/