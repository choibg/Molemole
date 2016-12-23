{TextLayer} = require 'TextLayer'
ios = require 'iOSKit'
source = require 'source'
Screen.backgroundColor = "#ffffff"
Framer.Defaults.Animation = curve: "ease()"
status = new ios.StatusBar 
status.backgroundColor = "#fff"

Green_Gnb = new Layer
	y:20*2
	width: 750
	height: 98
	image: "images/2.Green_Gnb_750.png"

Green_Gnb.states.add 
	up : 
		y:-29*2
	down:
		y:20*2

bottom_tab = new Layer
	y:Screen.height-88
	width: 750
	height: 88
	image: "images/bottom_tab.png"


# Component_Tab_Page 
component_page = new ScrollComponent
	width: Screen.width
	height: 51*2
	x:0
	y:69*2
	scrollVertical: false
	scrollHorizontal: false
	backgroundColor: "rgba(133,159,188,0)"


component_page.states.add 
	up : 
		y:20*2	
	down:
		y:69*2

component_page.content.states.add = 
	first :
		y:0
	second: 
		y:-51*2
	third :
		y:-51*3

component_page.content.backgroundColor= "transparent"

component_page_background = new Layer
	width: Screen.width
	height: 50*2 *3
	x:0
	y:0
	backgroundColor:"rgb(255,255,255)"
	opacity: 0.9

component_page_background.superLayer=component_page.content	
component_page_background.style["-webkit-filter"]="blur(2px)"
line = new Layer
	width:Screen.width
	y:50*2
	height:2
	backgroundColor="rgba(0,0,0,0.1)"
line.superLayer=component_page
upper_line = new Layer
	width:Screen.width
	y:2
	height:2
	backgroundColor: "rgba(255,255,255,1)"
	backgroundColor="rgba(0,0,0,0.1)"
upper_line.superLayer=component_page


#component_tab
component_tab = new Layer
	width: Screen.width
	height: 51*2
	x:0
	y:0
	backgroundColor: "transparent"

scroll = new ScrollComponent
	width: Screen.width-(55*2)
	height: 50*2
	x:0
	y:0
	scrollVertical: false
	
scroll.speedX = 0.3

scroll.superLayer=component_tab

scroll.contentInset = 
	left:16*2
	right:0

scroll.content.backgroundColor="transparent"

img_icon = new Layer
	x:0
	y:15*2
	width: 40
	height: 40
	image: "images/Img_icon.png"
		
video_icon = new Layer
	x:44*2
	y: 16*2
	width: 44
	height: 34
	image: "images/video_icon.png"
	
map_icon = new Layer
	x:92*2
	y:13*2
	width: 34
	height: 44
	image: "images/map_icon.png"

search_icon = new Layer
	x:177*2
	y:16*2
	width: 36
	height: 38
	image: "images/Search_icon.png"

oglink_icon = new Layer
	x:134*2
	y:15*2
	width: 38
	height: 38
	image: "images/Oglink_icon.png"

quote_icon = new Layer
	x:221*2
	y:16*2
	width: 40
	height: 34
	image: "images/Quote_icon.png"
	
line_icon = new Layer
	x:266*2
	y:24*2
	width: 36
	height: 4
	image: "images/line_icon.png"

img_icon.superLayer = scroll.content
line_icon.superLayer =scroll.content
map_icon.superLayer = scroll.content
oglink_icon.superLayer = scroll.content
quote_icon.superLayer = scroll.content
search_icon.superLayer = scroll.content
video_icon.superLayer = scroll.content

Align_backgronud = new Layer
	width:56*2
	height:50*2
	x:318*2
	y:0
	backgroundColor: "white"
Align_line=new Layer
	x:318*2
	y:0
	width: 2
	height: 100
	backgroundColor="rgba(0,0,0,0.1)"

Align_backgronud.superLayer =component_tab
Align_line.superLayer = component_tab

align_icon = new Layer
	x:18*2
	y:17*2
	width: 20*2
	height: 17*2
	image: "images/align.png"

align_icon.superLayer = Align_backgronud

component_tab.superLayer = component_page.content



