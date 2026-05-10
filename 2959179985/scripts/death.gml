if (ex_meter >= 20)
ex_meter -= 20;
else if (ex_meter = 10)
ex_meter -= 10;
if (instance_exists(bento))
{
	bento.timer = 0;
	bento.phase = 2;
}
if (instance_exists(bento2))
{
	bento2.timer = 0;
	bento2.phase = 2;
}