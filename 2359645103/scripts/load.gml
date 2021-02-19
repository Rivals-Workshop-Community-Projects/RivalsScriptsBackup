sprite_change_offset("idle", 54, 78);//cape modifiée
sprite_change_offset("hurt", 80, 128);//cape modifiée
sprite_change_offset("crouch", 54, 78);//cape modifiée
sprite_change_offset("walk", 80, 128);//cape modifiée
sprite_change_offset("walkturn", 48, 128);//cape modifiée
sprite_change_offset("dash", 80, 128);//cape modifiée
sprite_change_offset("dashstart", 80, 128);//cape modifiée
sprite_change_offset("dashstop", 80, 128);//cape modifiée
sprite_change_offset("dashturn", 48, 128);//cape modifiée
sprite_change_offset("run2", 78, 86);

sprite_change_offset("jumpstart", 80, 128);//cape modifiée
sprite_change_offset("jump", 80, 128);//cape modifiée
sprite_change_offset("doublejump", 80, 128);//cape modifiée
sprite_change_offset("walljump", 80, 128);//cape modifiée
sprite_change_offset("pratfall", 80, 128);//cape modifiée
sprite_change_offset("land", 80, 128);//cape modifiée
sprite_change_offset("landinglag", 80, 128);//cape modifiée

sprite_change_offset("parry", 72, 128);//cape modifiée
sprite_change_offset("roll_forward", 64, 128);//cape modifiée
sprite_change_offset("roll_backward", 64, 128);//cape modifiée
sprite_change_offset("airdodge", 64, 128);//cape modifiée
sprite_change_offset("waveland", 80, 128);//cape modifiée
sprite_change_offset("tech", 80, 128);//cape modifiée

sprite_change_offset("jab", 69, 86);//cape modifiée
sprite_change_offset("dattack", 128, 128);//cape modifiée
sprite_change_offset("ftilt", 64, 128);//cape modifiée
sprite_change_offset("dtilt", 52, 79);//cape modifiée
sprite_change_offset("utilt", 64, 128);//cape modifiée !hurtbox à faire
sprite_change_offset("nair", 106, 134);//cape modifiée
sprite_change_offset("fair", 64, 120);//cape modifiée
sprite_change_offset("bair", 128, 120);//cape modifiée
sprite_change_offset("uair", 64, 120);//cape modifiée
sprite_change_offset("dair", 64, 128);//cape modifiée
sprite_change_offset("fstrong", 160, 128);//cape modifiée
sprite_change_offset("ustrong", 64, 120);//cape modifiée
sprite_change_offset("dstrong", 64, 112);//cape modifiée
sprite_change_offset("nspecial", 64, 128);//cape modifiée
sprite_change_offset("fspecial", 64, 128);//cape modifiée
sprite_change_offset("uspecial", 128, 192);//cape modifiée
sprite_change_offset("dspecial", 64, 128);//cape modifiée
sprite_change_offset("taunt", 64, 128);//cape modifiée
sprite_change_offset("taunt2", 64, 128);//cape modifiée
sprite_change_offset("taunt3", 84, 86)

sprite_change_offset("respawn", 74, 112);//cape modifiée
sprite_change_offset("spawn", 128, 192);//cape modifiée

sprite_change_offset("plat", 82, 332);

sprite_change_offset("rat", 64, 64);
sprite_change_offset("rat_box", 64, 64);

sprite_change_offset("spark", 16, 16);

sprite_change_offset("heart", 13, 22);


/*IN THIS PATCH:
{1.2, Jan. 16, 2021}

BUGS SQUASHED:
-fixed platform animation not representing where King Knight's hitbox was
-hearts spawn every 5 CONSECUTIVE hits (previously, consecutive hits were sometimes not required)
-hearts can now be properly picked up on the ground and on platforms
-fstrong recovery frame animation tweaked
-roll cancel attack sometimes used the wrong knockback values

BALANCE:
-nair landing lag 7 -> 18
-bair landing lag 12 -> 17
-fair sweetspot base knockback 8 -> 6
-fair sweetspot knockback scaling .9 -> 1.1
-fair sourspot base knockback 5 -> 4
-fair sourspot knockbakck scaling .5 -> .6
-fstrong sweetspot knockback scaling 1.0 -> 1.1
-dtilt knockback scaling 0 -> 0.3
-dtilt base knockback 3 -> 7
-dtilt damage 1 -> 6
-dtilt launch angle 20 -> 80
-jab 1/2 recovery frames 5 -> 4 (timing for jab cancels adjusted)
-jab 1/2 damage 5 -> 3
-jab 3 recovery frames 6 -> 10
-jab 3 damage 9 -> 7
-ftilt recovery frames 6 -> 14
-ftilt whifflag 9 -> 21

GAMEPLAY:
-King Knight's combo is now on a timer; failing to hit an opponent within 1.5 seconds of your last hit will cause your combo to go down.
-Hearts will fly out of the opponent when your combo hits 5
-Heart Hammer (fstrong) will always spawn a heart regardless of combo, but will also return your combo to 0

*/