//Yarn ball variables

//General
//Built in variables
//init = 0;
//uses_shader = true;
sprite_index = sprite_get("yarnball");
mask_index = sprite_get("yarnball_cmask_tall");
//unbashable = 0; //Enable Ori bashing


//Personal
yarnType = 0; //0 is yarn ball. 1 is string trail. 2 is article hitbox.

//Yarn Type 0 Variables (Yarn ball itself)
//===========
yBallIsProjectile = false;
yBallIsTouchingEnemy = false;
yBallArticleHitbox = noone;

//Physics
//Built in variables
can_be_grounded = true;
free = false;
freeTimer = 0; //When greater than 1, this yarnball transforms back to hitbox
yBallPrevYPos = y;
//ignores_walls = false; //Set to false on yarnType 0

//Personal variables
yBallGravity = 0.25;
yBallMaxFallSpeed = 13;
yBallGroundFriction = 0.5;
yBallAirFriction = 0.02;
yBallKnockbackAdj = 1.5;
yBallKnockbackVelocity = 0;
yBallBounceWeight = 0.5; //How much vertical velocity is lost after bouncing off the floor
yBallWallBounceWeight = 0.5; //How much horizontal velocity is lost after bouncing off the wall
if (!(variable_instance_exists(self, "yBallWasHitByEnemy")))
    yBallWasHitByEnemy = false;
    
//Character gimmick interactions
if (!(variable_instance_exists(self, "oriExists")))
    oriExists = false;
with (asset_get("oPlayer"))
{
    if (url == CH_ORI)
    {
        other.oriExists = true;
    }
}

//Other people's variables
//Nyx's Aetherball
hsp_previous = 0;
vsp_previous = 0;
last_hitbox = noone;
last_hitbox_group = noone;
last_attack_id = noone;
last_id_group = noone;
last_player = noone;

//Djent's Targma
attack_id = 0;

//Muno's Article Template
//Limit on number of articles
replacedcount = 0;                                  //This gets incremented whenever a new article is created. If this reaches maxarticles, the article is destroyed
maxarticles = 1;                                    //The maximum number of this article that should exist at once.


//Yarn Type 2 variables (hitbox)
//=================
yBallTrackingArticle = noone; //whenever type 0 yarnball doesn't exist, this article will get destroyed as well