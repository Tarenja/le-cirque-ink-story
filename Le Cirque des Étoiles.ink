VAR mazevar = 0
VAR showtime = 9
VAR eat_notice = false
VAR drink_notice = false

-> notice

== notice ==
A singular notice had been posted on a pillar in the village square. It read:

LE CIRQUE DES ÉTOILES IS COMING - BE AWARE
OPEN FROM SUNDOWN TILL SUNRISE

The village was buzzing with excitement, but because it said nothing about when or where this circus was coming, and nothing appeared, so soon enough most people had forgotten about it, though some of the older residents of the village gave each other knowing looks and smiles.

Then one morning about a week later, the top of a large tent was suddenly visible above the tops of the trees in the woods surrounding the village. Word spread like wildfire to the surrounding villages.

The circus had come at last.

* [Let’s go to the circus…] -> intro

== intro ==
It is winter. Snow coats the streets in a thick blanket that makes everything sound muffled and quiet. Susan and her friends join the mass of people braving the snow, bundled up in coats, hats and scarves, to wait for the circus to open.

She peers through the bars on the fence at the circus.

SUSAN: “It’s not very impressive-looking, is it?” She says, nudging her best friend Jessica standing next to her. Jessica took a look.

The tents are gray, there is no light at all, nor any sign of movement. Snow covers every tent, and the entire square. The sun is almost gone, the crowd is starting to rub their hands and stomp their feet against the cold, as the darkness slowly descended on the clearing.

JESSICA: “Well maybe, but not much happens around here. It’ll be better than nothing.”

SUSAN: “That’s true.”

The last of the light slowly fades out of the sky. And then it's gone, the crowd standing in pitch blackness.
Suddenly, the gate starts to illuminate. Slowly at first, then faster and faster as little coloured lights blink into existence on the gates, covering them completely. Then, colour and light and sound explode out from the gates towards the tents, the ground, the tents, the stands seeming to give off light, so bright people had to shield their eyes for a moment. 

Susan gasps. What seemed like such a drab, boring place only moments before, is now a kaleidoscope of coloured lights, with sweet music floating through the air and smells of cinnamon and perfume wafting over the crowd.

It takes people a moment to realise that a staff member has appeared in the ticket booth next to the gate. They are immaculately dressed in a tailored black suit with white gloves, and a silver masquerade mask covering their face. Then they bow and speak.

“Welcome to Le Cirque des Étoiles” 

* [The gates are open...] -> gate

== gate ==
Susan stands speechless as she and her friends enter the terrain. The circus is so lit up it was as if they were walking in daytime. The clearing seems much bigger than she remembers, the central square looks absolutely huge. There are four tents she can see, two smaller ones on the left, one smaller one on the right, and the big top across the square from them in the middle, which seems impossibly enormous, much bigger even than it had looked at a distance, towering over the trees. There are differently coloured paths of light leading to the different tents. The light shines up right through the snow, without melting it. 

There is a green path leading towards the leftmost tent. The tent itself is decorated in stripes of green and red. The tent says “Children” on the front. 

The tent next to it has no sign, but has a light blue path towards a tent striped in light blue and silver, almost seeming to shimmer like a mirror.

The rightmost tent has a dark purple path, the tent draped in a blue so dark it's almost black like the night, sparkling with stars. 

The big top has a big golden path toward it, twice as wide as the others. The golden  tent itself shines like the sun. There are staff members in front of the entrance, preventing people from getting in. It seems to be closed for the moment.

The square in front of them is littered with sculptures and performers, each dressed in fantastical outfits. There are fire-eaters, each one with a differently coloured fire. There are jugglers, alone or in groups, performing impossibly dextrous throws. There are magicians, performing tricks they had never seen before, and many more things to look at. There are staff members everywhere, all dressed the same as the one in the ticket booth, but nobody pays much attention to them. They are as unobtrusive as they possibly can be.

In between the big top and the rightmost tent there are a number of concession stands, with mouth-watering smells emanating towards the group. A great many benches and tables have been set up, all decorated in multi-coloured strings of twinkly lights. Susan doesn't know where to look, trying to take everything in at once as her friends discuss where to go.

JESSICA: “I want to go to the silver and blue one! And then the black sparkly one!”

NED: “Of course you do. I don’t really mind, I just don’t wanna go to the children one, that’s dumb.”

AMY: “I'll go wherever you want to go, Ned."

JAMES: “That’s smells amazing, let’s go see what they have. Come on Susan, come join us.” he says, pointing towards the food area.

NED: "Yeah, let's." Ned, Petra and James head for the food area.

JESSICA: “There is a circus here for the first time ever, and all you can think of is getting food? Unbelievable! Susan, let's get going.” Jessica resolutely strode off into the crowd.

Susan looks between Jessica and James as they both head off. While she is standing there thinking, a woman with a stroller stops in front of Susan, and by the time she gets around the lady she has completely lost sight of Jessica. She calls out, looking around for her friend, but she is nowhere to be seen. Susan looks around a while, calling out, but gets no response. She figures Jessica has probably gone to one of the tents, so she decides to go around the circus and the attractions to see if she can find her.
-> gowhere

