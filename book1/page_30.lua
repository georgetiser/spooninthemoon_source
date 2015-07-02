-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local Bindex_audio = audio.loadSound(audioDir .. "indexflip.mp3", system.ResourceDirectory)     --local currPage = 8     print("----------------"); print(""); print("New Page")     print("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function()        local showbox         local showbut         local Bback         local Bindex         local Bforward         local PageCorner         local BG  --(2) regular layer        BG = display.newImageRect(imgDir .. "p8_bg.png", 768, 1024 );        BG.x = 384; BG.y = 512; BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG 
--XPageXCornerX

       
--XPageXCornerX

       local onBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("GoForward!")                _G.kwk_currentPage = _G.kwk_currentPage + 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_853 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        Bforward = ui.newButton{            defaultSrc= imgDir .."kwkbforward.png", --p8_bforward.png",            defaultX = 111,            defaultY = 87,            overSrc= imgDir .."kwkbforward.png", --p8_bforward.png",            overX = 111,            overY = 87,            onRelease=onBforwardTouch,            id="BforwardButton"        }        Bforward.x = 475; Bforward.y = 975; Bforward.alpha = 1; Bforward.oldAlpha = 1        menuGroup:insert(Bforward)        menuGroup.Bforward = Bforward        local onBindexTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 _G.kwk_currentPage = _G.kwk_menuPage                print("GoToMenu!")                director:changeScene( "page_" .. _G.kwk_menuPage, "overFromTop" )             end             timerStash.newTimer_913 = timer.performWithDelay(0, myClosure_switch, 1)              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( Bindex_audio, {channel=myChannel} )              end           end        end --(10) regular layer        Bindex = ui.newButton{            defaultSrc= imgDir .."kwkbindex.png", --p8_bindex.png",            defaultX = 66,            defaultY = 69,            overSrc= imgDir .."kwkbindex.png", --p8_bindex.png",            overX = 66,            overY = 69,            onRelease=onBindexTouch,            id="BindexButton"        }        Bindex.x = 383; Bindex.y = 969; Bindex.alpha = 1; Bindex.oldAlpha = 1        menuGroup:insert(Bindex)        menuGroup.Bindex = Bindex        local onBbackTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 print("GoBack!")                _G.kwk_currentPage = _G.kwk_currentPage - 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromLeft" )             end             timerStash.newTimer_962 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        Bback = ui.newButton{            defaultSrc= imgDir .."kwkbback.png", --p8_bback.png",            defaultX = 111,            defaultY = 88,            overSrc= imgDir .."kwkbback.png", --p8_bback.png",            overX = 111,            overY = 88,            onRelease=onBbackTouch,            id="BbackButton"        }        Bback.x = 293; Bback.y = 973; Bback.alpha = 1; Bback.oldAlpha = 1        menuGroup:insert(Bback)        menuGroup.Bback = Bback        local onshowbutTouch = function(event)           if event.phase=="ended" then                  if showbox.alpha == 0 then                    transitionStash.newTransition_996 = transition.to( showbox, {alpha=showbox.oldAlpha, time=2000, delay=0})                 else                    transitionStash.newTransition_996 = transition.to( showbox, {alpha=0, time=2000, delay=0})                 end           end        end --(10) regular layer        showbut = ui.newButton{            defaultSrc= imgDir .."p8_showbut.png",            defaultX = 284,            defaultY = 352,            overSrc= imgDir .."p8_showbut.png",            overX = 284,            overY = 352,            onRelease=onshowbutTouch,            id="showbutButton"        }        showbut.x = 167; showbut.y = 196; showbut.alpha = 1; showbut.oldAlpha = 1        menuGroup:insert(showbut)        menuGroup.showbut = showbut --(2) regular layer        showbox = display.newImageRect(imgDir .. "p8_showbox.png", 594, 638 );        showbox.x = 379; showbox.y = 609; showbox.alpha = 1; showbox.oldAlpha = 1        menuGroup:insert(showbox)        menuGroup.showbox = showbox        showbox.alpha = 0          local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_" .. _G.kwk_currentPage-1 .. ".lua", "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_" .. _G.kwk_currentPage+1 .. ".lua", "moveFromRight")                 end              end           end        end        BG:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(Bindex_audio); Bindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 