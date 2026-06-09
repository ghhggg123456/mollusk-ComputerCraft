function forward(distance)
    distance = distance or 1
    if distance>0 then 
        for block=0, distance-1 do
            local check, reason = turtle.forward()
            if check == false then return false, reason, block end
        end
    elseif distance<0 then
        local distanceAbs = math.abs(distance)
        for block=0, distanceAbs-1 do
            local check, reason = turtle.back()
            if check == false then return false, reason, block end
        end
    end
    return true, nil, distance
end

function left(distance)
    distance = distance or 1
    if distance>0 then 
        turtle.turnLeft()
        for block=0, distance-1 do
            local check, reason = turtle.forward()
            if check == false then return false, reason, block end
        end
        turtle.turnRight()
    elseif distance<0 then
        local distanceAbs = math.abs(distance)
        turtle.turnRight()
        for block=0, distanceAbs-1 do
            local check, reason = turtle.forward()
            if check == false then return false, reason, block end
        end
        turtle.turnLeft()
    end
    return true, nil, distance
end

function right(distance)
    distance = distance or 1
    if distance>0 then 
        turtle.turnRight()
        for block=0, distance-1 do
            local check, reason = turtle.forward()
            if check == false then return false, reason, block end
        end
        turtle.turnLeft()
    elseif distance<0 then
        local distanceAbs = math.abs(distance)
        turtle.turnLeft()
        for block=0, distanceAbs-1 do
            local check, reason = turtle.forward()
            if check == false then return false, reason, block end
        end
        turtle.turnRight()
    end
    return true, nil, distance
end

function back(distance)
    distance = distance or 1
    if distance>0 then 
        for block=0, distance-1 do
            local check, reason = turtle.back()
            if check == false then return false, reason, block end
        end
    elseif distance<0 then
        local distanceAbs = math.abs(distance)
        for block=0, distanceAbs-1 do
            local check, reason = turtle.forward()
            if check == false then return false, reason, block end
        end
    end
    return true, nil, distance
end

function up(distance)
    distance = distance or 1
    if distance>0 then 
        for block=0, distance-1 do
            local check, reason = turtle.up()
            if check == false then return false, reason, block end
        end
    elseif distance<0 then
        local distanceAbs = math.abs(distance)
        for block=0, distanceAbs-1 do
            local check, reason = turtle.down()
            if check == false then return false, reason, block end
        end
    end
    return true, nil, distance
end

function down(distance)
    distance = distance or 1
    if distance>0 then 
        for block=0, distance-1 do
            local check, reason = turtle.down()
            if check == false then return false, reason, block end
        end
    elseif distance<0 then
        local distanceAbs = math.abs(distance)
        for block=0, distanceAbs-1 do
            local check, reason = turtle.up()
            if check == false then return false, reason, block end
        end
    end
    return true, nil, distance
end

