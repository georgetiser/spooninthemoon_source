-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     local tablesaw_audio = audio.loadSound(audioDir .. "saw.mp3", system.ResourceDirectory)     local kwkBindex_audio = audio.loadSound(audioDir .. "indexflip.mp3", system.ResourceDirectory)     --local currPage = 32     print("----------------"); print(""); print("New Page")     print("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function()        local kwkBback         local kwkBindex  
       local kwkPageCorner 
       local kwkBforward         --local PageXCorner         local tablesaw         local CH02PG8  --(2) regular layer        CH02PG8 = display.newImageRect(imgDir .. "p32_ch02pg8.png", 768, 1024 );        CH02PG8.x = 384; CH02PG8.y = 512; CH02PG8.alpha = 1; CH02PG8.oldAlpha = 1        menuGroup:insert(CH02PG8)        menuGroup.CH02PG8 = CH02PG8        local ontablesawTouch = function(event)           if event.phase=="ended" then  --4             if gtStash.gt_tablesaw_563 then                gtStash.gt_tablesaw_563:toBeginning()             end             gtStash.gt_tablesaw_563= gtween.new( tablesaw, 3, { x = 384, y = 234, rotation = -360, xScale = 1, yScale = 1, alpha=1}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=0})              local myChannel = 2              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( tablesaw_audio, {channel=myChannel} )              end           end        end --(10) regular layer        tablesaw = ui.newButton{            defaultSrc= imgDir .."p32_tablesaw.png",            defaultX = 458,            defaultY = 461,            overSrc= imgDir .."p32_tablesaw.png",            overX = 458,            overY = 461,            onRelease=ontablesawTouch,            id="tablesawButton"        }        tablesaw.x = 384; tablesaw.y = 234; tablesaw.alpha = 1; tablesaw.oldAlpha = 1        menuGroup:insert(tablesaw)        menuGroup.tablesaw = tablesaw        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 print("GoForward!")                _G.kwk_currentPage = _G.kwk_currentPage + 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_652 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc= imgDir .."kwkbforward.png",            defaultX = 110,            defaultY = 87,            overSrc= imgDir .."kwkbforward.png",            overX = 110,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 476; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward --PageNum Begin
       local onkwkPageCornerTouch = function(event) 
          if event.phase=="ended" then  
            local myClosure_switch = function() 
                disposeTweens() 
                _G.kwk_currentPage = _G.kwk_menuPage
                print("GoToMenu!")
                director:changeScene( "page_" .. _G.kwk_menuPage, "overFromTop" )
            end 
            timerStash.newTimer_518 = timer.performWithDelay(0, myClosure_switch, 1) 
          end 
       end 
       kwkPageCorner = ui.newButton{ 
           defaultSrc= imgDir .."PageCornerGrey.png", 
           defaultX = 72, 
           defaultY = 80, 
           overSrc= imgDir .."PageCornerGrey.png", 
           overX = 72, 
           overY = 80, 
           onRelease=onkwkPageCornerTouch, 
           id="kwkPageCornerButton" 
       } 
       kwkPageCorner.x = 732; kwkPageCorner.y = 984; kwkPageCorner.alpha = 1; kwkPageCorner.oldAlpha = 1 
       menuGroup:insert(kwkPageCorner) 
       menuGroup.kwkPageCorner = kwkPageCorner 
       crnrtxt = display.newText("" .. _G.kwk_currentPage .. "", 750, 1005, "Arbutus Slab", 20)
       crnrtxt:setFillColor(0,0,0) --black
--PageNum End

       local onkwkBindexTouch = function(event)           if event.phase=="ended" then               local myChannel = 3              local isChannelPlaying = audio.isChannelPlaying(myChannel)              if isChannelPlaying then                 --nothing              else                 audio.play( kwkBindex_audio, {channel=myChannel} )              end             local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 _G.kwk_currentPage = _G.kwk_menuPage                print("GoToMenu!")                director:changeScene( "page_" .. _G.kwk_menuPage, "overFromTop" )             end             timerStash.newTimer_755 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBindex = ui.newButton{            defaultSrc= imgDir .."kwkbindex.png",            defaultX = 66,            defaultY = 69,            overSrc= imgDir .."kwkbindex.png",            overX = 66,            overY = 69,            onRelease=onkwkBindexTouch,            id="kwkBindexButton"        }        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex --local PageZZCorner--(10) regular layer --local PageXXCorner
--XpaperXcornerX




       local onkwkBbackTouch = function(event)           if event.phase=="ended" then            local myClosure_switch = function()                 disposeAudios()                 disposeTweens()                 print("GoBack!")                _G.kwk_currentPage = _G.kwk_currentPage - 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromLeft" )             end             timerStash.newTimer_791 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc= imgDir .."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc= imgDir .."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback        local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeAudios()                     disposeTweens()                     director:changeScene( "page_" .. _G.kwk_currentPage-1 .. ".lua", "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeAudios()                     disposeTweens()                     director:changeScene("page_" .. _G.kwk_currentPage+1 .. ".lua", "moveFromRight")                 end              end           end        end        CH02PG8:addEventListener("touch", flip)    end    drawScreen()    function disposeAudios(event)                    audio.stop(2); audio.dispose(tablesaw_audio); tablesaw_audio = nil                           audio.stop(3); audio.dispose(kwkBindex_audio); kwkBindex_audio = nil                        end    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 