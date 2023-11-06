if not DarkRP then return end

__e2setcost(5)

local function canLockUnlock(ply, ent)
    local Team = ply:Team()
    local group = ent:getKeysDoorGroup()
    local teamOwn = ent:getKeysDoorTeams()

    return ent:isKeysOwnedBy(ply)                                         or
        (group   and table.HasValue(RPExtraTeamDoors[group] or {}, Team)) or
        (teamOwn and teamOwn[Team])
end

local function DoorIsOpen( door )
	
	local doorClass = door:GetClass()

	if ( doorClass == "func_door" or doorClass == "func_door_rotating" ) then

		return door:GetInternalVariable( "m_toggle_state" ) == 0

	elseif ( doorClass == "prop_door_rotating" ) then

		return door:GetInternalVariable( "m_eDoorState" ) ~= 0

	else

		return false

	end

end

e2function number entity:isDoor()
    return this:isDoor()
end

e2function entity entity:doorOwner()
    return this:getDoorOwner()
end

e2function array entity:doorCoOwners() -- returns an array of player ids
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    return this:getKeysCoOwners() or {}
end

e2function void entity:doorRemoveCoOwners() -- returns an array of player ids
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:removeAllKeysExtraOwners()
end

e2function void entity:doorRemoveCoOwner(entity player) -- returns an array of player ids
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:removeKeysDoorOwner(player)
end

e2function void entity:doorAddCoOwner(entity player) -- returns an array of player ids
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:addKeysDoorOwner(player)
end

e2function number entity:doorLocked()
    return this:GetInternalVariable("m_bLocked")
end

e2function number entity:doorOpened()
    return DoorIsOpen(this)
end

e2function void entity:doorLock()
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:Fire( "lock", "", 0 )
end

e2function void entity:doorUnlock()
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:Fire( "unlock", "", 0 )
end

e2function void entity:doorOpen()
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:Fire( "open", "", 0 )
end

e2function void entity:doorClose()
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:Fire( "close", "", 0 )
end

e2function void entity:doorTitle(string title)
    if not this:isMasterOwner(self.player) then return self:throw("You do not own this door!", nil) end
    this:setKeysTitle(title)
end