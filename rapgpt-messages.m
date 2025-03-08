\
\ Copyright (c) 2021 farreladelm all rights reserved.
\
\ @author: Tang Lai Lin, Tang Poh Ling, Faaliha Fazular Rahman
\ @date: 26 Nov 2023
\
\ A brief description of this program.
\

mem: rap-days rap-output rap-activity rap-month

\ no past conversations
\ nil rapgpt-message-history! drop

\ Normal ask if you want to memorize the conversation
\ : ask ( "prompt" -- "answer" )
\     message-history swap
\     ask { msgs ans }
\     msgs rapgpt-message-history! drop
\     ans
\ ;

\ (if you dont need to memorize conversation)
\ ask without memorizing the last conversation
\ this will improve the response time
\ and also cheaper prompt
: rapgpt-ask ( "prompt" -- "answer" )
    nil swap
    ask 
    swap drop \ remove the conversation
;

\ : rapgpt-ask-prompt ( "sentence" -- ) ctx{ feeling }
\    rap-days ctx{ days }
\    rap-activity ctx{ activity }
\    q{
\        I am feeling **#{feeling}** because of #{input}.
\        Generate a 3-paragraph rap with 4 short sentences per paragraph that describes about my feeling.
\        You need to strictly rap in #{language} language. 
\        You need to heavily include #{input} as word in your rap. 
\    }q rapgpt-ask
\ ;

: rapgpt-ask-prompt ( "sentence" -- ) ctx{ language }
    rap-days ctx{ days }
    rap-activity ctx{ activity }
    rap-month ctx{ month }
    q{
        I am staying in Singapore for #{days} days.
        Generate a brief list of activities involving #{activity} for a #{days} 
        day trip in Singapore that captures the heart and soul of Singapore for a 
        memorable and immersive journey. 
        Recommend real activities, festivals or events that will actually take 
        place during #{month} in Singapore.
        It should have local insights, lesser-known spots, and unique suggestions 
        beyond the typical tourist routes. 
        The locations for each day should not exceed 5 kilometers from each other.
        Add emojis whenever you can.
        Each day should not exceed 50 words.
        Each location cannot be repeated for more than one day and must exist in Singapore.
        Provide accurate cost for each location if available.
        Write this in #{language}.
    }q rapgpt-ask
;