#text_compoenent_tab 
text_component_tab = new Layer
	width: Screen.width
	height: 50*2
	x:0
	y:component_page.height
	backgroundColor: "transparent"

back_icon = new Layer
	x:18*2
	y:17*2
	width: 20
	height: 36
	image: "images/back_icon.png"

subject_icon = new Layer
	x:52*2-32
	y:17*2
	width: 76
	height: 32
	image: "images/subject_icon.png"
	
text_icon = new Layer
	x:112*2-32
	y:19*2
	width: 68
	height: 26
	image: "images/text_icon.png"
	
bold_icon = new Layer
	x:168*2-32
	y:18*2
	width: 24
	height: 28
	image: "images/bold_icon.png"

italic_icon = new Layer
	x:205*2-32
	y:18*2
	width: 22
	height: 28
	image: "images/italic_icon.png"
	
Underline_icon = new Layer
	x:240*2-32
	y:18*2
	width: 30
	height: 34
	image: "images/Underline_icon.png"
	
text_color_icon = new Layer
	x:280*2-32
	y:18*2
	width: 36
	height: 28
	image: "images/text_color_icon.png"

text_Backgoundcolor_icon = new Layer
	x:323*2-32
	y: 15*2
	width: 38
	height: 38
	image: "images/text_Backgoundcolor_icon.png"

Url_icon = new Layer
	x:365*2-32
	y:14*2
	width: 54
	height: 40
	image: "images/Url_icon.png"

text_scroll = new ScrollComponent
	width: Screen.width
	height: 50*2
	x:0
	y:0
	scrollVertical: false
text_scroll.speedX = 0.3
text_scroll.contentInset = 
	left:16*2
	right:0
text_scroll.content.backgroundColor="transparent"
text_scroll.superLayer=text_component_tab
text_scroll.contentInset = 
	left:16*2
	right:0
	
back_icon.superLayer = text_component_tab
subject_icon.superLayer = text_scroll.content
text_icon.superLayer = text_scroll.content
bold_icon.superLayer = text_scroll.content
italic_icon.superLayer = text_scroll.content
Underline_icon.superLayer = text_scroll.content
text_color_icon.superLayer = text_scroll.content
text_Backgoundcolor_icon.superLayer = text_scroll.content
Url_icon.superLayer =text_scroll.content

text_component_tab.superLayer = component_page.content

Blur_right = new Layer
	y:0
	x:345*2
	width: 58
	height: 98
	image: "images/Blur_right.png"
Blur_left = new Layer
	y:0
	x:0
	width: 130
	height: 100
	image: "images/Blur_left.png"
Blur_right.superLayer =text_component_tab
Blur_left.superLayer =text_component_tab
back_icon.bringToFront()
text_component_tab.visible=true

#text_subject_component_tab
text_subject_component_tab = new Layer
	width: Screen.width
	height: 50*2
	x:0
	y:component_page.height*2
	backgroundColor: "transparent"

subject_back_icon= new Layer
	x:18*2
	y:17*2
	width: 20
	height: 36
	image: "images/back_icon.png"

subject1 = new Layer
	x:34*2
	y:16*2
	width: 84
	height: 36
	image: "images/subject1.png"
	
subject2 = new Layer
	x:96*2
	y:18*2
	width: 78
	height: 32
	image: "images/subject2.png"
	
subject3 = new Layer
	x:154*2
	y:21*2
	width: 66
	height: 26
	image: "images/subject3.png"



text_subject_component_tab_scroll = new ScrollComponent
	width: Screen.width
	height: 50*2
	x:0
	y:0
	scrollVertical: false
text_subject_component_tab_scroll.speedX = 0.3
text_subject_component_tab_scroll.contentInset = 
	left:16*2
	right:0
text_subject_component_tab_scroll.content.backgroundColor="transparent"
text_subject_component_tab_scroll.superLayer=text_subject_component_tab
text_subject_component_tab_scroll.contentInset = 
	left:16*2
	right:0
	
subject_back_icon.superLayer = text_subject_component_tab
subject1.superLayer = text_subject_component_tab_scroll.content
subject2.superLayer = text_subject_component_tab_scroll.content
subject3.superLayer = text_subject_component_tab_scroll.content

