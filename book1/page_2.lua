-- Code created by Kwik - Copyright: kwiksher.com -- Version: 1.9.7a module(..., package.seeall)  function new()     local menuGroup = display.newGroup()     local disposeAudios     local disposeTweens     --local currPage = 2     print("----------------"); print(""); print("New Page")     print("The current page is: " .. _G.kwk_currentPage)     local path = system.pathForFile( "book.txt", system.DocumentsDirectory )     local file = io.open( path, "w+" )     file:write( _G.kwk_currentPage )     io.close( file )     local drawScreen = function()        local staranima1         local kwkBback         local kwkBindex         local kwkBforward         local pageN         local chapt1buttoncli         local chapt1button         local chapt2buttoncli         local chapt2button         local chapt3buttoncop         local chapt3button         local chapt4buttoncop         local chapt4button         local chapt5buttoncop         local chapt5button         local chapt6buttoncop         local chapt6button         local chapt7buttoncop         local chapt7button         local BG  --(2) regular layer        BG = display.newImageRect(imgDir .. "Book1_TableOfContents.png", 768, 1024 );        -- formerly BG.x = 369; BG.y = 512       BG.x = 384       BG.y = 512       BG.alpha = 1; BG.oldAlpha = 1        menuGroup:insert(BG)        menuGroup.BG = BG --[[       local onchapt21buttonTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("Go to Chapter " .. 21 .. " at page ".. _G.kwk_firstPageOfChapter[21])                _G.kwk_currentPage = _G.kwk_firstPageOfChapter[21]                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_735 = timer.performWithDelay(0, myClosure_switch, 1)           end        end ]]--(10) regular layer        local onchapt7buttonTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("Go to Chapter " .. 7 .. " at page ".. _G.kwk_firstPageOfChapter[7])                _G.kwk_currentPage = _G.kwk_firstPageOfChapter[7]                director:changeScene( "page_" .. _G.kwk_firstPageOfChapter[7], "moveFromRight" )             end             timerStash.newTimer_536 = timer.performWithDelay(0, myClosure_switch, 1)           end        end       chapt7button = ui.newButton{            defaultSrc= imgDir .."p2_chapt7button.png",            defaultX = 240,            defaultY = 26,            overSrc= imgDir .."p2_chapt7buttoncop.png",            overX = 240,            overY = 26,            onRelease=onchapt7buttonTouch,            id="chapt7buttonButton"        }        chapt7button.x = 1 -- chapt7button.x = 348       chapt7button.y = 1 -- chapt7button.y = 306         chapt7button.alpha = 1; chapt7button.oldAlpha = 1        menuGroup:insert(chapt7button)        menuGroup.chapt7button = chapt7button        local onchapt6buttonTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("Go to Chapter " .. 6 .. " at page ".. _G.kwk_firstPageOfChapter[6])                _G.kwk_currentPage = _G.kwk_firstPageOfChapter[6]                director:changeScene( "page_" .. _G.kwk_firstPageOfChapter[6], "moveFromRight" )             end             timerStash.newTimer_536 = timer.performWithDelay(0, myClosure_switch, 1)           end        end--(10) regular layer        chapt6button = ui.newButton{            defaultSrc= imgDir .."p2_chapt6button.png",            defaultX = 250,            defaultY = 24,            overSrc= imgDir .."p2_chapt6buttoncop.png",            overX = 250,            overY = 24,            onRelease=onchapt6buttonTouch,            id="chapt6buttonButton"        }        chapt6button.x = 1 -- chapt6button.x = 353       chapt6button.y = 1 -- chapt6button.y = 278         chapt6button.alpha = 1; chapt6button.oldAlpha = 1        menuGroup:insert(chapt6button)        menuGroup.chapt6button = chapt6button        local onchapt5buttonTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("Go to Chapter " .. 5 .. " at page ".. _G.kwk_firstPageOfChapter[5])                _G.kwk_currentPage = _G.kwk_firstPageOfChapter[5]                director:changeScene( "page_" .. _G.kwk_firstPageOfChapter[5], "moveFromRight" )             end             timerStash.newTimer_776 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        chapt5button = ui.newButton{            defaultSrc= imgDir .."p2_chapt5button.png",            defaultX = 217,            defaultY = 23,            overSrc= imgDir .."p2_chapt5buttoncop.png",            overX = 217,            overY = 23,            onRelease=onchapt5buttonTouch,            id="chapt5buttonButton"        }        chapt5button.x = 1 -- chapt5button.x = 336       chapt5button.y = 1 -- chapt5button.y = 248         chapt5button.alpha = 1; chapt5button.oldAlpha = 1        menuGroup:insert(chapt5button)        menuGroup.chapt5button = chapt5button        local onchapt4buttonTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("Go to Chapter " .. 4 .. " at page ".. _G.kwk_firstPageOfChapter[4])                _G.kwk_currentPage = _G.kwk_firstPageOfChapter[4]                director:changeScene( "page_" .. _G.kwk_firstPageOfChapter[4], "moveFromRight" )             end             timerStash.newTimer_990 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        chapt4button = ui.newButton{            defaultSrc= imgDir .."p2_chapt4button.png",            defaultX = 261,            defaultY = 27,            overSrc= imgDir .."p2_chapt4buttoncop.png",            overX = 261,            overY = 27,            onRelease=onchapt4buttonTouch,            id="chapt4buttonButton"        }        chapt4button.x = 1 -- chapt4button.x = 358       chapt4button.y = 1 -- chapt4button.y = 220         chapt4button.alpha = 1; chapt4button.oldAlpha = 1        menuGroup:insert(chapt4button)        menuGroup.chapt4button = chapt4button        local onchapt3buttonTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("Go to Chapter " .. 3 .. " at page ".. _G.kwk_firstPageOfChapter[3])                _G.kwk_currentPage = _G.kwk_firstPageOfChapter[3]                director:changeScene( "page_" .. _G.kwk_firstPageOfChapter[3], "moveFromRight" )             end             timerStash.newTimer_268 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        chapt3button = ui.newButton{            defaultSrc= imgDir .."p2_chapt3button.png",            defaultX = 229,            defaultY = 27,            overSrc= imgDir .."p2_chapt3buttoncop.png",            overX = 229,            overY = 27,            onRelease=onchapt3buttonTouch,            id="chapt3buttonButton"        }        chapt3button.x = 1 -- chapt3button.x = 342       chapt3button.y = 1 -- chapt3button.y = 191         chapt3button.alpha = 1; chapt3button.oldAlpha = 1        menuGroup:insert(chapt3button)        menuGroup.chapt3button = chapt3button        local onchapt2buttonTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("Go to Chapter " .. 2 .. " at page ".. _G.kwk_firstPageOfChapter[2])                _G.kwk_currentPage = _G.kwk_firstPageOfChapter[2]                director:changeScene( "page_" .. _G.kwk_firstPageOfChapter[2], "moveFromRight" )             end             timerStash.newTimer_448 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        chapt2button = ui.newButton{            defaultSrc= imgDir .."p2_chapt2button.png",            defaultX = 261,            defaultY = 24,            overSrc= imgDir .."p2_chapt2buttoncli.png",            overX = 261,            overY = 24,            onRelease=onchapt2buttonTouch,            id="chapt2buttonButton"        }        chapt2button.x = 1 -- chapt2button.x = 358       chapt2button.y = 1 -- chapt2button.y = 165         chapt2button.alpha = 1; chapt2button.oldAlpha = 1        menuGroup:insert(chapt2button)        menuGroup.chapt2button = chapt2button        local onchapt1buttonTouch = function(event)           if event.phase=="ended" then           -- This plays the interstitial intro movie if they click Chapter 1.         media.playVideo( "book1_intro_movie.mp4", system.ResourceDirectory, false )             local myClosure_switch = function()                 disposeTweens()                 print("GoForward!")                _G.kwk_currentPage = _G.kwk_currentPage+1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_778 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        chapt1button = ui.newButton{            defaultSrc= imgDir .."Book1_ToC_chapter1button.png",            defaultX = 170,            defaultY = 30,            overSrc= imgDir .."Book1_ToC_chapter1button.png",            overX = 204,            overY = 36,            onRelease=onchapt1buttonTouch,            id="chapt1buttonButton"        }        chapt1button.x = 257+85 -- 257 -- chapt1button.x = 329       chapt1button.y = 252+22 -- 252 -- chapt1button.y = 235         chapt1button.alpha = 1; chapt1button.oldAlpha = 1        menuGroup:insert(chapt1button)        menuGroup.chapt1button = chapt1button        local onpageNTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 _G.kwk_currentPage = 2                print("GoToMenu!")                director:changeScene( "page_" .. _G.kwk_menuPage, "overFromTop" )            end             timerStash.newTimer_014 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        pageN = ui.newButton{            defaultSrc= imgDir .."p2_pagen.png",            defaultX = 72,            defaultY = 81,            overSrc= imgDir .."p2_pagen.png",            overX = 72,            overY = 81,            onRelease=onpageNTouch,            id="pageNButton"        }        pageN.x = 732; pageN.y = 983; pageN.alpha = 1; pageN.oldAlpha = 1        menuGroup:insert(pageN)        menuGroup.pageN = pageN        local onkwkBforwardTouch = function(event)           if event.phase=="ended" then              local myClosure_switch = function()                 disposeTweens()                 print("GoForward!")                _G.kwk_currentPage = _G.kwk_currentPage+1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromRight" )             end             timerStash.newTimer_106 = timer.performWithDelay(0, myClosure_switch, 1)          -- This plays the interstitial intro movie if they click Next Page.         media.playVideo( "book1_intro_movie.mp4", system.ResourceDirectory, false )           end        end --(10) regular layer        kwkBforward = ui.newButton{            defaultSrc= imgDir .."kwkbforward.png",            defaultX = 111,            defaultY = 87,            overSrc= imgDir .."kwkbforward.png",            overX = 111,            overY = 87,            onRelease=onkwkBforwardTouch,            id="kwkBforwardButton"        }        kwkBforward.x = 475; kwkBforward.y = 975; kwkBforward.alpha = 1; kwkBforward.oldAlpha = 1        menuGroup:insert(kwkBforward)        menuGroup.kwkBforward = kwkBforward --(2) regular layer        kwkBindex = display.newImageRect(imgDir .. "kwkbindex.png", 66, 69 );        kwkBindex.x = 383; kwkBindex.y = 969; kwkBindex.alpha = 1; kwkBindex.oldAlpha = 1        menuGroup:insert(kwkBindex)        menuGroup.kwkBindex = kwkBindex        local onkwkBbackTouch = function(event)           if event.phase=="ended" then            local myClosure_switch = function()                 disposeTweens()                 print("GoBack!")                _G.kwk_currentPage = _G.kwk_currentPage - 1                director:changeScene( "page_" .. _G.kwk_currentPage, "moveFromLeft" )             end             timerStash.newTimer_330 = timer.performWithDelay(0, myClosure_switch, 1)           end        end --(10) regular layer        kwkBback = ui.newButton{            defaultSrc= imgDir .."kwkbback.png",            defaultX = 111,            defaultY = 88,            overSrc= imgDir .."kwkbback.png",            overX = 111,            overY = 88,            onRelease=onkwkBbackTouch,            id="kwkBbackButton"        }        kwkBback.x = 293; kwkBback.y = 973; kwkBback.alpha = 1; kwkBback.oldAlpha = 1        menuGroup:insert(kwkBback)        menuGroup.kwkBback = kwkBback --(2) regular layer        staranima1 = display.newImageRect(imgDir .. "p2_staranima1.png", 16, 16 );        staranima1.x = -12; staranima1.y = 101; staranima1.alpha = 1; staranima1.oldAlpha = 1        menuGroup:insert(staranima1)        menuGroup.staranima1 = staranima1        --2        gtStash.gt_staranima1_444= gtween.new( staranima1, 2.5, { x = 871, y = 618, rotation = 0, xScale = 1, yScale = 1, alpha=1}, {ease = gtween.easing.linear, repeatCount = 1, reflect = false,  delay=2})        local function flip (event)           local spacer = 180            if event.phase =="ended" then               if event.xStart < event.x and (event.x - event.xStart) >= spacer then                 if (_G.kwk_currentPage > 1) then                      disposeTweens()                     director:changeScene( "page_" .. _G.kwk_currentPage-1 .. ".lua", "moveFromLeft" )                 end              elseif event.xStart > event.x and (event.xStart-event.x) >= spacer then                  if (_G.kwk_currentPage < _G.kwk_lastPage) then                      disposeTweens()                     director:changeScene("page_" .. _G.kwk_currentPage+1 .. ".lua", "moveFromRight")                 end              end           end        end        BG:addEventListener("touch", flip)    end    drawScreen()    function disposeTweens(event)       cancelAllTweens();       cancelAllTimers();       cancelAllTransitions();    end    return menuGroup end 