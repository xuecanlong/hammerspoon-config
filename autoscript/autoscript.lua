local cmdArr = {
    "cd /Users/hongwenlong/sh/ && ./up.sh > up_log"
}

function shell(cmd)
    result = hs.osascript.applescript(string.format('do shell script "%s"', cmd))
end

function runAutoScripts()
    for key, cmd in ipairs(cmdArr) do
        print(cmd)
        shell(cmd)
    end
end


timer = hs.timer.new(hs.timer.hours(6), runAutoScripts)
timer:start()