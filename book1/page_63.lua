-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local ants_audio = audio.loadSound(audioDir .. "click9.mp3", system.ResourceDirectory)     local kwkBindex_audio = audio.loadSound(audioDir .. "indexflip.mp3", system.ResourceDirectory)     --local currPage = 63     print("----------------"); print(""); print("New Page") 
    print("The current page is: " .. _G.kwk_currentPage) 
    local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex         local kwkBforward         local chpt1pv         local chpt1pvover         local howhide         local ants         local papercorner         local CH04PG4  --(2) regular layer        CH04PG4 = display.newImageRect(imgDir .. "p63_ch04pg4.png", 768, 1024 );        CH04PG4.x = 384; CH04PG4.y = 512; CH04PG4.alpha = 1; CH04PG4.oldAlpha = 1        menuGroup:insert(CH04PG4)        menuGroup.CH04PG4 = CH04PG4 
--XPageXCornerX


--XpaperXcornerX




       local onantsTouch = function(event)           if event.phase=="ended" then                  if howhide.alpha == 0 then                    transitionStash.newTransition_262 = transition.to( howhide, {alpha=howhide.oldAlpha, time=1000, delay=0})                 else                    transitionStash.newTransition_262 = transition.to( howhide, {alpha=0, time=1000, delay=0})                 end              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( ants_audio, {channel=myChannel} )              end           end        end --(10) regular layer        ants = ui.newButton{            defaultSrc= imgDir .."p63_ants.png",            defaultX = 77,            defaultY = 695,            overSrc= imgDir .."p63_ants.png",            overX = 77,            overY = 695,            onRelease=onantsTouch,            id="antsButton"        }        ants.x = 38; ants.y = 471; ants.alpha = 1; ants.oldAlpha = 1        menuGroup:insert(ants)        menuGroup.ants = ants --(2) regular layer        howhide = display.newImageRect(imgDir .. "p63_howhide.png", 349, 286 );        howhide.x = 184; howhide.y = 495; howhide.alpha = 1; howhide.oldAlpha = 1        menuGroup:insert(howhide)        menuGroup.howhide = howhide        local onchpt1pvTouch = function(event)           if event.phase=="ended" then           media.playVideo( videoDir.."ants.mp4", system.ResourceDirectory, false )           end        end --(10) regular layer        chpt1pv = ui.newButton{            defaultSrc= imgDir .."p63_chpt1pv.png",            defaultX = 102,            defaultY = 102,            overSrc= imgDir .."p63_chpt1pvover.png",            overX = 102,            overY = 102,            onRelease=onchpt1pvTouch,            id="chpt1pvButton"        }        chpt1pv.x = 385; chpt1pv.y = 863; chpt1pv.alpha = 1; chpt1pv.oldAlpha = 1        menuGroup:insert(chpt1pv)        menuGroup.chpt1pv = chpt1pv        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 print("GoForward!")                _G.kwk_currentPage = _G.kwk_currentPage + 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_749 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc= imgDir .."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc= imgDir .."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward        local onkwkBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 _G.kwk_currentPage = _G.kwk_menuPage                print("GoToMenu!")                director:changeScene( "page_" .. _G.kwk_menuPage, "overFromTop" )             end             timerStash.newTimer_812 = timer.performWithDelay(0, myClosure_switch, 1)              local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc= imgDir .."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc= imgDir .."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then            local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 print("GoBack!")                _G.kwk_currentPage = _G.kwk_currentPage - 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromLeft" )             end             timerStash.newTimer_854 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc= imgDir .."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc= imgDir .."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback        howhide.alpha = 0        local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_" .. _G.kwk_currentPage-1 .. ".lua", "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_" .. _G.kwk_currentPage+1 .. ".lua", "moveFromRight")                 end              end           end        end        CH04PG4:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(ants_audio); ants_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 