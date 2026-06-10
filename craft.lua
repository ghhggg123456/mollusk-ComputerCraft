--- craft items use turtle.craft(). Require crafting table turtle upgrade
---@param count number count of items for craft. by defoult 64. Can't be lower then 0 or greater then 64.
---@return boolean check is craft was succesful
---@usage mollusk.craft(0) can be used for check correct of items grid
function craft(count)
        if count ~= nil then
        if type(count) ~= "number" then error("Invalid type of argument", 2)
        elseif count < 0 or count > 64 then error("Argument count out of range", 2)
        end
    end
    local check = turtle.craft(count)
    return check
end