text_subject_component_tab.superLayer = component_page.content


subject_Blur_left = new Layer
	y:0
	x:0
	width: 130
	height: 100
	image: "images/Blur_left.png"

subject_Blur_left.superLayer =text_subject_component_tab
subject_back_icon.bringToFront()




#map_comoponent_tab

map_component_tab = new Layer
	width: Screen.width
	height: 51*2
	x:0
	y:component_page.height
	backgroundColor: "transparent"

map_component_tab_scroll = new ScrollComponent
	width: Screen.width-32
	height: 50*2
	x:0
	y:0
	scrollVertical: false
	scrollHorizontal: false
	
map_component_tab_scroll.speedX = 0.3

map_component_tab_scroll.superLayer=map_component_tab

map_component_tab_scroll.contentInset = 
	left:16*2
	right:0

map_component_tab_scroll.content.backgroundColor="transparent"

map_imagetype_icon = new Layer
	x:0
	y:9*2
	width: 68
	height: 62
	image: "images/map_imagetype_icon.png"

Map_texttype_icon = new Layer
	x:57*2
	y:9*2
	width: 68
	height: 60
	image: "images/Map_texttype_icon.png"

up_icon = new Layer
	x:map_component_tab_scroll.width-(117*2+36)
	y:12*2
	width: 36
	height: 60
	image: "images/Up_icon.png"

down_icon = new Layer
	x:map_component_tab_scroll.width-(74*2+54)
	y:12*2
	width: 54
	height: 62
	image: "images/down_icon.png"

trash_icon = new Layer
	x: map_component_tab_scroll.width-(76)
	y:15*2
	width: 34
	height: 38
	image: "images/trash_icon.png"
vertical_line = new Layer
	x:map_component_tab_scroll.width-(56*2)
	y:13*2
	width: 2
	height: 24*2
	backgroundColor:"#000"
	opacity: 0.1 

map_imagetype_icon.superLayer = map_component_tab_scroll.content
Map_texttype_icon.superLayer =map_component_tab_scroll.content
up_icon.superLayer = map_component_tab_scroll.content
down_icon.superLayer = map_component_tab_scroll.content
trash_icon.superLayer = map_component_tab_scroll.content
vertical_line.superLayer = map_component_tab_scroll.content
map_component_tab.superLayer = component_page.content

# component_tab.parent = component_page.content
# component_page.addPage(text_component_tab)
# component_page.addPage(map_component_tab)
#content
t = new TextLayer
    x:20*2
    width: 335*2
    height: 40
    y:155*2 -20
    fontSize: 28*2
    text: "오래된 건물 리모델링"
    color: "#aaa"
    textAlign: "center"
    color:"#000000"
    fontFamily: "NanumGothic"

sub_t = new TextLayer
    x:20*2
    y:200*2 -20
    width: 335*2
    height: 40
    text: "비호감에서 호감이 되는건… 사람이나 집이나 어려운 일이에요. 칙칙한 성격, 외모를 바꾸기까지 얼마나 힘든 과정이 있었을까. 소개해드릴 주택은 1890년에 건축되어 125년 된 오래된 건물을 리모델링하여 지금의 모습을 하게 되었는데, 그 변화가 참으로 드라마틱합니다."
    color: "#aaa"
    textAlign: "center"
    x:20*2
    y:200*2 -20
    fontSize: 17*2
    color:"#444444"
    fontFamily: "NanumGothic"
sub_t.lineHeight = 1.55

map = new Layer
	y:139*2 + 420 + 50
	width: 750
	height: 462
	image: "images/map.png"
map_active = new Layer
	x:0
	y:0
	width: 750
	height: 462
	borderWidth: 3
	backgroundColor: "rgba(147,147,147,0)"
	borderColor: "#00C73C"
	opacity: 0
	superLayer: map
map_active.states.add
	select : opacity: 1
	non_select: opacity: 0
map_active.states.animationOptions = 
	time : 0.1


