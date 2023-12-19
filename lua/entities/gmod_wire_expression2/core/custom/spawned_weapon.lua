if not DarkRP then return end
E2Lib.RegisterExtension("cable-weapon", true, "Some minor wiremod additions.")

__e2setcost(5)

e2function string entity:weaponType()
    return this:GetWeaponClass()
end