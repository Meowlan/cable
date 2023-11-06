if not DarkRP then return end

__e2setcost(5)

e2function string entity:weaponType()
    return this:GetWeaponClass()
end