component_oglink_img = new Layer
	x:Align.center
	y:139*2+462+50 + + 420 + 50 
	width: 682
	height: 192
	image: "images/component_oglink_img.png"

component_img_extend = new Layer
	width: 750
	height: 448
	y:139*2+462+50 + 192 + 50 + 420 + 50 
	image: "images/component_img_extend.png"

scroll_content = new ScrollComponent
	width: Screen.width
	height: Screen.height
	scrollHorizontal: false
scroll_content.content.backgroundColor = "#ffffff"
scroll_content.sendToBack()
map.superLayer= scroll_content.content


component_oglink_img.superLayer = scroll_content.content
component_img_extend .superLayer = scroll_content.content
t.superLayer = scroll_content.content
sub_t.superLayer = scroll_content.content

scroll_content.onMove ->
	if scroll_content.scrollY > 0 
		Green_Gnb.states.switch("up")
		component_page.states.switch("up")
	else 
		Green_Gnb.states.switch("down")
		component_page.states.switch("down")
fields = []
for i in [0..20]
	field = new ios.Field
	    placeholderText:""
		constraints:
			top:100
			width:Screen.width
	fields.push(field)

	field.width = Screen.width - 40*2
	field.y = 139*2+462+50 + 192 + 50 + 420 + 50 +400 + i*50
	field.x = 40
	field.superLayer = scroll_content.content
	field.bringToFront()
	
	field.onTap -> 
		if field.active == false
			tab_second_animation = new Animation
				layer : component_page.content
				properties:  y: - component_page.height
				curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
				time:0.2
			tab_second_animation.start()		
			map_component_tab.visible = false
			text_component_tab.visible = true
				
	 
	back_icon.on Events.TouchEnd, ->
		tab_first_animation = new Animation
			layer : component_page.content
			properties:  y:0
			curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
			time:0.2
		tab_first_animation.start()		


confirm_active = ->
	active = 0 
	for i in [0...20]
		if fields[i].active
		    active += 1
	if active > 0 
		return true	
	else 
		return false
old_confirm_active = false		
Utils.interval 0.05, ->
	if confirm_active() and old_confirm_active == false
		tab_second_animation = new Animation
			layer : component_page.content
			properties:  y: - component_page.height
			curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
			time:0.2
		tab_second_animation.start()		
		map_component_tab.visible = false
		text_component_tab.visible = true	
	else if confirm_active() == false and old_confirm_active 
		tab_first_animation = new Animation
			layer : component_page.content
			properties:  y:0
			curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
			time:0.2
		tab_first_animation.start()		
	old_confirm_active = confirm_active()
	
status.bringToFront()
subject_icon.onTap ->
	tab_third_animation = new Animation
		layer : component_page.content
		properties:  y: - component_page.height*2
		curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
		time:0.2
	tab_third_animation.start()	
map.onTap -> 
	click_component = -> 
# 		map_active.states.next()
		tab_first_animation = new Animation
			layer : component_page.content
			properties:  y:0
			curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
			time:0.2	
		tab_second_animation = new Animation
			layer : component_page.content
			properties:  y: - component_page.height
			curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
			time:0.2
# 		print component_page.content.y
# 		print map_component_tab.visible
		if component_page.content.y == 0 
			map_component_tab.visible = true 
			text_component_tab.visible = false 
			tab_second_animation.start()
			map_active.states.switch("select")
		
		else if component_page.content.y == -component_page.height and map_component_tab.visible 
			map_component_tab.visible = false
			text_component_tab.visible = true 
			tab_first_animation.start()	
			map_active.states.switch("non_select")
	click_component()

	
# 	map_component_tab.visible = true
# 	text_component_tab.visible = false
# 	tab_second_animation = new Animation
# 		layer : component_page.content
# 		properties:  y: - component_page.height
# 		curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
# 		time:0.2
# 	tab_second_animation.start()	
				
# 	map.onTap ->
# 		map_active.states.next()
# 		tab_first_animation = new Animation
# 			layer : component_page.content
# 			properties:  y:0
# 			curve: "bezier-curve(0.25, 0.1, 0.25, 1)"
# 			time:0.2
# 		tab_first_animation.start()		


