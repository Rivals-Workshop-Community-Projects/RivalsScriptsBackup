//hitbox_init
if (hbox_num == 1)
{
//These variables are sent to the player of where the yarnball's last position was
//The player will remember these values
yBallPrevXPos = x;
yBallPrevYPos = y;

yBallIsProjectile = true; //This remains true while a hitbox. Yarn ball is a hitbox while it's moving through the air
yBallIsIdle = false; //When the yarnball is resting on the ground (or moving very slowly on the ground), this variable is true
yBallTransformingToArticle = false; //When true, the player will transform this hitbox into an article
yBallKnockbackAdj = 1.5;
yBallCanBeHitTimer = 6;
yBallFollowingEnemy = noone;
yBallFollowXOffset = 0;
yBallFollowXOffset = 0;
yBallIsTouchingEnemy = true;
yBallCanMarkEnemyTimer = 0; //To prevent immediate marking when throwing the yarnball up close, put a timer
yBallFollowEnemyTimer = 0; //Becomes 12 as soon as the enemy is in hitstun. Timer goes down as soon as enemy leaves hitstun
yBallWasFree = true;
yBallHasHitstun = false; //Becomes true if hit by a hard hitting knockback move or was strong throw
yBallCanHitStunTimer = 6; //When this timer reaches 0, the yarn ball can hitstun enemy if conditions apply
//yBallTouchedFloorYHeight = 0; //To prevent the yarn ball from dropping through the platforms, keep track of the height

if (!(variable_instance_exists(self, "yBallStickEnemyWhenThrown")))
yBallStickEnemyWhenThrown = false; //Becomes true if Amber throws the yarn ball. The yarn ball will stick on the enemy for a bit as if they were in hitstun

if (!(variable_instance_exists(self, "yBallWasHitByEnemy")))
    yBallWasHitByEnemy = false; //When this is true and it gets knocked off stage, Amber gets a yarn cooldown

//yBallBashEaseTimer = 0;
//yBallPreBashXPos = 0;
//yBallPreBashYPos = 0;

last_hitbox = noone;
last_hitbox_group = noone;
last_attack_id = noone;
last_id_group = noone;
last_player = noone;
}

//projectile rune stuff

if(player_id.runeM){
    if((attack == AT_BAIR && hbox_num == 3) || (attack == AT_NAIR && hbox_num == 12)){
        spr_dir *= -1;
        draw_xscale = spr_dir;
    }
    
    if(attack == AT_FSTRONG && hbox_num == 9){
        strong_charge = player_id.strong_charge;
    }

    if(attack == AT_USTRONG && (hbox_num == 5 || hbox_num == 6)){
        proj_grab_id = noone;
    }
    
    if(attack == AT_USTRONG && hbox_num == 6){
        spr_dir *= -1;
        draw_xscale = spr_dir;
    }

    if(effect == 99 || effect == 98){
        can_hit_self = true;
        can_hit[player_id.player] = false;
    }
}