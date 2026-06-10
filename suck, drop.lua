--- Drops items from the selected slot to front of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each dropping
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually dropped blocks
function drop(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, dropped = true, nil, 0
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.drop(1)
            if check == false then reason = "Item drop finished"; dropped = times end
        end
        return check, reason, dropped
    else
        dropped = turtle.getItemCount()
        turtle.drop(count)
        return check, reason, dropped
    end
end

--- Drops items from the selected slot to left side of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each dropping
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually dropped blocks
function dropLeft(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, dropped = true, nil, 0
    turtle.turnLeft()
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.drop(1)
            if check == false then reason = "Item drop finished"; dropped = times end
        end
        turtle.turnRight()
        return check, reason, dropped
    else
        dropped = turtle.getItemCount()
        turtle.drop(count)
        turtle.turnRight()
        return check, reason, dropped
    end
end

--- Drops items from the selected slot to right side of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each dropping
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually dropped blocks
function dropRight(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, dropped = true, nil, 0
    turtle.turnRight()
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.drop(1)
            if check == false then reason = "Item drop finished"; dropped = times end
        end
        turtle.turnLeft()
        return check, reason, dropped
    else
        dropped = turtle.getItemCount()
        turtle.drop(count)
        turtle.turnLeft()
        return check, reason, dropped
    end
end

--- Drops items from the selected slot to back of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each dropping
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually dropped blocks
function dropBack(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, dropped = true, nil, 0
    turtle.turnLeft()
    turtle.turnLeft()
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.drop(1)
            if check == false then reason = "Item drop finished"; dropped = times end
        end
        turtle.turnLeft()
        turtle.turnLeft()
        return check, reason, dropped
    else
        dropped = turtle.getItemCount()
        turtle.drop(count)
        turtle.turnLeft()
        turtle.turnLeft()
        return check, reason, dropped
    end
end

--- Drops items from the selected slot to up of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each dropping
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually dropped blocks
function dropUp(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, dropped = true, nil, 0
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.dropUp(1)
            if check == false then reason = "Item drop finished"; dropped = times end
        end
        return check, reason, dropped
    else
        dropped = turtle.getItemCount()
        turtle.dropUp(count)
        return check, reason, dropped
    end
end

--- Drops items from the selected slot to bottom of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each dropping
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually dropped blocks
function dropDown(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, dropped = true, nil, 0
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.dropDown(1)
            if check == false then reason = "Item drop finished"; dropped = times end
        end
        return check, reason, dropped
    else
        dropped = turtle.getItemCount()
        turtle.dropDown(count)
        return check, reason, dropped
    end
end

--- Get items from the world or inventory at the front of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each sucking
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually sucked blocks
function suck(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, sucked = true, nil, 0
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.suck(1)
            if check == false then reason = "Item suck finished"; sucked = times end
        end
        return check, reason, sucked
    else
        local startSucked = turtle.getItemCount()
        turtle.suck(count)
        sucked = turtle.getItemCount() - startSucked
        return check, reason, sucked
    end
end

--- Get items from the world or inventory at the left side of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each sucking
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually sucked blocks
function suckLeft(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, sucked = true, nil, 0
    turtle.turnLeft()
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.suck(1)
            if check == false then reason = "Item suck finished"; sucked = times end
        end
        turtle.turnRight()
        return check, reason, sucked
    else
        local startSucked = turtle.getItemCount()
        turtle.suck(count)
        sucked = turtle.getItemCount() - startSucked
        turtle.turnRight()
        return check, reason, sucked
    end
end

--- Get items from the world or inventory at the right side of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each sucking
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually sucked blocks
function suckRight(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, sucked = true, nil, 0
    turtle.turnRight()
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.suck(1)
            if check == false then reason = "Item suck finished"; sucked = times end
        end
        turtle.turnLeft()
        return check, reason, sucked
    else
        local startSucked = turtle.getItemCount()
        turtle.suck(count)
        sucked = turtle.getItemCount() - startSucked
        turtle.turnLeft()
        return check, reason, sucked
    end
end

--- Get items from the world or inventory at the back of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each sucking
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually sucked blocks
function suckBack(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, sucked = true, nil, 0
    turtle.turnLeft()
    turtle.turnLeft()
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.suck(1)
            if check == false then reason = "Item suck finished"; sucked = times end
        end
        turtle.turnLeft()
        turtle.turnLeft()
        return check, reason, sucked
    else
        local startSucked = turtle.getItemCount()
        turtle.suck(count)
        sucked = turtle.getItemCount() - startSucked
        turtle.turnLeft()
        turtle.turnLeft()
        return check, reason, sucked
    end
end

--- Get items from the world or inventory at the top of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each sucking
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually sucked blocks
function suckUp(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, sucked = true, nil, 0
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.suckUp(1)
            if check == false then reason = "Item suck finished"; sucked = times end
        end
        return check, reason, sucked
    else
        local startSucked = turtle.getItemCount()
        turtle.suckUp(count)
        sucked = turtle.getItemCount() - startSucked
        return check, reason, sucked
    end
end

--- Get items from the world or inventory at the bottom of the turtle.
--- @param count number|nil by defoult use item stack size. Can't be lower then 1 or greater then 64
--- @param pause number|nil pause after each sucking
--- @return boolean check is function completed correct
--- @return string|nil reason reason of failure
--- @return integer dropped value of actually sucked blocks
function suckDown(count, pause)
    count = count or 64
    pause = pause or 0
    if type(count)~="number" or type(pause)~="number" then error("Invalid type of argument", 2)
    elseif count<1 or count>64 then error("Argument count out of range", 2)
    elseif pause<0 then error("Argument pause out of range", 2) end
    local check, reason, sucked = true, nil, 0
    if pause>0 then
        for times=0, count-1 do
            sleep(pause)
            check = turtle.suckDown(1)
            if check == false then reason = "Item suck finished"; sucked = times end
        end
        return check, reason, sucked
    else
        local startSucked = turtle.getItemCount()
        turtle.suckDown(count)
        sucked = turtle.getItemCount() - startSucked
        return check, reason, sucked
    end
end