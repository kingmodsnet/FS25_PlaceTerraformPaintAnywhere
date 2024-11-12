--
-- PlaceTerraformPaintAnywhere_KingMods
--
-- Author: KingMods
-- Date: 12.11.2024
-- Version: 1.0.0.0
--
-- https://www.kingmods.net/
--

PlaceTerraformPaintAnywhere_KingMods = {}

function PlaceTerraformPaintAnywhere_KingMods:getHasOverlap(superFunc, x, y, z, rotY, checkFunc)
    return false, nil
end

function PlaceTerraformPaintAnywhere_KingMods:getHasOverlapWithZones(superFunc, zones, x, y, z, rotY)
    return false
end

function PlaceTerraformPaintAnywhere_KingMods:getHasOverlapWithPlaces(superFunc, places, x, y, z, rotY)
	return false
end

function PlaceTerraformPaintAnywhere_KingMods:getCanBePlacedAt(superFunc, x, y, z, farmId)
    return true, nil
end

function PlaceTerraformPaintAnywhere_KingMods:isInsidePlacementPlaces(superFunc, places, x, y, z)
    return false
end

function PlaceTerraformPaintAnywhere_KingMods:getIsAreaOwnedByFarm(superFunc, places, x, y, z)
    return true
end

function PlaceTerraformPaintAnywhere_KingMods:getIsOnOwnedFarmland(superFunc, places, x, y, z)
    return true
end

function PlaceTerraformPaintAnywhere_KingMods:verifyAccess(superFunc, x, y, z)
    return nil
end

function PlaceTerraformPaintAnywhere_KingMods:isInsideRestrictedZone(...)
    return false
end

function PlaceTerraformPaintAnywhere_KingMods:isModificationAreaOnOwnedLand(...)
    return true
end

function PlaceTerraformPaintAnywhere_KingMods:hasObjectOverlapInModificationArea(...)
    return false
end

PlaceablePlacement.getHasOverlap = Utils.overwrittenFunction(PlaceablePlacement.getHasOverlap, PlaceTerraformPaintAnywhere_KingMods.getHasOverlap)
PlaceablePlacement.getHasOverlapWithZones = Utils.overwrittenFunction(PlaceablePlacement.getHasOverlapWithZones, PlaceTerraformPaintAnywhere_KingMods.getHasOverlapWithZones)
PlaceablePlacement.getHasOverlapWithPlaces = Utils.overwrittenFunction(PlaceablePlacement.getHasOverlapWithPlaces, PlaceTerraformPaintAnywhere_KingMods.getHasOverlapWithPlaces)
PlaceablePlacement.getIsAreaOwnedByFarm = Utils.overwrittenFunction(PlaceablePlacement.getIsAreaOwnedByFarm, PlaceTerraformPaintAnywhere_KingMods.getIsAreaOwnedByFarm)
PlaceablePlacement.getIsOnOwnedFarmland = Utils.overwrittenFunction(PlaceablePlacement.getIsOnOwnedFarmland, PlaceTerraformPaintAnywhere_KingMods.getIsOnOwnedFarmland)
Placeable.getCanBePlacedAt = Utils.overwrittenFunction(Placeable.getCanBePlacedAt, PlaceTerraformPaintAnywhere_KingMods.getCanBePlacedAt)
PlacementUtil.isInsidePlacementPlaces = Utils.overwrittenFunction(PlacementUtil.isInsidePlacementPlaces, PlaceTerraformPaintAnywhere_KingMods.isInsidePlacementPlaces)
PlacementUtil.isInsideRestrictedZone = Utils.overwrittenFunction(PlacementUtil.isInsideRestrictedZone, PlaceTerraformPaintAnywhere_KingMods.isInsideRestrictedZone)
ConstructionBrush.verifyAccess = Utils.overwrittenFunction(ConstructionBrush.verifyAccess, PlaceTerraformPaintAnywhere_KingMods.verifyAccess)
Landscaping.isModificationAreaOnOwnedLand = Utils.overwrittenFunction(Landscaping.isModificationAreaOnOwnedLand, PlaceTerraformPaintAnywhere_KingMods.isModificationAreaOnOwnedLand)
Landscaping.hasObjectOverlapInModificationArea = Utils.overwrittenFunction(Landscaping.hasObjectOverlapInModificationArea, PlaceTerraformPaintAnywhere_KingMods.hasObjectOverlapInModificationArea)
