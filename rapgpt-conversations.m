\
\ Copyright (c) 2021 farreladelm all rights reserved.
\
\ @author: Tang Lai Lin, Tang Poh Ling, Faaliha Fazular Rahman
\ @date: 26 Nov 2023
\
\ A brief description of this program.
\

\ this function is to empty system prompt if you are using multiple system prompts in one chatbot

mem: rapgpt-response

Q: ItineraryGPT
MM Welcome to Itinerary GPT. How many days do you plan to spend in Singapore?
M.
K: rap-days
--

Q: Reset ItineraryGPT
MM <p>
MM How many <b>days</b> do you plan to spend in Singapore? If it's less than 1 day,
MM type "1 day".
MM </p>
M.
K: rap-days
--

room: rap-days

Q: $_
B: last-question rap-days! drop
MM <p justify="center">
MM What kind of activity/activities would you like to do?
MM Eg. Shopping, eating, animal watching, nature walks, cultural experiences.
M. </p>
K: $clear rap-activity
--

end-room

room: rap-activity

Q: $_
B: last-question rap-activity! drop
MM <p justify="center">
MM Which month and year will you be visiting Singapore?
M. </p>
K: $clear rap-month
--

end-room


room: rap-month

Q: $_
B: last-question rap-month! drop
MM <p justify="center">
MM What language would you like this to be written in?
M. </p>
K: $clear generate-rap
--

end-room

room: generate-rap

Q: $_
B: last-question rapgpt-ask-prompt rapgpt-response!
MM ${ rapgpt-response }
MM <br>
MM <p justify="center">
MM Happy with this itinerary? Otherwise, click Reset ItineraryGPT or Back to finish.
MM </p>
M. ${ "Reset ItineraryGPT" btn-secondary } ${ "Back" btn-secondary }
--

end-room










