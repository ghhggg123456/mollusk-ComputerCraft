function forward(distance)
    distance = distance or 1
    local check, reason = true, nil
    local distanceAbs = math.abs(distance)
    if distance>0 then 
        for block=0, distanceAbs-1 do
            check, reason = turtle.forward()
            if check == false then return check, reason, block end
        end
    elseif distance<0 then
        for block=0, distanceAbs-1 do
            check, reason = turtle.back()
            if check == false then return check, reason, block end
        end
    end
    return check, reason, distance
end

function left(distance)
    distance = distance or 1
    local check, reason = true, nil
    local distanceAbs = math.abs(distance)
    if distance == 0 then return true, nil, 0 end
    check, reason = turtle.turnLeft()
    if check == false then return false, reason, 0 end
    if distance>0 then 
        for block=0, distanceAbs-1 do
            check, reason = turtle.forward()
            if check == false then return check, reason, block end
        end
    elseif distance<0 then
        for block=0, distanceAbs-1 do
            check, reason = turtle.back()
            if check == false then return check, reason, block end
        end
    end
    check, reason = turtle.turnRight()
    return check, reason, distance
end

function right(distance)
    distance = distance or 1
    local check, reason = true, nil
    local distanceAbs = math.abs(distance)
    if distance == 0 then return true, nil, 0 end
    check, reason = turtle.turnRight()
    if check == false then return false, reason, 0 end
    if distance>0 then 
        for block=0, distanceAbs-1 do
            check, reason = turtle.forward()
            if check == false then return check, reason, block end
        end
    elseif distance<0 then
        for block=0, distanceAbs-1 do
            check, reason = turtle.back()
            if check == false then return check, reason, block end
        end
    end
    check, reason = turtle.turnLeft()
    return check, reason, distance
end

function back(distance)
    distance = distance or 1
    local check, reason = true, nil
    local distanceAbs = math.abs(distance)
    if distance>0 then 
        for block=0, distanceAbs-1 do
            check, reason = turtle.back()
            if check == false then return check, reason, block end
        end
    elseif distance<0 then
        for block=0, distanceAbs-1 do
            check, reason = turtle.forward()
            if check == false then return check, reason, block end
        end
    end
    return check, reason, distance
end


function up(distance)
    distance = distance or 1
    local check, reason = true, nil
    local distanceAbs = math.abs(distance)
    if distance>0 then 
        for block=0, distanceAbs-1 do
            check, reason = turtle.up()
            if check == false then return check, reason, block end
        end
    elseif distance<0 then
        for block=0, distanceAbs-1 do
            check, reason = turtle.down()
            if check == false then return check, reason, block end
        end
    end
    return check, reason, distance
end

function down(distance)
    distance = distance or 1
    local check, reason = true, nil
    local distanceAbs = math.abs(distance)
    if distance>0 then 
        for block=0, distanceAbs-1 do
            check, reason = turtle.down()
            if check == false then return check, reason, block end
        end
    elseif distance<0 then
        for block=0, distanceAbs-1 do
            check, reason = turtle.up()
            if check == false then return check, reason, block end
        end
    end
    return check, reason, distance
end

function turnLeft(count)
    count = count or 1
    local check, reason = true, nil
    local countAbs = math.abs(count)
    if count>0 then
        for step=0, countAbs-1 do
            check, reason = turtle.turnLeft()
            if check == false then return check, reason, step end
        end
    elseif count<0 then
        for step=0, countAbs-1 do
            check, reason = turtle.turnRight()
            if check == false then return check, reason, step*-1 end
        end
    end
    return check, reason, count
end

function turnRight(count)
    count = count or 1
    local check, reason = true, nil
    local countAbs = math.abs(count)
    if count>0 then
        for step=0, countAbs-1 do
            check, reason = turtle.turnRight()
            if check == false then return check, reason, step end
        end
    elseif count<0 then
        for step=0, countAbs-1 do
            check, reason = turtle.turnLeft()
            if check == false then return check, reason, step*-1 end
        end
    end
    return check, reason, count
end


