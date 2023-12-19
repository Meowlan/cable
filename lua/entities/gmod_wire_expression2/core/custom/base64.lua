E2Lib.RegisterExtension("cable-base64", true, "base64 conversion helpers")
__e2setcost(2)

e2function string string:base64encode()
    return util.Base64Encode(this, true)
end

e2function string string:base64decode()
    return util.Base64Decode(this)
end

e2function string base64encode(string str)
    return util.Base64Encode( str, true)
end

e2function string base64decode(string str)
    return util.Base64Decode(str)
end