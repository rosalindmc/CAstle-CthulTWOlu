if global.map[iX,iY].type != superwall
{
	if 1+irandom(99) < splitChance and splitCD <= 0
	{
		i = instance_create_depth(x,y,-5,obj_sprawler)
		i.life = 5+irandom(5)
		i.dir = dir+choose(-90,90)
		i.splitChance = splitChance*.5
		splitChance *= .5
		splitCD = splitCooldown
	}
	else if 1+irandom(99) < turnChance and turnCD <= 0
	{
		dir += choose(-90,90)
		turnChance *= .5
		turnCD = turnCooldown
	}
}