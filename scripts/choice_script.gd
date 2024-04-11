extends Node

var choice1Text = "Climate change is spreading in the news again. You are one of the few companies in the news for excessive CO2 emissions."
var choice1Option1 = ["Deny climate change", 1.0, -5.0, 0.9, ""]
var choice1Option2 = ["Slightly reduce CO2 emissions", 0.9, -1.0, 1.0, ""]
var choice1Option3 = ["Greatly reduce CO2 emissions", 0.8, -0.5, 1.0, ""]
var summary1Option1 = "You spend money to deny climate change. You convince a small fraction of the population, but it doesn't seem to help your profits. Most people have already decided their stance on this topic."
var summary1Option2 = "You slighlty reduce CO2 emissions by reducing production of the company. It is nothing major, but comes at a cost to the company. As a new CEO, you were unsure of how to cut CO2 emissions without lowering production but there must be specific ways in the future."
var summary1Option3 = "You greatly reduce CO2 emissions by reducing production of the company. You are helping the environment out, but comes at a cost to the company. As a new CEO, you were unsure of how to cut CO2 emissions without lowering production but there must be specific ways in the future."

var choice2Text = "During a meeting at the companies headquarters in St. Louis, a manager brings up the topic of this month's electricity bill. They recommend you to switch the office to LED lights to save energy cost."
var choice2Option1 = ["Switch the headquarter to LED lights", 1.05, 0.1, 0.99, ""]
var choice2Option2 = ["Keep the lights how they are", 1.0, 0.0, 1.0, ""]
var choice2Option3 = ["Switch all company buildings to LED lights", 1.1, 0.2, 0.98, ""]
var summary2Option1 = "The savings from using LED lights are incredible. The cost of lighting is 400% cheaper for the headquarter building. Lighting is only a tiny part of the companies expenses, so the amount you save equally tiny. Thankfully, having a smaller electricity bill helps out the environment."
var summary2Option2 = "You decide to keep the lights how they are. Changing all the lights sounds too complicated, spending less on electricity is not a priority it seems."
var summary2Option3 = "The savings from using LED lights are incredible. The cost of lighting is 400% cheaper for all buildings now. Lighting is only a tiny part of the companies expenses, so the amount you save equally tiny. Thankfully, having a smaller electricity bill helps out the environment."

# https://en.wikipedia.org/wiki/Controversies_of_Nestl%C3%A9
var choice3Text = "You have received a tip that other companies are buying lakes to start their own bottled water products. What do you do?"
var choice3Option1 = ["Pump water from a lake in the US", 1.1, -2.0, 0.9, ""]
var choice3Option2 = ["Buy cheap lakes in a 3rd world country", 1.3, -5.0, 0.9, ""]
var choice3Option3 = ["Drill underground reservoirs for water", 1.3, -10.0, 0.8, ""]
var summary3Option1 = "You decide to pump water from a lake in the US. Most of your customer are from the US and approve this action to provide jobs. Some oppose it, but as long as you limit water pumping, the population should be okay with it."
var summary3Option2 = "You buy cheap lakes from a 3rd world country. Instead of selling water to citizens in the country, you decide to market your water to US customers. This creates immensive profits. The citizens from the 3rd world country are harmed by this practice."
var summary3Option3 = "You drill underground reservoirs for water. It costs a lot of money to get started, but thankfully you can market this as the freshest water in the world. It works, and people are willing to pay extra for your bottled water. It turns out, these drills used to reach the underground reservoir emit a lot of CO2, along with destroying the environment."

