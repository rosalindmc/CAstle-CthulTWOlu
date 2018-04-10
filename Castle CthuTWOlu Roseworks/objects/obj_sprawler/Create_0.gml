/// @description Establish variables

dir = choose(0,90,180,270)
turnChance = 50
splitChance = 20
widthChance = 100
lifeTime = 25+irandom(25)
roomChance = 10
roomSizeMin = 2
roomSizeBonus = 4

turnCD = 5
turnCooldown = 5
roomCD = 15
roomCooldown = 15
splitCD = 15
splitCooldown = 15


iX = ((x-50)/global.gridSize)
iY = ((y-50)/global.gridSize)
