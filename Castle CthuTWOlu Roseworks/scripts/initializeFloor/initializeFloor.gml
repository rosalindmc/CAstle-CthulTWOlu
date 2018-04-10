//

with(obj_tile)
{
	instance_destroy()
}

with(obj_sprawler)
{
	instance_destroy()
}

for(i = 0; i < global.mapWidth; i++)
{
	for(ii = 0; ii < global.mapHeight; ii++)
	{
		global.map[i,ii] = instance_create_depth(50+(i*global.gridSize),50+(ii*global.gridSize),5,obj_tile) 
	}
}

i = instance_create_depth(0,0,-5,obj_sprawler)
i.iX = round(global.mapWidth*(.4+random(.2)))
i.iY = round(global.mapHeight*(.4+random(.2)))
i.x = global.map[i.iX,i.iY].x
i.y = global.map[i.iX,i.iY].y

with(i)
{
	roomMake()
}