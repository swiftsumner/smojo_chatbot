\
\ Copyright (c) 2021 girlbrush all rights reserved.
\
\ @author: Tang Lai Lin, Tang Poh Ling, Faaliha Fazular Rahman
\ @date: 26 Nov 2023
\
\ A simple chatbot to display a list of social media creator links
\


smojo/chat
smojo/chat/test
smojo/chat/app
smojo/chat/log
smojo/chat/ui
smojo/doc

farreladelm/azure/open-ai/chat-completion/secret
\ adding secret behind chat-completion activates chatgpt

include ./topics/background-center.m
include ./topics/ui.m

include ./topics/introduction.m

include ./topics/GPT/props.m
\ include ./topics/GPT/friendgpt-messages.m
\ include ./topics/GPT/friendgpt-conversations.m
include ./topics/GPT/rapgpt-messages.m
include ./topics/GPT/rapgpt-conversations.m


include ./topics/business-inquiries.m
include ./topics/social-media.m


include ./topics/idk.m

idk: Sorry, I'm still learning about Singapore.

\ ----- COLOR PALETTE -----
\ https://coolors.co/dbb1bc-d3c4e3-8f95d3-89daff-58504a

: test ( -- )
    \ Answers or input from the user
    % youtube
;

: publish ( -- )
    \ Your chatbot name
    publish: merlion-jalan-jalan
    
    \ chatbot display when starting a conversation
    init: ${ intro }
    
    \ ------ PROPERTIES OF THE CHATBOT USER INTERFACE --------
    
    \ background
    background: https://i.postimg.cc/FFw7dmLG/Untitled-design-2.png
    avatar: https://i.imgur.com/2v1mJQT.jpg
    avatar-border: solid #d1cfb0 2px
    \ Google fonts used https://fonts.google.com/
    import-font: Atma
    \ font used in bubble
    bubble-font: 'Atma', sans-serif
    \ Chatbot text & bubble color
    bubble-bot-color: white
    bubble-bot-background: #b06161
    \ Text color & user chat bubble
    bubble-user-color: black
    bubble-user-background: #c0af8c
    
    \ ----- OTHER BUBBLE PROPERTIES -----
    
    \ Bubble Border
    bubble-border: none
   bubble-radius: 18
    \ bubble font size
    bubble-font-size: 17
    \ Maximum width in bubbles (in pixels)
    bot-bubble-width: 450
    \ Limit the number of bubbles that appear on the screen
    limit: 3
    \ Send button image
    send-button-image-url: https://i.imgur.com/aXQQmIL.png
    \ CSS style for send button
    send-button-image-style: padding-left:10px;
    
    \ ----- PROPERTIES OF THE URL LINK FOR SOCIAL MEDIA --------
    
    \ Will appear when sharing the chatbot link
    title: Merlion Jalan-Jalan
    description: Discover, Explore, Roar – Your Passport to Singaporean Magic!
    thumbnail: https://i.imgur.com/2v1mJQT.jpg
;

: update-log ( -- ) 
    \ The log name is the same as the name of the published chatbot (line 41)
    log: merlion-jalan-jalan
;










