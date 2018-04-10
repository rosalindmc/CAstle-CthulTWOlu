//Move Forward
iX = round((x+lengthdir_x(global.gridSize,dir)-50)/global.gridSize)
iY = round((y+lengthdir_y(global.gridSize,dir)-50)/global.gridSize)

if global.map[iX,iY].type != supercorner
{
	x += lengthdir_x(global.gridSize,dir) 
	y += lengthdir_y(global.gridSize,dir)
}

//convert tile
iX = round((x-50)/global.gridSize)
iY = round((y-50)/global.gridSize)

if iX < 5 or iX >= global.mapWidth-5 or iY < 5 or iY >= global.mapHeight-5
{
	roomMake()
	instance_destroy()
}
else
{
	//Check for turning or splitting
	turnOrSplit()

	x = global.map[iX,iY].x
	y = global.map[iX,iY].y

	if 1+irandom(99) <= roomChance and roomCD <= 0
	{
		roomMake()
	}
	
	lifeTime -= 1
	turnCD -= 1
	roomCD -= 1
	splitCD -= 1

	if lifeTime = 0
	{
		roomMake()
		instance_destroy()
	}
	
	corridorMake()
}