# https://afdc.energy.gov/vehicles/natural-gas
var choice4Text = "The company is expanding greatly and needs a new flight of semi-trucks to deliver food products. What kind of fleet should you buy?"
var choice4Option1 = ["Electric semi-trucks", 1.1, 1.0, 0.85, ""]
var choice4Option2 = ["Compressed natural gas trucks", 1.2, -10, 0.95, ""]
var choice4Option3 = ["Traditional semi-trucks", 1.3, -15.0, 0.9, ""]
var summary4Option1 = "You replace the fleet of semi-trucks with... electric semi-trucks. They were cheaper through a government tax write-off. The lower mileage until stopping for a recharge slightly lowered your production, but the environment thanks you."
var summary4Option2 = "You replace the fleet of semi-trucks with... compressed natural gas trucks. There are some refueling and mechanic problems with them, but at least your company got a nice tax write-off. The price of CNG is lower than diesel fuel, and the gas emits slightly less CO2 than diesel."
var summary4Option3 = "You replace the fleet of semi-trucks with... the same semi-trucks again. The other choices sounded too fancy and complicated. After all, other companies are still sticking with traditional semi-trucks as long as they can."

var choice5Text = "You recieve another tip involving bottled water. Your competitors are planning on increasing their bottled water production along with aggressive marketing for a larger market share. What do you do?"
var choice5Option1 = ["Increase production and marketing by 50%", 1.2, -5.0, 0.8, ""]
var choice5Option2 = ["Increase production and marketing by 100%", 1.3, -10.0, 0.6, ""]
var choice5Option3 = ["Leave the bottled water industry", 0.8, 1.0, 1.0, ""]
var summary5Option1 = "You increase production and marketing by 50%. This move results in the company staying competitive in the bottled water market. The environment is not happy about it, but your stockholders enjoy it."
var summary5Option2 = "You double down and increase production and marketing by 100%. As a result, your market share in bottled water increased even after competitiors marketing. Unfortunately, you get into a little bit of legal trouble as the population notices your antics. Perhaps you increased production too much?"
var summary5Option3 = "You leave the bottled water industry. Hurting the environment just to stay competitive is not worth it."

var choice6Text = "This is an example problem 6 with choices"
var choice6Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice6Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice6Option3 = ["option3", 1.0, -20.0, 1.0, ""]
var summary6Option1 = ""
var summary6Option2 = ""
var summary6Option3 = ""

var choice7Text = "This is an example problem 7 with choices"
var choice7Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice7Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice7Option3 = ["option3", 1.0, -20.0, 1.0, ""]
var summary7Option1 = ""
var summary7Option2 = ""
var summary7Option3 = ""

var choice8Text = "This is an example problem 8 with choices"
var choice8Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice8Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice8Option3 = ["option3", 1.0, -20.0, 1.0, ""]
var summary8Option1 = ""
var summary8Option2 = ""
var summary8Option3 = ""

var choice9Text = "This is an example problem 9 with choices"
var choice9Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice9Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice9Option3 = ["option3", 1.0, -20.0, 1.0, ""]
var summary9Option1 = ""
var summary9Option2 = ""
var summary9Option3 = ""

var choice10Text = "This is an example problem 10 with choices"
var choice10Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice10Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice10Option3 = ["option3", 1.0, 0.0, 1.0, ""]
var summary10Option1 = ""
var summary10Option2 = ""
var summary10Option3 = ""

var choice11Text = "This is an example problem 11 with choices"
var choice11Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice11Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice11Option3 = ["option3", 1.0, 0.0, 1.0, ""]
var summary11Option1 = ""
var summary11Option2 = ""
var summary11Option3 = ""

var choice12Text = "This is an example problem 12 with choices"
var choice12Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice12Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice12Option3 = ["option3", 1.0, 0.0, 1.0, ""]
var summary12Option1 = ""
var summary12Option2 = ""
var summary12Option3 = ""

var choice13Text = "This is an example problem 13 with choices"
var choice13Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice13Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice13Option3 = ["option3", 1.0, 0.0, 1.0, ""]
var summary13Option1 = ""
var summary13Option2 = ""
var summary13Option3 = ""

var choice14Text = "This is an example problem 14 with choices"
var choice14Option1 = ["option1", 1.0, 0.0, 1.0, ""]
var choice14Option2 = ["option2", 1.0, 0.0, 1.0, ""]
var choice14Option3 = ["option3", 1.0, 0.0, 1.0, ""]
var summary14Option1 = ""
var summary14Option2 = ""
var summary14Option3 = ""

