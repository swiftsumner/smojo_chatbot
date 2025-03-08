\
\ Copyright (c) 2021 farreladelm all rights reserved.
\
\ @author: Tang Lai Lin, Tang Poh Ling, Faaliha Fazular Rahman
\ @date: 26 Nov 2023
\
\ A brief description of this program.
\

: ffactivity-slider ( -- "s" )
    {{
        \ slide 1
        {{
            "https://media.istockphoto.com/id/843401054/photo/s-e-a-aquarium.jpg?s=612x612&w=0&k=20&c=wIKhgLwg9Q7Na7DPqMoK2pnGGczfuJSSrOjCAmoEYR4=" \ image
            "S.E.A Aquarium" \ Displayed text
            "sea aquarium" \ input when user clicks
            
        }}
        
        \ slide 2
        {{
            "https://media.istockphoto.com/id/855246578/photo/singapore-zoo-the-place-we-meet-one-of-natures-creatures.jpg?s=612x612&w=0&k=20&c=GRzrwlDohmHE9u6eOWZEq4IELEOrKrd14kJKnrD_CSA="
            "Mandai Wildlife Reserve"
            "mandai wildlife reserve"
        }}
    
        \ slide 3
        {{
            "https://media.istockphoto.com/id/1143777929/photo/resorts-world-sentosa.jpg?s=612x612&w=0&k=20&c=np0qDh3ApcSy3RcGeSmnc8pGWr8SoaErzTTaGrtq1Vc="
            "Universal Studios Singapore"
            "universal studios singapore"
        }}
    
    }} slider
;

: cultural-slider ( -- "s" )
    {{
        \ slide 1
        {{
            "https://media.istockphoto.com/id/451244049/photo/singapore.jpg?s=612x612&w=0&k=20&c=az6fealPJ-plTBHwfp-r1A_Sq-L8jPyGN236dsixhXQ=" \ image
            "National Museum of Singapore" \ Displayed text
            "National Museum of Singapore" \ input when user clicks
            
        }}
        
        \ slide 2
        {{
            "https://media.istockphoto.com/id/645589000/photo/diwali-lights-in-singapore.jpg?s=612x612&w=0&k=20&c=11WHu93pLkMHOJDMJhZHO14iLe-wC8vAMsJ9PUV58NE="
            "Little India"
            "Little India"
        }}
    
        \ slide 3
        {{
            "https://media.istockphoto.com/id/1162785687/photo/street-view-of-masjid-sultan.jpg?s=612x612&w=0&k=20&c=l9ad72z2OZnS8Qe79sasQCT0JCjhmd5xSN_WTdaG0bc="
            "Kampong Glam"
            "kampong glam"
        }}
        
        \ slide 4
        {{
            "https://media.istockphoto.com/id/911450864/photo/chinatown-singapore.jpg?s=612x612&w=0&k=20&c=86dQLK9a7K-0AK4WObGfNhV1IMgZ9pSLhbr2yjodaas="
            "Chinatown"
            "chinatown"
        }}
    
    }} slider
;


: nightlife-slider ( -- "s" )
    {{
        \ slide 1
        {{
            "https://media.istockphoto.com/id/628564386/photo/clarke-quay-in-singapore.jpg?s=612x612&w=0&k=20&c=mMD0rYHmPt1wi51k7LjLatc9xj-IEhAUyCJOfbP7ghM=" \ image
            "Clarke Quay" \ Displayed text
            "clarke quay" \ input when user clicks
            
        }}
        
        \ slide 2
        {{
            "https://media.istockphoto.com/id/1065004892/photo/aerial-view-panoramic-of-the-singapore-skyline-and-marina-bay-the-marina-is-the-centre-of-the.jpg?s=612x612&w=0&k=20&c=CPVZzm-wK4IUuX9i2K2Jta3qc7bAlAQgDOUlQk2b7OY="
            "Marina Bay Sands"
            "Marina Bay Sands"
        }}
    
        \ slide 3
        {{
            "https://media.istockphoto.com/id/1251259667/photo/commercial-architecture-of-orchard-rd-in-singapore-after-sunset.jpg?s=612x612&w=0&k=20&c=0seUiZF7cXtnwn-4Y6FDVdLo7AQypyi6pjbAUoPMSv8="
            "Orchard Road Shopping"
            "orchard road"
        }}
        
        \ slide 4
        {{
            "https://media.istockphoto.com/id/458729241/photo/marina-bay-sands-hotel.jpg?s=612x612&w=0&k=20&c=XlQYrnrCyTUV01LqIpDYFV8-SfjeAJNiiR0_1I3qXko="
            "CÉ LA VI Singapore: Restaurant, SkyBar & Club Lounge"
            "ce la vi"
        }}
    
    }} slider
;

