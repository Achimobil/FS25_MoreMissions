MoreMissions = {};

function MoreMissions.DebugTable(text, myTable, maxDepth)
	if myTable == nil then
		print("MoreMissionsDebug: " .. text .. " is nil");
	else
		print("MoreMissionsDebug: " .. text)
		DebugUtil.printTableRecursively(myTable,"_",0, maxDepth or 2);
	end
end

-- Beispiel: MoreMissions.DebugText("Alter: %s", age)
function MoreMissions.DebugText(text, ...)
	print("MoreMissionsDebug: " .. string.format(text, ...));
end

function MoreMissions:hasFarmReachedMissionLimit(superFunc, farmId)
	-- MoreMissions.DebugText("hasFarmReachedMissionLimit: %s %s", superFunc, farmId);

	return false;
end

MissionManager.hasFarmReachedMissionLimit = Utils.overwrittenFunction(MissionManager.hasFarmReachedMissionLimit, MoreMissions.hasFarmReachedMissionLimit)