# https://en.wikipedia.org/wiki/ExxonMobil_climate_change_denial#Lobbying_against_emissions_regulations
var choice16Text = "Congress have cracked down on climate change to appease the population. If the deal goes through, your company will have to lower CO2 emissions or take hefty fines."
var choice16Option1 = ["Slightly lower production and emissions", 0.9, 0.2, 1.0, ""]
var choice16Option2 = ["Do nothing", 1.0, -0.5, 0.9, ""]
var choice16Option3 = ["Lobby against emissions regulations", 1.1, -5.0, 0.95, ""]
var summary16Option1 = "You slightly lower production and emissions. Your company does not have to pay a fine."
var summary16Option2 = "You do nothing. The deal went through Congress, and your company was forced to pay a fine. Thankfully the profit from production mostly offset the fines."
var summary16Option3 = "You lobby against emissions regulations. It was... successful. It may be bad for the environment, but your stockholders are happy."

var choice15Text = "The population is still becoming increasingly worried about climate change. People have started to boycott your company, along with other companies who do not have a net zero carbon plan."
var choice15Option1 = ["Introduce a net zero plan... and stick to it", 0.9, 1.0, 0.5, ""]
var choice15Option2 = ["Introduce a net zero plan... and half stick to it", 0.95, -10.0, 0.8, ""]
var choice15Option3 = ["Do nothing", 0.6, -20.0, 1.0, ""]
var summary15Option1 = "You introduce an achievable net zero plan. Your company plans to stick to it and avoid any future contreversies. Unfortunately, the environment has already been damaged over the years from your actions as well as other companies. But at least this way, you can profit from future consumers in a changing world."
var summary15Option2 = "You introduce an unachievable net zero plan. Your company would have to completely restructure the way you process food, and you deem that unattainable. Thankully, the public doesn't know that the company doesn't plan on meeting it's net zero goals. In the future, most people will forget the promises your company made."
var summary15Option3 = "You do nothing, hoping that this will blow over. It doesn't. Other companies introduce net zero plans, while yours remains boycotted and targetted more than ever."

# I AM STOPPING HERE AT YEAR 2040, INSTEAD OF THE YEAR 2050 AS ORIGINALLY PLANNED.
# https://i.kym-cdn.com/photos/images/newsfeed/001/983/888/25d.png

#var choice17Text = "This is an example problem 17 with choices"
#var choice17Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice17Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice17Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary17Option1 = ""
#var summary17Option2 = ""
#var summary17Option3 = ""
#
#var choice18Text = "This is an example problem 18 with choices"
#var choice18Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice18Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice18Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary18Option1 = ""
#var summary18Option2 = ""
#var summary18Option3 = ""
#
#var choice19Text = "This is an example problem 19 with choices"
#var choice19Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice19Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice19Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary19Option1 = ""
#var summary19Option2 = ""
#var summary19Option3 = ""
#
#var choice20Text = "This is an example problem 22 with choices"
#var choice20Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice20Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice20Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary20Option1 = ""
#var summary20Option2 = ""
#var summary20Option3 = ""
#
#var choice21Text = "This is an example problem 22 with choices"
#var choice21Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice21Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice21Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary21Option1 = ""
#var summary21Option2 = ""
#var summary21Option3 = ""
#
#var choice22Text = "This is an example problem 22 with choices"
#var choice22Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice22Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice22Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary22Option1 = ""
#var summary22Option2 = ""
#var summary22Option3 = ""
#
#var choice23Text = "This is an example problem 23 with choices"
#var choice23Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice23Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice23Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary23Option1 = ""
#var summary23Option2 = ""
#var summary23Option3 = ""
#
#var choice24Text = "This is an example problem 24 with choices"
#var choice24Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice24Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice24Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary24Option1 = ""
#var summary24Option2 = ""
#var summary24Option3 = ""
#
#var choice25Text = "This is an example problem 25 with choices"
#var choice25Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice25Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice25Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary25Option1 = ""
#var summary25Option2 = ""
#var summary25Option3 = ""
#
#var choice26Text = "This is an example problem 26 with choices"
#var choice26Option1 = ["option1", 1.0, 0.0, 1.0, ""]
#var choice26Option2 = ["option2", 1.0, 0.0, 1.0, ""]
#var choice26Option3 = ["option3", 1.0, 0.0, 1.0, ""]
#var summary26Option1 = ""
#var summary26Option2 = ""
#var summary26Option3 = ""