Q: what are you looking for
M1 What are you looking for?
MM ${ "Food" btn }
MM ${ "Activities" btn }
M. ${ "Main Menu" btn-secondary }
--

Q: food
Q: dining
M1 Food 🍴 🦐 🥐
MM ${"Hawker Centres" btn}
MM ${"Restaurant" btn}
MM ${ "What are you looking for?" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: activities
M1 Activities
MM ${"Family-Friendly Activity" btn }
MM ${ "Cultural Experiences" btn }
MM ${"Nightlife and Entertainment" btn}
MM ${ "What are you looking for?" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: nightlife and entertainment
M1 Nightlife and Entertainment 🌃 🕺🏼 🍷
MM ${ nightlife-slider }
MM ${ "Activities" btn-secondary }
M. ${"Main Menu" btn-secondary}
--

Q: hawker
M1 Hawker Centres
MM ${"Old Airport Road" btn}
MM ${"Lau Pa Sat" btn}
MM ${ "Food" btn-secondary }
M. ${"Main Menu" btn-secondary}
--

Q: old airport road
M1 Old Airport Road Food Centre
MM Old Airport Road Food Centre, opened in 1972, is a popular hawker spot for 
MM cheap local food.
MM <br>Notable examples:
MM <br><br><p align='center'>${"Nam Sing Hokkien Mee" "https://eatbook.sg/old-airport-road-food/#1_Nam_Sing_Hokkien_Mee" link}
MM <br>Unit number: #01-32
MM <br><i>Opening Hours: Tue-Sun 10am to 6pm</i></p>
MM <br>${ embed-namsengInsta }
MM <br><br><br><p align='center'>${"Xin Mei Xiang Lor Mee" "https://eatbook.sg/old-airport-road-food/#5_Xin_Mei_Xiang_Lor_Mee" link}
MM <br>Unit number: #01-116
MM <br><i>Opening Hours: Daily 7am to 4pm</i></p>
MM <br>${ embed-xinmeixiangInsta }
MM <br>${ embed-oldAirportGmaps }
MM <br>
MM ${"Hawker Centres" btn-secondary}
M. ${"Main Menu" btn-secondary}
--

Q: lau pa sat
M1 Lau Pa Sat
MM Lau Pa Sat, or Telok Ayer Market, is a historic and beautiful place to enjoy 
MM local food and outdoor satay.
MM <br><p align='center'>${"Lau Pa Sat’s Iconic Satay Street" "https://uncoverasia.com/lau-pa-sat-satay/" link}
MM <br>Address: Stall 7 & 8, 18 
MM <br><i>Opening Hours: 7PM – 1AM (Mon to Fri), 6PM – 1.30AM (Sat to Sun)</i></p>
MM <br>${ embed-laupasatInsta }
MM <br>${ embed-lauPaSatGmaps}
MM <br>
MM ${"Hawker Centres" btn-secondary}
M. ${"Main Menu" btn-secondary}
--


Q: restaurant
M1 Local Cuisine 🍻 🥘 🍕 🥂
MM ${"Chinese Cuisine" btn}
MM ${"Malay Cuisine" btn}
MM ${"Indian Cuisine" btn}
MM ${"Food" btn-secondary}
M. ${"Main Menu" btn-secondary}
--

Q: chinese cuisine
M1 Long Beach at Dempsey
MM ${ embed-longBeachInsta}
MM <br>
MM ${"LONG BEACH Seafood" "https://longbeachseafood.com.sg/dempsey-menu/" link} 
MM is Singapore’s top seafood restaurant and the creator of the original black 
MM pepper crab. It started in 1946 at Bedok Rest House, a beachside place popular 
MM with locals and British Army. It became famous for its delicious seafood.
MM <br><p align='center'><i>Opening Hours:
MM <br>Weekdays (Mon - Fri) & Eve of PH
MM <br>Lunch: 11am - 3pm
MM <br>Dinner: 5pm - 11.30pm
MM <br>All-Day Dining
MM <br>Sat - Sun: 11am - 11.30pm  
MM <br>Public Holiday: 11am - 11.30pm</i></p>
MM <br>
MM ${ embed-longBeachGmaps}
MM <br>
MM ${"Restaurant" btn-secondary}
M. ${"Main Menu" btn-secondary}
--

Q: malay cuisine
M1 The Malayan Council – Bussorah
MM ${ embed-malayanCouncilInsta}
MM <br>
MM The ${"The Malayan Council" "https://themalayancouncil.sg/" link} is a fusion 
MM restaurant that celebrates Malay-Asian and Western flavours. It is located in 
MM a heritage street and offers a cozy and elegant setting for various events. 
MM Come and enjoy our food, culture, and atmosphere.
MM <br>
MM <p align='center'><i>Opening Hours:
MM <br>11AM – 11PM (Mon to Sun)</i></p>
MM <br>
MM ${ embed-malayancouncilGmaps }
MM <br>
MM ${"Restaurant" btn-secondary}
M. ${ "Main Menu" btn-secondary }
--

Q: indian cuisine
M1 Komala Vilas
MM ${ embed-komalaInsta }
MM ${"Komala Vilas" "https://komalavilas.com.sg/" link} is a famous South Indian 
MM vegetarian restaurant in Little India. It serves traditional dishes like dosas, 
MM ids, vadas, thalis, and curries.
MM <br>
MM <p align='center'><i>Opening Hours: 
MM <br>7AM – 1130PM (Mon to Sun)</i></p>
MM <br>
MM ${ embed-komalaGmaps }
MM <br>
MM ${"Restaurant" btn-secondary}
M. ${ "Main Menu" btn-secondary }
--

Q: Family-Friendly Activity
Q: family friendly activity
M1 Family-Friendly Activity 🌤️ 👩‍👨‍👦‍👧 🍼 🎢 🐒
MM ${ ffactivity-slider }
MM ${ "Activities" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: sea aquarium
M1 S.E.A. Aquarium
MM ${"https://media.istockphoto.com/id/971583570/photo/s-e-a-aquarium-singapore.jpg?s=612x612&w=0&k=20&c=MbsFmAnrgC2i7we_C7qxvtImSnV-MxTak2MrlJ-Mrlw=" img}
MM A huge aquarium with over 100,000 marine animals and 50 habitats.
MM <br>
MM <br><i>Opening Hours: 10AM-5PM (Mon – Sun)</i>
MM <br>${ embed-seaGmaps }
MM <br>
MM ${"Buy Tickets" "https://www.rwsentosa.com/en/attractions/sea-aquarium/tickets" link-btn}
MM ${"Family-Friendly Activity" btn-secondary }
M. ${ "Main Menu" btn-secondary }
-- 
\ remember to add links to buy tickets

Q: Mandai Wildlife Reserve
M1 Mandai Wildlife Reserve
MM ${"https://media.istockphoto.com/id/1196748068/photo/asian-elephant.jpg?s=612x612&w=0&k=20&c=efAIYGixSY41KApgctjmtlWQa8SK1-B_4hczna5c9Z4=" img}
MM <br>A nature reserve with four wildlife parks and a rainforest bridge.
MM <br><br><i>Opening Hours: 
MM <br>8.30AM-6PM (Mon – Sun) – Singapore Zoo
MM <br>9AM-6PM (Mon – Sun) – Bird Paradise
MM <br>10AM-7PM (Mon – Sun) – River Wonders
MM <br>7.15PM-1200AM (Mon – Sun) – Night Safari</i>
MM <br>${ embed-mwrGmaps }
MM ${"Buy Tickets" "https://www.mandai.com/en/ticketing/admission-and-rides/parks-selection.html" link-btn}
MM ${"Family-Friendly Activity" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: Universal Studios Singapore
Q: USS
M1 Universal Studios Singapore
MM ${"https://media.istockphoto.com/id/1128032165/photo/universal-studios-at-night.jpg?s=612x612&w=0&k=20&c=E-798KSvfCDEdkKdvLaWJX1nA_ai0VTfEe8Mu6Bcx4s=" img}
MM <br>A theme park with rides, shows, and attractions based on movies and TV shows.
MM <br><br><i>Opening Hours: 11AM-6PM (Mon – Sun)</i>
MM <br>${ embed-ussGmaps }
MM ${"Buy Tickets" "https://www.rwsentosa.com/en/attractions/universal-studios-singapore/tickets" link-btn}
MM ${"Family-Friendly Activity" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: Cultural Experiences
M1 Cultural Experiences 🏯 🏛️ 📷
MM ${ cultural-slider }
MM ${ "Activities" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: National Museum of Singapore
M1 National Museum of Singapore
MM ${"https://media.istockphoto.com/id/930211470/photo/beautiful-historical-building-singapore.jpg?s=612x612&w=0&k=20&c=U-puiwkWldrtlP-lSJwokDHB-dgjM4QD9ugINYqs65s=" img}
MM <br>A museum that showcases the history, culture, and art of Singapore.
MM <br><br><i>Opening Hours: 10AM-7PM (Mon – Sun)</i>
MM <br>${ embed-nmuseumGmaps }
MM <br>
MM ${"Buy Tickets" "https://www.nhb.gov.sg/nationalmuseum/visitor-information" link-btn}
MM ${ "Cultural Experiences" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: little india
M1 Little India
MM ${"https://media.istockphoto.com/id/925647592/photo/intricate-hindu-art-and-deity-carvings-on-the-facade-of-sri-veeramakaliamman-temple-in-little.jpg?s=612x612&w=0&k=20&c=C0sxz1aYuCIutf7RLFlaKmzqVBLWl2LTlBmunk25oGw=" img}
MM <br>A vibrant district with Indian shops, restaurants, temples, and festivals.
MM <br><br><i>Opening hour: 8AM-5PM (Mon – Sun)</i>
MM <br>${ embed-littleIndiaGmaps }
MM <br>
MM ${ "Cultural Experiences" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: kampong glam
M1 Kampong Glam
MM ${"https://media.istockphoto.com/id/495696768/photo/sultan-mosque-is-the-largest-religious-building.jpg?s=612x612&w=0&k=20&c=8nMdT8NJ-XKepp66_NKslRP8mXee45EHstq5BM6rOac=" img}
MM <br>A historic area with Malay and Muslim heritage, culture, and cuisine.
MM <br><br><i>Opening Hours: 8AM-5PM (Mon – Sun)</i>
MM <br>${ embed-kapongGlamGmaps }
MM <br>
MM ${ "Cultural Experiences" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: chinatown
M1 Chinatown
MM ${"https://media.istockphoto.com/id/1200939518/photo/wide-angle-view-china-town-district-chinese-new-years-in-singapore-china-town-and-traveller.jpg?s=612x612&w=0&k=20&c=9ZJU-GBEwpZCow7urLFGLIcdphgenxe1VM0UhjkQQs8=" img}
MM <br>A lively neighborhood with Chinese shops, eateries, temples, and markets.
MM <br><i>Opening Hours: 8AM-5PM (Mon – Sun)</i>
MM <br>${ embed-chinatownGmaps }
MM <br>
MM ${ "Cultural Experiences" btn-secondary }
M. ${ "Main Menu" btn-secondary }
--

Q: clarke quay
Q: clark quay
M1 Clarke Quay
MM ${"https://media.istockphoto.com/id/469566775/photo/lantern-festival-at-clarke-quay-on-the-singapore-river.jpg?s=612x612&w=0&k=20&c=QTDKpb0GRqbQcjHmqqMglmMWWOwI2uvH_AKhn_wZxUI=" img}
MM <br>A riverside hub with various bars, restaurants, and clubs with stunning view 
MM of the city skyline
MM <br><i>Opening Hours: 6PM-12AM (Mon – Sun)</i>
MM <br>
MM ${ embed-clarkequayGmaps }
MM <br>
MM ${"Nightlife and Entertainment" btn-secondary}
M. ${ "Main Menu" btn-secondary }
--

Q: Marina Bay Sands
M1 Marina Bay Sands
MM ${"https://media.istockphoto.com/id/661800210/photo/singapore-city-singapore-3rd-february-2017-singapore-city-skyline-showing-the-marina-bay-sands.jpg?s=612x612&w=0&k=20&c=N7s888ke-yhNh8F3vIn2V2RqGi_hNwevLtawoPVwzGs=" img}
MM <br>The Iconic Integrated resort houses bars and clubs with stunning view of the city skyline
MM <br><i>Opening Hours: 11AM-9AM (Mon – Sun)</i>
MM <br>
MM ${ embed-mbsGmaps }
MM <br>
MM ${"Nightlife and Entertainment" btn-secondary}
M. ${ "Main Menu" btn-secondary }
--

Q: Orchard Road
M1 Orchard Road Shopping
MM ${"https://media.istockphoto.com/id/503345157/photo/ion-orchard-shopping-mall-singapore.jpg?s=612x612&w=0&k=20&c=J7WZv4TZXE5gWNSOebtOaRYsI4KUhNTabREr_Sc4-gM=" img}
MM <br>Apart from shopping, this area has chic bars, live music venues and clubs 
MM for  a more upscale night lift experiences
MM <br>
MM ${ embed-orchardGmaps }
MM <br>
MM ${"Nightlife and Entertainment" btn-secondary}
M. ${ "Main Menu" btn-secondary }
--

Q: ce la vi
M1 CÉ LA VI Singapore: Restaurant, SkyBar & Club Lounge
MM ${ "https://media.istockphoto.com/id/458729241/photo/marina-bay-sands-hotel.jpg?s=612x612&w=0&k=20&c=XlQYrnrCyTUV01LqIpDYFV8-SfjeAJNiiR0_1I3qXko=" img }
MM <br>CÉ LA VI Singapore is a rooftop venue with a Restaurant, SkyBar and Club 
MM Lounge. Experience a memorable dining at our indoor and outdoor space.
MM <br><br><i>Opening Hours: 6PM-1AM (Mon, Tue, Sun), 6PM-4AM (Wed, Fri, Sat)</i>
MM <br>
MM ${ embed-celaviGmaps }
MM <br>
MM ${"Nightlife and Entertainment" btn-secondary}
M. ${ "Main Menu" btn-secondary }
--



