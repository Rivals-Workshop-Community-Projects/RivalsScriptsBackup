// Article Update is ran for every frame that the article object is in-game.

lifetime++;

if lifetime >= 20{
    instance_destroy(self);
    exit;
}