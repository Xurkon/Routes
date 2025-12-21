local Routes = LibStub("AceAddon-3.0"):GetAddon("Routes")

-- meta table to return 0 for all unknown zones, instances, and what not
local emptyZoneTbl = {0,0,0,""}


-- Initialize zone names into a table
local zoneNames = {}
local zoneList = setmetatable({}, { __index = function() return emptyZoneTbl end})
local zoneMapFile = {}
local continentList = {GetMapContinents()}
for cID = 1, #continentList do
	for zID, zname in ipairs({GetMapZones(cID)}) do
		zoneNames[cID*100 + zID] = zname
		SetMapZoom(cID, zID)
		local mapfile = GetMapInfo()
		local areaID = GetCurrentMapAreaID()
		local x1, y1 = C_WorldMap.GetWorldPosition(areaID, 0, 0)
		local x2, y2 = C_WorldMap.GetWorldPosition(areaID, 1, 1)
		zoneList[zname] = {abs(x1-x2), abs(y1-y2), cID*100 + zID, mapfile}
		zoneMapFile[mapfile] = zname
	end
end

Routes.zoneNames = zoneNames
Routes.zoneData = zoneList
Routes.zoneMapFile = zoneMapFile

zone_data = nil
continentList = nil

--[[
Documatation of contents of these tables:
If you are in the zone "Dun Morogh" (continent 1, zone 7 in the enUS client) and
	GetCurrentMapContinent()*100 + GetCurrentMapZone() == 107

then
	zoneNames[107] == "Dun Morogh"
	zoneData["Dun Morogh"] == { 4924.664537147015, 3283.109691431343, 107, "DunMorogh" }
	zoneMapFile["DunMorogh"] == "Dun Morogh"
	zoneData["Some Invalid Zone"] == { 0, 0, 0, "" }

Note that in all the above, "Dun Morogh" is a localized string
]]

-- vim: ts=4 noexpandtab
