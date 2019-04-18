local cmdArr = {
    {"up", hs.timer.hours(6), "cd /Users/hongwenlong/sh/ && ./up.sh > up_log"}
}
local menuData = {}

local menubar = hs.menubar.new()

local timerData = {}

function updateMenubar()
    menubar:setTooltip("AutoScript Info")
   menubar:setMenu(menuData)
end

function getData(cmd)
    local Now=os.time()
    local newTime=os.date("*t", Now + cmd[2])
    local runTime = string.format('%d-%02d-%02d %02d:%02d:%02d',newTime.year,newTime.month,newTime.day,newTime.hour,newTime.min,newTime.sec)
    for i,v in ipairs(menuData) do
        if v.task_id == cmd[1] then
            table.remove(menuData, i)
        end
    end
    titlestr = string.format("Task: %s Time: %s", cmd[1], runTime)
    table.insert(menuData, {task_id=cmd[1], title = titlestr})
end

menubar:setTitle('⌛')
for key, cmd in ipairs(cmdArr) do
    local timer = hs.timer.new(cmd[2], function () 
        result = hs.osascript.applescript(string.format('do shell script "%s"', cmd[3])) 
        getData(cmd)
        updateMenubar()
    end)
    timer:start()
    table.insert(menuData, {task_id = cmd[1], timer = timer})
    getData(cmd)
end
updateMenubar()