var choiceTextArray = [
		choice1Text, choice2Text, choice3Text,
		choice4Text, choice5Text, choice6Text,
		choice7Text, choice8Text, choice9Text,
		choice10Text, choice11Text, choice12Text,
		choice13Text, choice14Text, choice15Text,
		choice16Text,
		#choice17Text, choice18Text,
		#choice19Text, choice20Text, choice21Text,
		#choice22Text, choice23Text, choice24Text,
		#choice25Text, choice26Text,
		]

var choiceOptionsArray = [
		[choice1Option1, choice1Option2, choice1Option3],
		[choice2Option1, choice2Option2, choice2Option3],
		[choice3Option1, choice3Option2, choice3Option3],
		[choice4Option1, choice4Option2, choice4Option3],
		[choice5Option1, choice5Option2, choice5Option3],
		[choice6Option1, choice6Option2, choice6Option3],
		[choice7Option1, choice7Option2, choice7Option3],
		[choice8Option1, choice8Option2, choice8Option3],
		[choice9Option1, choice9Option2, choice9Option3],
		[choice10Option1, choice10Option2, choice10Option3],
		[choice11Option1, choice11Option2, choice11Option3],
		[choice12Option1, choice12Option2, choice12Option3],
		[choice13Option1, choice13Option2, choice13Option3],
		[choice14Option1, choice14Option2, choice14Option3],
		[choice15Option1, choice15Option2, choice15Option3],
		[choice16Option1, choice16Option2, choice16Option3],
		#[choice17Option1, choice17Option2, choice17Option3],
		#[choice18Option1, choice18Option2, choice18Option3],
		#[choice19Option1, choice19Option2, choice19Option3],
		#[choice20Option1, choice20Option2, choice20Option3],
		#[choice21Option1, choice21Option2, choice21Option3],
		#[choice22Option1, choice22Option2, choice22Option3],
		#[choice23Option1, choice23Option2, choice23Option3],
		#[choice24Option1, choice24Option2, choice24Option3],
		#[choice25Option1, choice25Option2, choice25Option3],
		#[choice26Option1, choice26Option2, choice26Option3],
		]

var summaryOptionsArray = [
		[summary1Option1, summary1Option2, summary1Option3],
		[summary2Option1, summary2Option2, summary2Option3],
		[summary3Option1, summary3Option2, summary3Option3],
		[summary4Option1, summary4Option2, summary4Option3],
		[summary5Option1, summary5Option2, summary5Option3],
		[summary6Option1, summary6Option2, summary6Option3],
		[summary7Option1, summary7Option2, summary7Option3],
		[summary8Option1, summary8Option2, summary8Option3],
		[summary9Option1, summary9Option2, summary9Option3],
		[summary10Option1, summary10Option2, summary10Option3],
		[summary11Option1, summary11Option2, summary11Option3],
		[summary12Option1, summary12Option2, summary12Option3],
		[summary13Option1, summary13Option2, summary13Option3],
		[summary14Option1, summary14Option2, summary14Option3],
		[summary15Option1, summary15Option2, summary15Option3],
		[summary16Option1, summary16Option2, summary16Option3],
		#[summary17Option1, summary17Option2, summary17Option3],
		#[summary18Option1, summary18Option2, summary18Option3],
		#[summary19Option1, summary19Option2, summary19Option3],
		#[summary20Option1, summary20Option2, summary20Option3],
		#[summary21Option1, summary21Option2, summary21Option3],
		#[summary22Option1, summary22Option2, summary22Option3],
		#[summary23Option1, summary23Option2, summary23Option3],
		#[summary24Option1, summary24Option2, summary24Option3],
		#[summary25Option1, summary25Option2, summary25Option3],
		#[summary26Option1, summary26Option2, summary26Option3],
		]
