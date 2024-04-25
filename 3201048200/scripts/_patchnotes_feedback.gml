
/*Patch Notes

Changes (1.1, 3/30/24):

//Nair feels a bit strong right now, I don't want to nerf it too heavily but here are some minor changes just to bring it slightly more in line.
//Theoretically it shouldnt be that crazy - But if it proves to be too strong going forward i'm willing to change it more.
- NAir late hit damage 5 -> 4
- NAir startup 3 -> 4

//Fair was really overtuned and i kinda overlooked it while playtesting. These changes should make it more situational in its usecase than other aerials like nair or bair, but still have it be a strong option.
- FAir startup 5 -> 8
- FAir endlag 12 -> 14 (18 -> 21)
- FAir landing lag 6 -> 7 (9 -> 11)
- FAir multihit lerp amount slightly reduced (.5 -> .35)

//I added a funny little thing to DTilt, but removed a funny little thing from DTilt.
+ Dtilt now has a back hitbox on his tail that sends at a 70 degree angle with much less knockback. Still combos really well into Up Air, so i'll be keeping an eye on how it hashes out in real games.
- Removed the 1.1x hitstun multiplier from DTilt, a relic of when i initially put it in but forgot to take out. (It didn't do much tbf, but it shouldn't have been there in the first place.)


~ FSpecial now has sound and visuals for when stopped by enemy hitboxes
~ FSpecial now enforces a minimum speed of 2 while grounded
~ FSpecial swing hurtboxes fixed
~ Added runes B, N (and rearranged 1-cost runes)
~ Fixed AI not attacking ever
~ Adjusted the "Courageous" alt to look a bit more, uh ... Courage-y.

*/


/* Changes (1.2, 4/7/24):

//Dspecial was really inconsistent at 'catching' people in hitstun, so i'm adjusting the hitboxes a bunch to accomodate.
    + DSpecial explosion hitbox (grounded) moved upwards and slightly decreased size.
        //Should have a lot more range overall but not cover a bunch of dead space below it, usually under a platform or in the ground.
    +DSpecial explosion hitbox (aerial) made larger.

    + Dtilt 'bite' hitbox (the strong one) priority increased so it hits more often than the back hit - Should feel more consistent to use overall.
    
    ~ Fixed debug taunts being accessible in a normal match.
    ~ Added a stinger sound effect when selecting the character.

/*