== gowhere ==
{showtime == 12:
A booming voice suddenly echoes over the square. "THE MAIN SHOW IS STARTING!" As Susan heads towards the tent, she spots James and her other friends. and she makes her way towards them.
SUSAN: "Hey, have you guys seen Jessica? I've been looking for her."
AMY: "No, she was with you right? Come on, let's go in, I'm sure she'll be in here too, you can find her after."
Susan frowned, thinking about what to do next.
* "You're right, let's go to the show!" [] They make their way towards the show along the golden path. As they take their seats in the impossibly enormous space, a bell tolls loudly, it's midnight.
-> main_show 
* "No, I need to find Jessica." [] Susan is getting concerned, and decides to keep looking for Jessica. As she watches the last of the crowd filter into the golden tent, a bell tolls over the grounds, it's midnight.
~showtime++
-> gowhere
- else:
+ [The children's tent]
Susan heads towards the children's tent.
-> children
+ [The silver and blue tent]
Susan heads for the silver and blue tent, thinking Jessica might have gone there.
-> funhouse
+ [The dark blue sparkly tent] 
Susan walks towards the dark blue tent, the path sparkling as she passes by.
-> magictent
+ [The concessions area] 
Susan decides to wander towards the concessions to join her friends, tempted by the many smells, hoping to find Jessica with them.
-> concessions
+ [The square to walk and look around] 
Susan strolls across the square to look around, Jessica might have gotten distracted and hung around all the people performing.
-> square
+ {horror_house} [Back to the House of Horrors] Susan decides for some reason she wants to go back into the House of Horrors. <>
-> horror_house
+ {concessions.know_about_horror_house} [Go to the House of Horrors] Susan's curiosity for the House of Horrors gets the better of her, and she decides to go there after all.
* {children}{funhouse}{concessions}{square}{magictent}[Leave the circus and go home] Susan goes to her friends, she's had about enough of the circus for one night. As they prepare to leave, {concessions.james: James not looking at her while they are packing up their things,} Jessica suddenly pops up behind Susan, startling her by tapping her shoulders.
-> endings.standard
}

== children ==
= child_intro
The path Susan is walking down glows a soft, friendly green. As she is walking along towards the tent the air seems to shift, and a feeling a peace and happiness spreads over her. Everything gets a little softer, and warmer, and the rest of the circus falls away a little bit. The lights dim, the music softens, and Susan finds she can’t stop smiling. {not children: She is certain Jessica must have come here with how happy this place makes her.}

She gets to the red and green tent and it feels like it’s Christmas, with soft snow fluttering out of the sky, red and green lights, and the sound of children playing and laughing. Despite the snow, she doesn't feel cold anymore.

There is another staff member at the entrance. They don't move a muscle when Susan passes.

The inside of the tent looks huge, but feels cozy and warm, even with the snow outside. The floor is soft, like a padded mat. It looks like a Christmas fairy tale, with twinkly lights everywhere, a soft lullaby playing at the edge of Susan’s hearing, and cute little dolls and toys all over the room for the children to play with. 

There are lots of families around, with children of all ages, even very small ones. Some are asleep, some are happily bouncing around, but there is no crying or screaming. All the children are happily playing, and the parents look relaxed, only laughter and joy can be heard.

It all looks a little old-fashioned, and there are also monkey bars and slides and activities for the bigger children, even a play area where they can run around and play tag or football. The adults happily join in, seemingly children at heart again.
-> child_choicelist

=child_choicelist
{!Susan feels an almost irresistible urge to join in.}
+ [Join in playing football] 
    She decides to join in on the group playing football. She has a great time running around, even though her team doesn't win. She enjoys herself so much she almost forgets about time altogether.
    -> child_choicelist
+ [Join in playing with the girls and the dolls] 
    Susan secretly still loves to play with dolls, so she goes and sits with the girls to look at all the amazing old-fashioned dolls that are lying around. Despite how old they look, they are in perfect condition, and with not a speck of dirt on them. 
    She feels like a little girl again, playing a tea party with dolls with a few young girls. 
    -> child_choicelist
* [Look around for Jessica]
    Susan decides to look around for her friend, walking the circumference of the tent to check everywhere. She doesn't find her so she asks around if anybody has seen her. A young girl says she saw somebody who might be Jessica, but that that girl already left.
 -> child_choicelist
+ [Leave] 
She leaves the children's' tent, sighing as the feeling of pleasant peacefulness abates and everything goes back to normal, and goes back to the central square to decide where to go next to find Jessica.
~ showtime++
-> gowhere

== funhouse ==
= funhouse_intro
She walks along the light blue path towards the shimmering tent. The path turns from blue to silver as she gets closer to the tent. When she gets to the tent it almost looks like the silver stripes are made of mirrors, they are so shiny, there is even a fuzzy reflection, though very distorted.
Inside there is a hall with three doors, two blue and one silver, and with strange mirrors standing around in the hall, that people are standing in front of and laughing about. Her breath is visible in the cold air, and everything is bright and light, coloured in blue and silver. There are some people milling around, and she looks to see if Jessica is among them. Nobody here has seen her, so Susan looks at the signs over the doors to see what is behind them.
The door on the left, a blue door, reads "The Hallway of Warping"
The door on the right, another blue door, reads "The House of Crookedness"
The door in the middle is a large silver door, with a sign that reads 
"The Maze of Mirrors 
WARNING
ONLY FOR THE BRAVE
YOU WILL GET LOST"
In smaller letters below the warning, it says:
"If you feel like you need help getting out, say the words "Please help me, I'm lost, I can't find the exit."
Susan thinks Jessica would definitely have tried the maze, but she's not so sure she wants to go in if she might get lost.
-> funhouse_choicelist
=funhouse_choicelist
*  {main_show.ringmaster}[Follow the ringmaster into the maze] She is determined to catch up to the ringmaster, and wants to ask him why he glows. She has so many questions about the circus, mostly about how they had made the impossible a reality. She follows him into the maze. 
    -> endings.madness_ending
* {main_show.followcharles} [Follow Charles into the maze] She is dazed when she steps into the maze, the lights seeming even brighter now than before. She sees his image reflected in the mirrors, so she keeps going, hoping she is going in the right direction to follow him.
    -> endings.charles
+ [Look at the mirrors in the hall]
    Susan wants to look at the mirrors that have people so amused. She didn't think mirrors would be so exciting. The first one she gets next to stretches out her images sideways, all the way to the edges of the mirror. The second makes her extremely tall and skinny, except for at the top where her head and hair are expanding out, making her look like a tree. Then she comes to the one of the ones people are really loud about, but it to her it looks like just her regular reflection. Then she blinks, and something changes. Her reflection suddenly looks different. Susan has to do a double-take before she realises the reflection has been reversed, so she can see herself as other people see her, rather than a mirror image. Then it changes again, and her reflection has a cruel grin, and cold eyes. Susan is horrified when it smiles, it has sharp teeth like daggers and is reaching towards her as if to pull her in. She backs away from the mirrors, totally unsettled.
    -> funhouse_choicelist
+ [The Hallway of Warping]
    When Susan opens the blue door, she sees a very strange, circular hallway, about 15 feet in diameter. It has crazy colours and swirls on the inside, making it look like a painter's palette where the paint has been smeared around. It smells strangely of citrus. 
    She steps into the odd hallway and starts to move forward. Almost immediately it starts spinning around her. Slowly at first, but faster and faster as she progresses through. The hallway twists and turns so she can't the beginning anymore, and has absolutely no idea how long it will be till she reaches the end. She is starting to feel a little dizzy and nauseous.
    * * [Keep going]
        Susan steels herself and keeps going. A few feet further on, the floor suddenly drops below her half a foot, making her fall down onto her knees. She shakily gets back up, and gingerly keeps moving forward. After what feels like forever in a hallway with rapidly spinning walls, she finds herself somehow back at the beginning of the hallway where the exit is. Susan exits, relieved she made it through.
        -> funhouse_choicelist
    * * [Go back]
        Susan is not enjoying the hallway experience at all, and doesn't want to go any further, so she turns back, feeling queasy the whole way.
        -> funhouse_choicelist
+ [The House of Crookedness]
    Susan likes the sound of the crooked house, so she goes through that door. In front of her is what looks like the facade of an old victorian house, painted white with black beams and decorations. It goes up quite high, she can't see the top of the house from where she is standing. The house doesn't have any windows low enough for her to see through, only a large wooden door. On the door there is a sign: "Get to the top of the house and win a prize!" She pulls the door open with a big heave, and heads inside.
    Inside it still sort of looks like a victorian house, with doilies and lace and paisley wallpaper and decoration, only the furniture is upside down, and stuck to walls and ceilings. It looks like a florally-decorated Escher painting. The walls are all at weird angles, the stairs go into the ceiling instead of going to the next floor, and there's holes in the ceiling, the walls and the floors. Susan hears other people in the house above her. She sees a hole in the ceiling that has a table underneath it, and uses it to get to the next floor. There the floor is so angled she almost falls and rolls down the slanted boards. There are a couple of boys there, who are on their way down, they wave and jump down the hole she just climbed up.
    On the next floor there is a tea party stuck to the wall, the items made from expensive-looking bone china. There is also the first window she has spotted. She looks out, expecting to see the wall of the hall outside, instead seeing a sunny meadow with strange animal hedge sculptures. It even smells like grass and flowers when she sticks her head out of the window.
    Susan keeps going through the house, slowly finding the holes and tiny doorways to progress to the next floor. At one point she opens a hatch above her head at the top of a ladder, to find she has reached the attic. There is friendly music playing, and it smells like candy and sweets. There is a basket of broaches on a small table. They have rainbow coloured gems in the centre. When she picks one up, a little victorious jingle plays, and part of the wall slides down to reveal a slide. She pins the broach to her coat, and sits down on the slide. The slide twirls all the way back down to the floor, coming out onto a springy mattress in a little shed. The shed door opens in front of her, and sees she is just beside the house on the ground floor, the shed door closing again behind her. She makes her way back out to the main hall, broach proudly displayed on her coat.
    -> funhouse_choicelist
+ [The Maze of Mirrors]
    She goes into the maze and is immediately disoriented, the mirrors distorting and repeating her image in crazy ways, a million times into the distance. The walls, floor and ceiling are all mirrors, and most of them also skew their reflections. There is incredibly bright white lighting, the light twinkling in every corner being bounced around by the mirrors. By the time she composes herself, the door has closed behind her, and she can't find it anymore. She finds her way by running her hands across the walls, the reflections and light so confusing she can barely see where she is going. No way to go but through the maze. 
    -> maze 
* [Look around for Jessica]
    Susan things about which way Jessica might have gone. The maze would be totally her thing, because she loves taking risks and is very brave. She asks a couple of people coming out of one of the doors if they have seen her, but they haven't. She sees people coming out of both blue doors, but not the silver maze door.
    -> funhouse_choicelist
+ [Leave] 
Susan leaves the Funhouse and heads out to decide where to go next to find Jessica.
~ showtime++
-> gowhere

== maze ==
+ [Go right] She takes the right path until she finds the next crossing.
~mazevar++
-> maze
+ [Go left] She takes the left path until she finds the next crossing.
~mazevar++
-> maze
+ [Go {~straight ahead|backwards}] She keeps walking until she finds the next crossing.
~mazevar++
-> maze
+ {mazevar > 5}{not main_show.ringmaster}{not main_show.followcharles}[Say "Please help me, I'm lost, I can't find the exit."] She is starting to feel dizzy and weird, a million versions of herself looking back at her. She can barely even see the pathway anymore with all the reflections. The light is overpowering, and her eyes are starting to hurt. She sits down on the floor with her hands over her eyes, hoping her help will arrive soon. A few minutes later she hears a tap-tap-tapping coming closer to her. When she looks up, she sees a staff member in a black mask approaching from a thousand different directions. She is greatly startled when their hand touches her shoulder, the person was actually behind her. They don't speak a word as they gently take her arm and lead her in between the mirrors. After a while she sees a patch of darkness ahead of her - the exit. She is so relieved to no longer be in the maze she almost forgets to thank the staff member as they bow and leave back into the maze. 
-> funhouse.funhouse_choicelist


== magictent ==
=magictent_intro
The magic tent takes her breath away. When she enters she is on a platform of wood that extends about 10 feet ahead of her. Beyond that, the floor just ends. The rest of the room is like the abyss of space. There are stars sparkling in the air, and colourful clouds hovering around. She looks over the edge gingerly, it seems to go on forever. 
To top it off there are people flying! They are encased in what looks like huge bubbles, burst of colour streaking across them.
There is a magician at the far edge of the platform, creating the bubbles people are going into.
-> magictent_choicelist
=magictent_choicelist
+ [Get into one of the flying bubbles]
    Susan decides to go up to the front and get into one of the bubbles. She is terrified, there is no way something so delicate could hold her, much less float her up into the air. But then she's in one and she's floating and she can't seem to breathe she's so excited. She tilts her weight to the side, and the bubble starts moving in that direction. It takes her a little while to get a hang of controlling the bubble, but eventually she feels confident enough to try going faster.
    She jumps and the bubble soars up, Susan screaming in glee, until suddenly it stops. She tries again, but the bubble bounces back. The bubble seems to be bumping into a ceiling she cannot see, it is as dark as everything else, and the stars still seem to recede into the distance. She looks down to see the platform far below her, much farther than she thought.
    She keeps floating and flying around, the bubble bouncing off walls she can't see, and the bubbles of other people, causing a bumper car-like game of people trying to send each other flying.
    Eventually she feels very tired, and heads back down, slightly dizzy from the height.
    -> magictent_choicelist
* [Look around for Jessica]
    Susan looks around at all the people floating in bubbles, hoping to see Jessica among them, but nobody looks familiar. She asks the magician who is making the bubbles if he has seen Jessica. The magician did see her, she was in a bubble before, but very quickly left, excited to try other things.
    -> magictent_choicelist
+ [Leave] 
Susan leaves and ponders where Jessica could have gone.
~ showtime++
-> gowhere

== concessions ==
= concessions_intro
There are delightful smells emanating from the various stands. Some have food, some have drinks, but all of them smell amazing. The stands are grouped by savoury and sweet, the sweets and fruit stands on one side, the savoury stands on the other.
{not concessions: 
JAMES: "Hey Susan! Come sit with us."
SUSAN: "Hey, have you seen Jessica around?"
JAMES: "No she hasn't been here."
}
-> concessions_choicelist
=concessions_choicelist
* (james){not children}{not funhouse}{not square}{not horror_house}{not magictent} [Sit with James and chat] Susan decides to sit with James and her friends. James seems nervous, coming to sit right next to her, and he's paying a lot of attention to her, making her blush. He fawns over her, fussing over her to make sure she's not cold, and has a comfortable seat. Susan doesn't really know what to do. She kind of knew he had a crush on her, but she's not totally sure she wants to reciprocate.
    JAMES: "Can I get you something to eat?"
    * * (please) "Yes, please."[] Susan says with a shy smile. James gets up to get her something to eat. 
    JAMES: "Here, my treat. <> -> eat
    * * "No, thank you."[] James looks somewhat deflated as Susan goes to get herself some food.
    -> concessions_choicelist
+ (eat)[Eat something] {not james: Susan walks up to one of the food stands. The cook winks at her. "Hey there missy, <> }
    what would you like?"
    {!All the foods and drinks look amazing. There are so many different things to try, even things she's never had before. There are meat pies, sausages, soups, cinnamon buns, a candy shop, hot fruit cakes and pies, fruits, and many more things.}
    Susan deliberates what to order.
    + + [Meat pie]
        She chooses a chicken pot pie, with gravy oozing out through the dough, so hot she has to wear her gloves to hold it.
    + + [Candy from the candy shop]
        She chooses to buy a bag of candies from the candy shop. There are hundreds of different kinds of candy, each one more mouth-watering than the last. She fills up the little bag with an assortment of candies she likes.
    + + [Cinnamon bun]
        The smell of sugar and cinnamon is too much for her to resist, so she takes a cinnamon bun. They are huge, sticky with sugary syrup and the dough is as soft and fluffy as a cloud, almost melting in her mouth.
    + + [Soup]
        She chooses a hearty vegetable soup, which are served in adorable bowls with little ribbons around them.
    + + [Hot fruit pie]
        She is feeling like something sweet, so she chooses a lovely hot little apple pie, piping hot and just the right size to pick up and eat with her hands.
    - - She sits for a while enjoying her food and looking around.
    {drink_notice==false:
     Then she notices there are people excitedly talking and pointing at something behind the concession stands.
     ~eat_notice = true
     } 
    {please: At that moment James, red in the face and stuttering like crazy, tells her he likes her a lot, and would very much like to be her boyfriend.}
    -> concessions_choicelist
+ (drink)[Drink something] 
    {!The drinks look just as good as the food. There is an amazing selection of teas, coffees, juices, mulled wines, and a hot chocolate with whipped cream and marshmallows that looks to die for.}
    + + [Tea]
    + + [Coffee]
    + + [Juice]
    + + [Mulled wine]
    + + [Hot chocolate]
    - - She sits down to enjoy her drink, sipping away slowly to enjoy the flavour as long as possible.
    {eat_notice==false:
     Then she notices there are people excitedly talking and pointing at something behind the concession stands.
     ~drink_notice = true
     } 
    -> concessions_choicelist
+ (staff) {not square.staff} [Observe the staff] Susan sits and observes the staff moving around. They are all wearing the same black suits with white ties and gloves, with masquerade masks covered in intricate details covering their entire face. She realises they all look the same, she can't tell if they are female or male. Though they're not quite, the same, there are differently coloured masks. There are silver masks, gold masks, and a smattering of black masks on the staff members. They move very strangely, when they stand still they stand much more still than should be possible, not even a twitch. When they move they look kind of stiff, almost mechanical, and the crowd seems to subconsciously swerve around them a little bit. She thinks maybe if she heard their voices she would be able to tell more about them.
    * * (talk)[Try to talk to one] When they speak their voices are again, so ambiguous it's impossible to tell whether any one of them is a man or a woman. If they speak at all. Most of the time they barely answer anything beyond a couple of words when people ask them for directions. When she tries to ask them more about the circus, where they were before, where they're going, they only answer in riddles that don't tell her anything.
    All of a sudden, Susan sees a man in a long golden cloak. He is moving quickly through the crowd, and people are moving out of his way, but nobody is looking at him or even noticing him. When she squints to try and get a look at his face, she sees that he is actually glowing. She rubs her eyes, convinced she is seeing things, but the aura is still there. She turns to her friends to point him out to them, but when they look over he is gone.
     -> concessions_choicelist
    + + [Nevermind] Susan is sure they are only like this to help sell the mysterious atmosphere of the circus, which she has to admit to herself they are very effective at. Bothering them won't help anything, they must be very busy with their work.
     -> concessions_choicelist 
* {eat}{not drink}[Check out the group pointing excitedly] Susan looks over to the guys to see what they are so excited about.
    {please: James looks hurt and disappointed that she is walking off, and sharply turns away from Susan, getting a sympathetic look and pat on the back from Ned.}
    She notices that there is a darkness behind the concession stands that she can't believe she hasn't seen before. Most people seem completely oblivious to it, walking right past the stands without ever looking there. Now that she has seen it, she can't look at anything else. She feels almost drawn to it. She can hear the guys talking now, there is apparently an attraction that way, a House of Horrors.
    * * [Go to the House of Horrors]
    -> horror_house.horror_intro
    * * (know_about_horror_house)[Don't go to the house]
    -> concessions_choicelist
* {drink} {not eat}[Check out the group pointing excitedly] susan checks out the guys
    {please: James looks hurt and disappointed that she is walking off, and sharply turns away from Susan, getting a sympathetic look and pat on the back from Ned.}
    -> horror_house.horror_intro
* {please} [Respond to James]
    * * [Like him] 
    SUSAN: "I like you too."
    James gets even redder in the face, not knowing what to say, his face a picture of relief and disbelief.
    -> endings.james_ending
    * * [Don't like him] 
    SUSAN: "You're very sweet, but I'm sorry I don't like you that way."
    James is visibly upset, like he is almost starting to cry. 
    SUSAN: "I'm so sorry, I'll just go."
    Susan gets up from the table and walks away. Amy comes after her. 
    AMY: "Are you okay? Ned's just talking to James."
    SUSAN: "I'm okay. I would have said it nice but he caught me a little off-guard. You don't hate me for hurting his feelings?"
    AMY: "Naw, he'll be pissed for a while but he'll get over it. He didn't strike me as your type anyway. Just lay low for a while and things'll be fine in no time."
    SUSAN: "Alright, thanks. Go cheer him up, will you?"
    AMY: "Will do."
    Susan sighed. 
    -> concessions_choicelist
-> endings.james_ending
+ [Leave] 
Susan gets up and goes to look for Jessica somewhere else.
~ showtime++
-> gowhere

== square ==
= square_intro
There are many kinds of performers all over the square, as well as beautiful statues. The performers are wearing fantastical coloured clothes, with masks or facepaint in many different colours. The statues are painted mostly in white and black, looking almost like sculptures made of snow. They are so well-made they look almost alive. Susan looks closer, and sees the statues are indeed alive! She can see one of them breathing. She feels very embarrassed getting so close to them. They must be so cold here in the snow without a coat or anything, she thinks to herself, feeling sorry for them.
-> square_choicelist
= square_choicelist
+ (staff) {not square.staff} [Observe the staff] Susan sits and observes the staff moving around. They are all wearing the same black suits with white ties and gloves, with masquerade masks covered in intricate details covering their entire face. She realises they all look the same, she can't tell if they are female or male. Though they're not quite, the same, there are differently coloured masks. There are silver masks, gold masks, and a smattering of black masks on the staff members. They move very strangely, when they stand still they stand much more still than should be possible, not even a twitch. When they move they look kind of stiff, almost mechanical, and the crowd seems to subconsciously swerve around them a little bit. She thinks maybe if she heard their voices she would be able to tell more about them.
    * * (talk)[Try to talk to one] When they speak their voices are again, so ambiguous it's impossible to tell whether any one of them is a man or a woman. If they speak at all. Most of the time they barely answer anything beyond a couple of words when people ask them for directions. When she tries to ask them more about the circus, where they were before, where they're going, they only answer in riddles that don't tell her anything.
    All of a sudden, Susan sees a man in a long golden cloak. He is moving quickly through the crowd, and people are moving out of his way, but nobody is looking at him or even noticing him. When she squints to try and get a look at his face, she sees that he is actually glowing. She rubs her eyes, convinced she is seeing things, but the aura is still there. She turns to a lady next to her to ask her if she sees the same thing, but when they look over he is gone.
        -> square_choicelist
   + + [Nevermind] Susan is sure they are only like this to help sell the mysterious atmosphere of the circus, which she has to admit to herself they are very effective at. Bothering them won't help anything, they must be very busy with their work.
        -> square_choicelist
+ [Check out the performers] She decides to take a closer look at the performers.
 Jugglers and clowns walk around the square interacting with people, amusing the children and flirting with the mothers. A group of jugglers is throwing their bowling pins over the heads of a crowd of people to each other at a ridiculous speed. A few clowns take that as an opportunity to look amazed, and have comically over-the-top reactions, and making balloon animals that look like the jugglers for the children.
The fire-eaters draw a large crowd. Susan joins in, hoping Jessica is in there somewhere. The fire-eaters are dancing with lit torches, each one having a different coloured fire. They breathe the fire over the crowd, drawing yelps of surprise and excitement as the fire gets within inches of some people. 
The magicians are the other big draw, they are spread out so no one magician is close to another one. They are performing magical tricks and illusions, some simple ones that she has seen before, but some she has never seen, such as one suspending himself upside-down in mid-air.
One magician in particular catches her eye. He looks to be of similar age to her, black hair, blue eyes. She's not sure why she noticed him in particular, but the trick he is doing is very interesting, pulling doves out of people's bags and under a gentleman's hat. 
   * * (charles)[Look closer at the magician] She looks at him for a while, watching his act as a suave, smooth professional. He is dressed in a black suit, with a brocade vest over his white blouse. His cloak is silk, floating around him with every movement of his arms. She becomes aware there is something about him, his tricks feel strange. Then she spots it, he is glowing. He has an aura of silver all around him, emanating towards the items he is doing his tricks with. Every time he pulls something out from someone's ear, or out of a hat, she sees his aura flash into his hands. She gasps, drawing the magician's attention.
   He jumps off his little platform, landing in front of her with a flourish. He takes off his top hat and gives and exaggerated bow. 
   MAGICIAN: "Well hello milady, what's your name?"
   SUSAN: "Um... Susan....
   MAGICIAN: "Hi Susan, nice to meet you. Oh, what's that?"
   He reaches behind her ear and pulls out a rose, and she sees his aura flash again. He is watching her face intently, and notices her reaction to his move. 
   MAGICIAN: "Well now, aren't you special?" He smiles his bright white smile at her, dazzling her. He bows again and kisses her hand, then leans over to whisper in her ear. "My name's Charles. Come find me after the show."
   Then he twirls in place and strides into the crowd and disappearing in seconds, leaving Susan blushing and stunned. 
   -> square_choicelist
   * * [Keep walking] She keeps walking, enjoying the different performers and the snow crunching under her feet.
   -> square_choicelist
+ [Leave] 
Susan has had enough and goes to keep looking for Jessica.
~ showtime++
-> gowhere

== horror_house ==
=horror_intro
She walks past the concession stands into the darkness. It's not totally dark, like the forest outside, but the light that is there feels feeble, like the darkness is sucking away its power. A chill goes down her spine as she finally sees the House of Horrors. It's an ugly, squat building, with peeling paint and rickety-looking boards. The entryway is so dark and surrounded by sharp boards and nails it looks like a giant maw, devouring everyone who comes near it. She sees some people coming out, a few are giggling nervously, but a few are pale and scared. As she stands in front of the door, it feels like a breeze is blowing her towards the door, tempting her to come in. And in she goes, the door creaking shut behind her.
There are three entryways in the hall, no doors, but the darkness beyond is such that she cannot see what is through any of them.
There is a hallway with a crooked sign across it that looks like it was bitten to shreds by an animal of sorts. She can just make out the words "Freak Show". Aren't those illegal? She thinks to herself.
Another hallway has a sign that is covered in green slime, which she hopes is just for show. It says "Creepy Crawlies".
The third hallway has a sign that says "The Dungeon." A few young men come out of there, clearly shaken but laughing it off and pretending they're not affected.
Susan is really not happy being in here, but she knows that Jessica is far more adventurous than her, and would almost certainly have gone in here to test her mettle.
-> horror_choicelist
= horror_choicelist
+ [Freak show]
Going into the hallway Susan finds herself in a corridor so dark she has to feel her way along, holding on to the wall. There's light ahead, though, and it's with relief that she finally turns the corner.
The lights are bright in this room, each spotlight aimed at a single person - if 'person' is the right word for them.
The first one she takes a good look at turns out to be a short bearded man, bare-chested like the snake man. This one looks all normal though - except that his waist is so thin it makes Susan wonder where his intestines went. She turns to her right, hoping the other side of the room will be less stomach-churning, only to find a young girl - maybe fifteen years old - in a t-shirt and leggings. She is on hands and feet because her knees seem to go in the opposite direction from where they should be.
Susan closes her eyes and shivers, disgusted and insulted at the obvious exploitation of people with real deformities. Yet she still wonders about the thin man. A real person couldn't survive with a body like that, could they? Might it all be fake somehow? It has to be. It's forbidden to treat people like this in this day and age.
When she looks again she notices there are shelves along the walls as well, some full of eyeballs and chicken livers and such. Most of them are full of a clear liquid with a single thing floating in it. She's heard of these and almost decides to just not look at them when she notices a big one standing on the floor in front of a shelf, with inside of it a baby that looks big enough to have actually been born. Its skin looks cracked into pieces, the cracks inflamed red lines. The face, fingers and toes are barely formed.
Another shiver runs along her spine. Susan is definitely not looking at the jars anymore.
The siamese twins connected at the head are expected, but after that it only gets stranger. There's a woman with two faces - not two heads, the separation had not even gone that far. And then there is a wolf man. He is not just a regular person covered in hair; his mouth and nose protrude from his face like an actual wolf's, his ears are long and pointed, and his hands are curved like they're halfway to being actual claws. He is in a large iron cage, and when Susan goes closer, he bares his teeth at her, making a noise in the back of his throat that shouldn't sound so much like a real growl.
But nothing is stranger than the harpy woman. It literally reads that, on a name tag on her own cage. She is wearing nothing but a loincloth, her legs scaly, her feet deformed so much they really do look like a bird's. Her torso is covered in downy feathers, and her arms, short and thin in proportion to the rest of her body, look for all the world like they belong on an actual bird, the long feathers sliding over each other naturally with her movements. For all her curiosity, Susan doesn't dare go too close. Finally she shakes her head in disgust and moves on, finding herself back at the entrance, having made a round of the room.
    -> horror_choicelist
+ [creepy creatures]
Susan decides to brave the darkness in the creepy creatures room. She turns a corner, and then stops abruptly.
Dim light glints off of an enormous spider web, its center at the height of her nose, and right there sits a spider slightly smaller than her palm. It pulls its legs in closely as if it is going to pounce on her, with that rapid kind of movement insects have that gives Susan the creeps. Then she realizes there is a glass wall between her and the monster. She steps aside, around the terrarium, her heart beating like she's just run a marathon, and glances around the room.
The only illumination in it comes from small halogen lamps inside dozens of terrariums, populated with snakes, exotic spiders, and other small, crawly things that Susan prefers not looking at too closely. She starts feeling little annoying itches all over her body as she takes a few more steps. Something scurries by on the ground and she swears to herself that if anything comes in her direction, she will stomp her heel down on it.
Then, a big object that she'd taken for a terrarium tree in a corner starts moving. She freezes to the spot when the light falls on it, revealing a pale, slightly greenish, long face with an unnaturally flat nose under wide eyes that seems to be all moss-colored iris. Susan could even swear the scraggly black beard is interspersed with patches that look suspiciously like scales. More worrying, though, is the albino python draped over the strange man's long, thin arms, the end of its body twisted around the man's bare chest.
She stumbles backward as he takes a step toward her, his thin lips twisting into a likeness of a smile, guiding the snake's head toward her as if to introduce them. She's finally had enough and runs back to the door.
    -> horror_choicelist
+ [The Dungeon]
She steps into the incredibly dark hallway, which immediately has her turn a corner toward a door. She steps through the door and a sudden smell of smoke hits her nose, but there is no fire to be seen. She hears a faint scream ahead of her, and then a nervous laugh. Breating deep to steady her nerves, she keeps moving forward.
The room she is in depicts a medieval cottage setting. Dead animals hang from the ceiling. There is a fireplace that is not lit with a big kettle over it. A mattress made of straw lies in one corner. 
Someone grabs her arm from behind, making her scream and jump back. The man behind her is covered in bandages, and smiles at her with a crooked mouth missing many teeth. 
He gestures wildly and starts discribing the horrors of leprosy, the disease he is ostensibly suffering from. Susan figures he must be an actor, there to scare everyone who comes through the door. He reaches out to shake her hand, and she shrinks from it, prompting him to get angry and push her into the next room, slamming the door shut behind her. 
The next room almost makes her scream again, it is full of torture devices, and some have people in or on them, screaming out loud. It takes her a full five minutes before she dares to move again. She figures this must all be some sort of trick, with actors using fake devices that don't really hurt. When she gets closer, they look like they are actually very lifelike dolls, with fake blood spurting out of their wounds. Then a noose drops over her head, and her scream is half choked. A torturer comes to stand in front of her, the noose just loose enough not to hurt her, but she is absolutely terrified. He laughs at her, then releases her to 'attend' to his other victims.
Breating a sigh of relief, she makes her way through the door to the next room. This room is what looks like an alchemists laboratory, with bubbling bottles and pipes, and a weirdly cold mist hovering over the floor so she can't see her feet.
At first she can't see any other doors, but then she spots one hidden slightly behind one of the bookcases. The bookcase has heavy tomes in it, bound in leather and with strange markings on the sides, certainly no language she can recognise. When she gets closer, she suddenly spots a hidden hallway she couldn't see at the back of the room. 
From the hallway she can hear the sounds of other people who came before her.
{not no_horror:
The door behind the bookcase has a sign on it:
"RESTRICTED STAFF ONLY - This section of the cirque is unfinished - DO NOT ENTER"
At first, Susan automatically feels herself going towards the hallway, but then she stops. This place has been nothing but tricks, and if that section of the circus really is unfinished, perhaps she can see how they do all the impossible things she has seen.
    * * [Go in the staff only door] She just manages to get the door open, and squeeze through beside the bookcase. Behind it is nothing. Unlike the oppressive darkness of the rest of the House of Horrors, this space just feels empty. She steps forward, but there is no floor there so she falls and drops.
    -> endings.death
}   
    + + (no_horror)[Go through the hallway] She decides she doesn't want to get into trouble, and her curiosity is not worth going somewhere she shouldn't. So she keeps going through the rooms. 
    The next few rooms depict various catastrophic horrible events, such as the plague with actors covered in boils, and the Great London fire, with actors who look burned and charred, some even with limbs missing.
        -> horror_choicelist
+ [Leave] 
Susan really thought she would find Jessica in this horrible place, daredevil that she is. But unfortunately she's not here, so Susan heads off to find her somewhere else.
~ showtime++
-> gowhere

== main_show ==
=first_half
~ showtime++
Inside the tent the colour of the walls is black. There is quiet piano music playing in the background as everyone is taking their seats. The ring is completely dark, though the sections for the audience are lit up. The seats go all the way around the ring in layers, each layer higher than the one in front, except for the entrance and a stage on one side of the ring, and it is so large it almost looks like a theatre. The ring is huge, it looks almost as big as the square outside, even though that couldn't possibly be true. As soon as everyone is seated, the lights over the audience starts to dim and music quiets, until they are in complete darkness and silence.
A single, bright spotlight flips on, directly onto the centre of the ring. There is a man wearing a golden cloak, suit and tophat standing there posing and leaning on a cane.. {concessions.talk: The same man she had seen before.} {square.talk: The same man she had seen before.} His clothes shine just as brightly as the tent on the outside. Susan squints her eyes against the brightness, and she sees that that man in glowing with an intense golden aura, that couldn't be caused by the light shining on his suit. Just as she is about to tell her friends about it, the music starts.
It is a grand, orchestral theme, but Susan sees no orchestra, nor anything else that could be playing music. She wonders if perhaps the orchestra is under the audience seats. The man twirls his staff in time with the music, and Susan can see the golden aura being flicked out from his staff towards the audience like dust. She strains to see where the golden dust is landing, but then the man locks eyes with her and pauses, his eyebrow twitching like he is surpressing surprise or a frown. Then his voice booms over the audience even louder than the music, the same voice that announced the start of the show.
RINGMASTER: "Welcome, welcome, one and all, to Le Cirque des Étoiles!"
The crowd cheers at the top of their lungs. 
RINGMASTER: "I am your host, your ringmaster for this evening, and I thank you for joining me. The show tonight is a very special one, I think you'll find. The weather is so cold outside, so we have devised a show that will get your heart pumping! Without further ado, please enjoy the show."
With a grandiose bow he twirls his cloak around him and backs away, and from behind him under the stage a party of clowns rides into the ring in a variety of comically tiny cars. They ride around making jokes, and interacting with the children who are sitting in the front row. Susan isn't really paying attention, she is still staring at the stage where she can see the last bits of the golden aura disappearing.
The clowns were just an introduction, something to distract the audience, because the second they drive off back under the stage there is suddenly a highwire, strung over the entire width of the tent. There are also trapeze swings hanging below it. A group of acrobats in silver and green outfits come out from below the stage, doing flips and vaulting over each other. They climb the ladders to the trapeze and the highwire.  Only two get onto the highwire, the others start swinging from the trapezes. There is no net. As they show build momentum, each feat of balance and each jump on the trapezes getting more daring and drawing more gasps from the audience, there are a couple of flying dancers that drop from the celing unexpectedly, dangling from large red ribbons. Susan notices that neither the highwires or ribbons seem to be attached to anything, and when she squints she can again see an aura around some of the dancers, a green one this time. At the end of their act they suddenly all drop down to the ring and the lights cut out, causing some alarmed yells from the audience. Half a beat later the light is on again and they are posed in a human pyramid, drawing a standing ovation from the crowd. Susan can see the trails of green aura through the air, looking like dust just like with the ringmaster.
After the acrobats leave the ring there is a short intermission. The clowns come back out to make balloon animals for the children, and staff members walk around with trays of food and drink.
* [Grab a snack] Susan and her friends decide to share some crackers from a tray.
-> second_half
* [Not hungry] Susan's friends decide to have some snacks, but she's not hungry so she declines.
-> second_half
=second_half
When the show starts again, the lights turn off again, and then spotlights start circling over the ring and the crowd, until they all come together to light up a quarten of men in suits standing on the stage. They is dressed in an immaculate black silk suit, tophat and cloak, with a white blouse, white gloves, and brocade waistcoats. Each one has a different coloured waistcoat, gold, silver, black, and red. {square.charles: Susan recognises the one in silver as Charles.} 
These are magicians, and their show is absolutely astounding, they coordinate their movements and magic tricks so it almost looks like they are moving as one. Susan again notices an aura, the one in silver has a silver aura. They perform the more usual tricks of making things appear out of nothing, sawing each other in half, and being trapped in chains and trying to escape, but then it gets very strange. They start to fly, their cloaks billowing around them as they rise up towards the ceiling. {square.charles: The silver aura grows much stronger now and Susan can barely even see Charles anymore for the brightness of it. They move in the air until Charles is right above Susan, and she can't help but stare up at him.} They sweep their cloaks backwards, and then a huge amount of colourful bubbles comes from their cloaks, which smell sweet like flowers, and when they pop they shower the people below with rainbow coloured snow that floats down, but it's not cold, it's warm. By the time people have stopped marveling over the bubbles, the magicians are back on the stage, bowing for their finish. The crowd is silent at first, but then explodes into cheering, jumping up and down and a thunderous applause.
The ringmaster appears again then, thanking everyone for their attention and wishing everyone a pleasant night, before disappearing back under the stage, and the lights in the tent come on.
-> after_show
=after_show
Susan's mind is reeling after the show, watching people filter out of the tent. Then she spots the ringmaster, sneaking away from the tent across the square. Even though he was the host of the show, nobody seems to be able to see him, despite everyone moving out of his way. She really wants to talk to him, and ask him why nobody can see him, and she is incredibly curious to know why he is sneaking off so soon after the show instead of basking in the applause like the performers. She feels like going after him and getting some answers.
{ square.charles:
Susan is still basking in the wonder she felt for the performances, the applause still ringing in her ears. Something sparkles in the corner of her eye, and when she turns to look she sees Charles.
* [Watch Charles] He locks eyes with her, winks, and steps out of the ring. He becons her to follow him outside to the square, and he slips out the entrance. 
    + + (followcharles)[Go after him] Susan feels an attraction towards him she can't explain. She quickly walks after him, mumbling some sort of excuse to her friends. She sees his silk cloak swirling behind him as he strides across the square. He's headed into the Funhouse.
    -> funhouse.funhouse_choicelist
    + + (no_charles)[Don't follow him] 
    Susan leaves and goes back to the central square, deciding she had better not follow strange glowing men who she feels strangely attracted to.
    -> gowhere
}
* (ringmaster)[Follow the ringmaster] She says goodbye to her friends and then quickly squeezes her way through the cloud, trying to catch the ringmaster before he gets too far, but he's going so fast she is falling behind. Halfway across the square he stops suddenly, and she thinks she can finally catch up to him, but then he strides in fast steps even bigger than before, changing direction towards the Funhouse. She almost runs after him.
-> funhouse.funhouse_choicelist
* (no_ringmaster)[Leave] Susan leaves, deciding it's not worth the trouble, and goes back to the central square.
-> gowhere

== endings ==
=madness_ending
She once again has to shield her eyes from the bright light in the maze, and tries to keep the entrance door open so she can find her way back. Unfortunately, as she takes a few steps forward, it shuts behind her with a slam. She whirls around but the door is no longer visible. She uses the same strategy as before, running her hand along the wall to find the gaps between the mirrors. After a while the dizzyness gets to her and she has to sit down and close her eyes. She has not caught even a glimpse of the ringmaster.
She can't take it anymore, and calls out 
"Please help me, I'm lost, I can't find the exit." 
She waits, but nothing happens. She calls out again, louder, thinking they didn't hear her. But nobody comes.
She starts to cry, holding her head in her hands, before getting back up and trying to find the exit on her own. She walks for what feels like hours, so long her feet start hurting. By now she is almost hysterical. Her eyes are strained, her feet hurt, she's hungry and thirsty.
"Please, I just want to go home. Please help me get out!"
She slams her fists into the wall, but the mirror doesn't so much as twitch. She screams and starts attacking the mirror, which vibrates a little with the force of her hits.
She slumps to the floor sobbing, her energy spent. Her reflections start moving on their own, mocking her and laughing, she can hear them giggling. They grow more and more horrific and distorted, until she curls up on the floor and covers her ears. But she can still hear them laughing at her.
After some time, she has stopped crying, or moving. Her breating slows to almost nothing, and her body relaxes as she falls unconscious.
A little while later, one of the mirrors next to her slides away, revealing the ringmaster, with two staff members in black masks. The ringmaster shakes his head. 
"Poor girl, we really couldn't have you discovering all our secrets. Don't worry, we'll take care of you."
One of the staff members picks her up, and carries her through the hole.
The person on the bed wakes up, a silver masquerade mask covering their face, wearing a black suit with white gloves. A man in gold stands beside them, and smiles at them as he helps them get up.
"Welcome to the family."
 THE END
-> END
=james_ending 
Susan blushes and smiles at him. Ned and Amy move to another table, to give them some time to themselves. They spend time finishing their food and drinks, chatting away. James shyly hold out his hand, and she takes it. They realise they have a lot in common, and James is a little embarrassed and relieved to admit that he has had a crush on her since they were children. She laughs at that, remembering how much he used to pick on her as children.
They chat the evening away, completely forgetting about the circus they find themselves in, even when the main show starts they decline going with their friends in favour of sitting together. Towards the morning, when the circus is getting ready to close, Jessica turns up, and teases them mercilessly about all the things they missed because they were too busy playing lovebirds.
Susan laughs, she doesn't really mind having missed it. One of her oldest friends is now her boyfriend, and she can't remember the last time she felt so giddy and happy.
He walks her home, holding hands the entire way.
 THE END
-> END
=death
She hits the floor with a dull thud, not having fallen that far. She gets up and rubs her side where she landed. She hears a giggle that sounds very familiar.
She turns toward it, and it's Jessica, happily skipping away. 
SUSAN: "Jessica?"
JESSICA: "Come on, silly, I've got something great to show you!"
Jessica rounds a corner that Susan can barely even see in the dark, and Susan runs after h er. She turns the corner and Jessica's disappeared again. She hears a giggle behind her, and she stops and whilrs around. She goes back to where she came from, still nothing. 
SUSAN: "Jess? Come on, I've been looking all over."
Again she hears Jessica laugh around the corner. She rushes forward hoping to catch Jessica, only to see the tail end of her scarf disappearing behind another corner up ahead. She runs after her, but as she rounds the corner she trips over the scarf. She picks it up, then drops it in horror, it's covered in blood.
SUSAN: "Jess? This isn't funny anym-" 
Susan's word end in a scream, as she sees Jessica lying on the floor a few feet away, in a pool of blood. She runs over crying out Jessica's name, kneeling down beside her and shaking her vigorously to try and wake her up. She's cold, her lips are blue, and her eyes are bulging out of their sockets.
Then she twitches, sending Susan reeling back in shock. She starts shuddering and moving with jerky movements, and her head twists around to face Susan.
JESSICA: "Yoouuuu... whyyyyy didn't you fiiiiiiind meeee..."
Susan is frozen in abject terror as the twitching bloody mess of a body crawls towards her, its fingers clawing at the floor, its eyes leaking pus and blood coming out of its nose. Susan stares into its eyes and can't move, her muscles cramped up as the thing claws at her legs. It no longer looks anything like a human being, all warped and desiccated, with a mouth with rows of teeth like a shark, and nails the size of daggers. 
JESSICA: "Doooon't worryyyy... jusssst sleeeeep forever here with meeeee..."
As its mouth descends on her Susan lets out one last cry, and then she feels an incredible searing pain in her neck, and then, nothing.
 THE END
-> END
=standard
SUSAN: "Oh my gosh, Jess! I've been looking all over for you, where have you been?"
JESSICA: "Just been going to all the tents, weren't they all amazing?"
* [Get annoyed] 
SUSAN: "Geez Jess, you could have at least waited or come to find me instead of just powering on. Even Amy and them didn't see you all night."
JESSICA: "Aww come on I'm sorry, you know how excited I get about new things. I mean, when is the last time you can remember anything happening in this little town? And who knows if we'll ever get something like this again, I just had to see everything."
Susan is still a little annoyed, but she has to admit she did also go around to see everything, she can understand the inclination to keep going and experience things.
* [Don't make a fuss] Susan decides it's not worth making a fuss about, at least everyone had a good time and nobody got hurt.
- They excitedly chat about all the things they have seen, comparing stories and sharing the things they had experienced. They chatter away as they walk out of the circus, the staff members at the entrance bowing at them in farewell.
They crunch their way home through the snow, still giddy and exhilarated from the incredible night they've had. Susan gets home to her quiet little house, and settles into bed, though she is unable to settle down and go to sleep.
However amazing the day was, Susan has the naggin feeling that she missed something, that there was so much more to the circus than what's on the surface.
{horror_house.no_horror: She wonders what she could have seen if she went into the restricted door in the House of Horrors. She could maybe have seen what the circus looked like while it was still being built.} {main_show.no_ringmaster: She thinks back to the ringmaster, what she could have learned if she had chosen to follow after him.} {main_show.ringmaster: Imagine what secrets she could have learned from the ringmaster.}{main_show.no_charles: Charles, the man who wanted her to come and follow him. What was it he wanted to tell her?} {maze: Was there really no way to find the exit on her own through the maze?}
The next day the village wakes up to find the circus has disappeared, leaving not a single bit of confetti or footprint as a clue they had ever been there.
Susan goes about her life, and in time even mostly forgets about the circus, but every once in a while she again feels that she would have discovered something amazing if only she'd looked closer.
THE END
-> END 
=charles
Before long she is hopelessly lost. She has lost sight of Charles' reflection, and she has no idea how far she is into the maze. 
SUSAN: "Hello? Charles? Can you help me? Where do I go?"
There is a slight whisper at the edge of her hearing, and she turns around thinking there is someone there, but she sees no one.
Again there is a whisper, this time she recognises it as Charles' voice. She strains to hear what he is saying to her.
CHARLES: "Susan, if you can hear me, follow my instructions exactly. I will tell you how to get through the maze."
Susan nods, and then feels silly because there is no possible way he could see her right now. She follows his directions, turning where he tells her to turn, making her way slowly, trying not to bump into the mirrored walls. She wonders how he knows where she is, how he could possible see her in a space that is completely mirrored.
After a little while she suddenly sees something that is not a brightly lit mirror, a dark spot in the distance. Charles' whispers tell her to walk towards it, so she does, hoping that she is not making a huge mistake. At the end of the hallway there is a doorway to a normal room, with Charles waiting for her with a big smile, but the ringmaster there, frowning at her. She steps out from the maze into the room, and the wall slides into place behind her.
CHARLES: "See, I told you she has the gift. Who'd have thought we'd find someone gifted in this part of the country?"
RINGMASTER: "Hmmm, I suppose. So, Miss..."
SUSAN: "Uh... Susan Averhill."
RINGMASTER "Miss Averhill. What are we going to do with you now? You've seen far too much for us to just let you walk away."
At this, Susan felt a chill down her spine, worried about what he might say next. Charles grins and winks at her, and her heart does a little flutter.
CHARLES: "Say, I have an idea. How would you like to join the circus, Susan?"
Susan and the ringmaster both stand there gaping at him. 
The ringmaster recovers quickly, crosses his arms, and awaits her answer.
Susan opens and closes her mouth a few times, her mind racing. 
SUSAN: "But what about my friends, my family? I can't just leave them, they depend on me. Besides, I'm not like you, how could I ever be helpful?"
CHARLES: "The fact that you could hear my instructions is proof that you are like me. You can say goodbye to your friens and family, we can come up with a decent story to tell them. Come on, what do you say?"
He hold out his hand to her, for the first time without his gloves on.
* [Take his hand]
Susan takes a deep breath and puts her hand in his. His hand is impossibly soft and warm, and he pulls her in for a hug, making her legs all wobbly.
* [Still not sure]
Susan looks at him warily. She's still not sure about this, the ringmaster's threat weighs on her mind. 
Charles locks eyes with her, and the intense focus and mirth in his eyes makes her lower her eyes.
CHARLES: "You know you're special, right? You've been seeing things this whole time that you can't explain. If you come with us I can show you such amazing things you've never even dreamed of, reveal all the secrets of the circus. Run away with the circus with me, Susan. Please."
He seems to be genuinely concerned for her, and she can't help but blush. 
She nods, not trusting herself to speak. It's got to be better than a boring life in a tiny middle-of-nowhere village, right?
- RINGMASTER: "Alright then, welcome to the circus, Susan."
 THE END
-> END


