/// @description Initialize all settings

//Macros

#region //Terrain Generation
enum terrainType
{
	wall = 0,
	open = 1,
	superwall = 2,
	supercorner = 3,
	portal = 4,
	corridor = 5,
	openroom = 6
}
#endregion

#region //Distance
#macro metre 20
#endregion

#region //Damage Types
enum dmgType
{
    normal = 0,
    rend = 1,
    impact = 2,
    pierce = 3,   
    fire = 4,
    cold = 5,
    corrode = 6,
    lightning = 7,
    radiant = 8,
    profane = 9,
    poison = 10,
    blood = 11,
    mind = 12
}
#endregion

