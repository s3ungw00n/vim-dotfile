function reload()
    hs.reload()
    hs.notify.new({title="해머스푼", informativeText="리로드 완료"}):send()
end
hs.hotkey.bind({'cmd', 'shift', 'ctrl'}, 'R', reload)

function goToNormalModeAtOnceOnHangle()
    local inputEnglish = "com.apple.keylayout.ABC"
    local input_source = hs.keycodes.currentSourceID()

    if not (input_source == inputEnglish) then
        hs.eventtap.keyStroke({}, 'right')
        hs.keycodes.currentSourceID(inputEnglish)
    end

    hs.eventtap.keyStroke({'control'}, 'c')
end

hs.hotkey.bind({}, 'escape', goToNormalModeAtOnceOnHangle)
