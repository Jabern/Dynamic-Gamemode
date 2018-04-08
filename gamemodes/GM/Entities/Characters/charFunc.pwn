/*
	Characters Function 
*/

forward SpawnCharacter(playerid);

public SpawnCharacter(playerid)
{
	return _SpawnCharacter(playerid);
}

stock _SpawnCharacter(playerid)
{
	SpawnPlayer(playerid);
	SetPlayerPos(playerid, CharacterData[playerid][PosX], CharacterData[playerid][PosY], CharacterData[playerid][PosZ]);
	return 1;
}