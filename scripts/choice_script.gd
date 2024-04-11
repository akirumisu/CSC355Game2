extends Node

var choice1Text = "Climate change is spreading in the news again. You are one of the few companies in the news for excessive CO2 emissions."
var choice1Option1 = ["Deny climate change", 1.0, -10.0, 0.9, ""]
var choice1Option2 = ["Slightly reduce CO2 emissions by slightly reducing production", 0.9, -3.0, 1.0, ""]
var choice1Option3 = ["Greatly reduce CO2 emissions by greatly reducing production", 0.8, -1.5, 1.0, ""]
var summary1Option1 = "You spend money to deny climate change. You convince a small fraction of the population, but it doesn't seem to help your profits. Most people have already decided their stance on this topic."
var summary1Option2 = "You slightly reduce CO2 emissions by reducing production of the company. It is nothing major, but comes at a cost to the company. As a new CEO, you were unsure of how to cut CO2 emissions without lowering production, but there must be specific ways in the future."
var summary1Option3 = "You greatly reduce CO2 emissions by reducing production of the company. You are helping the environment out, but comes at a cost to the company. As a new CEO, you were unsure of how to cut CO2 emissions without lowering production, but there must be specific ways in the future."

var choice2Text = "During a meeting at the company's headquarters in St. Louis, a manager brings up the topic of this month's electricity bill. They recommend you to switch the office to LED lights to save energy cost."
var choice2Option1 = ["Switch the headquarters to LED lights", 1.05, 0.1, 0.99, ""]
var choice2Option2 = ["Keep the lights how they are", 1.0, 0.0, 1.0, ""]
var choice2Option3 = ["Switch all company buildings to LED lights", 1.1, 0.2, 0.98, ""]
var summary2Option1 = "The savings from using LED lights are incredible. The cost of lighting is 400% cheaper for the headquarters building. Lighting is only a tiny part of the companies expenses, so the amount you save equally tiny. Thankfully, having a smaller electricity bill helps out the environment."
var summary2Option2 = "You decide to keep the lights how they are. Changing all the lights sounds too complicated, spending less on electricity is not a priority, it seems."
var summary2Option3 = "The savings from using LED lights are incredible. The cost of lighting is 400% cheaper for all buildings now. Lighting is only a tiny part of the companies expenses, so the amount you save equally tiny. Thankfully, having a smaller electricity bill helps out the environment."

# https://en.wikipedia.org/wiki/Controversies_of_Nestl%C3%A9
var choice3Text = "You have received a tip that other companies are buying lakes to start their own bottled water products. What do you do?"
var choice3Option1 = ["Pump water from a lake in the US", 1.1, -2.0, 0.9, ""]
var choice3Option2 = ["Buy cheap lakes in a 3rd world country", 1.3, -5.0, 0.9, ""]
var choice3Option3 = ["Drill underground reservoirs for water", 1.3, -10.0, 0.8, ""]
var summary3Option1 = "You decide to pump water from a lake in the US. Most of your customer are from the US and approve this action to provide jobs. Some oppose it, but as long as you limit water pumping, the population should be okay with it."
var summary3Option2 = "You buy cheap lakes from a 3rd world country. Instead of selling water to citizens in the country, you decide to market your water to US customers. This creates immense profits. The citizens from the 3rd world country are harmed by this practice."
var summary3Option3 = "You drill underground reservoirs for water. It costs a lot of money to get started, but thankfully you can market this as the freshest water in the world. It works, and people are willing to pay extra for your bottled water. It turns out, these drills used to reach the underground reservoir emit a lot of CO2, along with destroying the environment."

# https://afdc.energy.gov/vehicles/natural-gas
var choice4Text = "The company is expanding greatly and needs a new flight of semi-trucks to deliver food products. What kind of fleet should you buy?"
var choice4Option1 = ["Electric semi-trucks", 1.1, 1.0, 0.85, ""]
var choice4Option2 = ["Compressed natural gas trucks", 1.2, -10, 0.95, ""]
var choice4Option3 = ["Traditional semi-trucks", 1.3, -15.0, 0.9, ""]
var summary4Option1 = "You replace the fleet of semi-trucks with... electric semi-trucks. They were cheaper through a government tax write-off. The lower mileage until stopping for a recharge slightly lowered your production, but the environment thanks you."
var summary4Option2 = "You replace the fleet of semi-trucks with... compressed natural gas trucks. There are some refueling and mechanic problems with them, but at least your company got a nice tax write-off. The price of CNG is lower than diesel fuel, and the gas emits slightly less CO2 than diesel."
var summary4Option3 = "You replace the fleet of semi-trucks with... the same semi-trucks again. The other choices sounded too fancy and complicated. After all, other companies are still sticking with traditional semi-trucks as long as they can."

var choice5Text = "You receive another tip involving bottled water. Your competitors are planning on increasing their bottled water production along with aggressive marketing for a larger market share. What do you do?"
var choice5Option1 = ["Increase production and marketing by 50%", 1.2, -5.0, 0.8, ""]
var choice5Option2 = ["Increase production and marketing by 100%", 1.3, -10.0, 0.6, ""]
var choice5Option3 = ["Leave the bottled water industry", 0.8, 1.0, 1.0, ""]
var summary5Option1 = "You increase production and marketing by 50%. This move results in the company staying competitive in the bottled water market. The environment is not happy about it, but your stockholders enjoy it."
var summary5Option2 = "You double down and increase production and marketing by 100%. As a result, your market share in bottled water increased even after competitors marketing. Unfortunately, you get into a little bit of legal trouble as the population notices your antics. Perhaps you increased production too much?"
var summary5Option3 = "You leave the bottled water industry. Hurting the environment just to stay competitive is not worth it."

# https://www.powermag.com/the-solar-and-wind-power-cost-value-conundrum/
var choice6Text = "After expansions to the company, the electricity bill gets brought up again at a company meeting. Now might be a good time to invest in eco-friendly energy for the headquarters and factories."
var choice6Option1 = ["Invest in solar panels", 1.0, 0.5, 0.93, ""]
var choice6Option2 = ["Keep using the energy grid", 1.0, 0.0, 1.0, ""]
var choice6Option3 = ["Invest in wind turbines", 1.0, 0.5, 0.96, ""]
var summary6Option1 = "You invest in solar panels. These are cheap, but you have to also invest in some large-scale batteries for the night. It's almost enough to completely offset energy consumption from the grid."
var summary6Option2 = "You keep using the energy grid. Everyone else is at the mercy of the energy grid anyway, why change it? Hopefully coal doesn't power too much of the energy you use."
var summary6Option3 = "You invest in win turbines. The turbines are generating power 24/7 from the wind, and are almost enough to completely offset energy consumption from the grid."

var choice7Text = "Competitors have been increasing production every year. It looks like your company will start to fall behind if nothing is done. A new mega factory should be constructed."
var choice7Option1 = ["Build a traditional factory", 1.8, -20.0, 0.5, ""]
var choice7Option2 = ["Build an energy efficient factory", 2.0, -10.0, 0.3, ""]
var choice7Option3 = ["Build 2 traditional mega factories", 3.5, -50.0, 0.0, ""]
var summary7Option1 = "You build a traditional factory. Just like all your other factories. Hopefully you won't have to improve or remodel this new mega factory any time soon. The profits generated should put you ahead of competitors."
var summary7Option2 = "You build an energy efficient factory. That was expensive. The good news is that this factory will cost less to maintain than a traditional one. All the machines are state-of-the-art and optimized to only be running when needed. Splendid, this should put you ahead of competitors."
var summary7Option3 = "Why build only 1 factory, when you have the money to build 2? Uh oh, looks like the environment is not happy with this one."

var choice8Text = "Traveling to multiple different company and shareholder meetings in a year is too tiresome. What if you simply hosted them a different way?"
var choice8Option1 = ["Host hybrid company meetings", 1.0, 1.0, 1.0, ""]
var choice8Option2 = ["Host online-only company meetings", 1.1, 2.0, 1.0, ""]
var choice8Option3 = ["Continue to host in-person company meetings", 1.0, 0.0, 1.0, ""]
var summary8Option1 = "You host hybrid company meetings, where people can choose to join in-person or online. Fewer people are flying to these meetings and instead opting to join online. It turns out you are helping the environment while providing a choice to others."
var summary8Option2 = "You host online-only company meetings. Fewer people have to fly to these meetings, and instead join online where ever they are located. It turns out you are helping the environment by having others stay home instead of flying. Some people are disappointed with this choice, but your company also saves money by not paying for hotels and a physical location."
var summary8Option3 = "You continue to host in-person company meetings. Nothing is different from before."

# https://www.winman.com/blog/8-ways-manufacturers-can-lower-their-carbon-footprint
var choice9Text = "The new mega factory has been successful. However, there are ways it can be improved. What should you do to the factory?"
var choice9Option1 = ["Reduce packaging and recycle more", 1.05, 1.0, 0.98, ""]
var choice9Option2 = ["Monitor energy usage", 1.05, 1.0, 0.98, ""]
var choice9Option3 = ["Review route logistics", 1.1, 2.0, 0.96, ""]
var summary9Option1 = "Reducing package saved your company a small amount every day, it adds up over time. By recycling, you are also helping out the environment. This only cost a small amount of money to implement."
var summary9Option2 = "You monitor the energy usage at the mega factory. It turns out, there were some ways to save even more energy. Lights were staying on when they weren't supposed to. You helped out the environment as well as boosted profits a little bit."
var summary9Option3 = "You review the route logistics for trucks at the mega factory. It costed more to have an expert review this, but the results are shocking. Taking an alternate route during the week-days can result in a 10% shorter drive, saving fuel costs as well as helping the environment."

var choice10Text = "The food processing sector has gone down. Stockholders are worried about the companies future. Perhaps you should try dipping your toes in another sector?"
var choice10Option1 = ["Oil transportation", 1.1, -20.0, 0.6, ""]
var choice10Option2 = ["Clean energy production", 1.2, 1.0, 0.6, ""]
var choice10Option3 = ["Start a fast food chain", 1.25, -10.0, 0.6, ""]
var summary10Option1 = "You decide to try out the oil transportation sector. This sector has been declining over the years, but the potential profits are still high. This move is seen as controversial, and some people start boycotting your company for getting involved in oil. The actual profit generated is not nearly as much as you had hoped for because of the boycotts. You decide to exit the oil sector and just stick to food processing."
var summary10Option2 = "You decide to try out the energy production sector. After consulting with experts, it looks like the future is about clean energy production. You start by building a hydroelectric dam. It is very expensive, but at least you know that your investment will continuously bring in profits in the future."
var summary10Option3 = "You start a small fast food chain with a few locations. Many people know your companies brand and line up at the door to try signature menu items. The environmental impact of fast food chains is more than you had considered. Hopefully the population won't notice, or you will have to make changes."

var choice11Text = "A lead IT manager has contacted you. The company has grown so much that there are too many API calls to the company's database. Something will have to change, or the company will be forced to pay for a higher tier through AWS."
var choice11Option1 = ["Reduce the amount of API calls", 1.0, 0.5, 0.95, ""]
var choice11Option2 = ["Switch to a carbon net zero cloud service", 1.2, 2.0, 1.0, ""]
var choice11Option3 = ["Clean up old code of and get rid of old services", 1.0, 1.0, 0.95, ""]
var summary11Option1 = "You decide to hire a few more cloud engineers so they can look into if all the calls are necessary. The new cloud engineers were able to reduce the number of API calls so you pay less for the cloud service, but the salaries of your new employees balanced out potential profits."
var summary11Option2 = "You switch away from AWS to another company. It turns out, while their data centers are powered by renewables, they are not net zero. You were able to land a favorable contract by working directly with another cloud service, they were willing to charge you less than AWS if you continue working with them for years to come."
var summary11Option3 = "You decide to hire some software engineers to clean up old code of and get rid of old services. Some of the old services were sending automated API calls, or using multiple API calls when unnecessary. The salaries of the new employees offset some of the profits, but now you won't pay as much for cloud computing."

var choice12Text = "To increase profits this year, you decide to do another improvement to the mega factory."
var choice12Option1 = ["Simply increase production", 1.5, -10.0, 1.0, ""]
var choice12Option2 = ["Capture and reuse heat", 1.1, 1.0, 0.9, ""]
var choice12Option3 = ["Recycle unused office supplies and clutter", 1.0, 0.5, 1.0, ""]
var summary12Option1 = "You simply increase production. This generates more profit at the cost of hurting the environment."
var summary12Option2 = "You capture and reuse heat as energy. Over all, the mega factory produces a lot of heat, so now you won't have to pay as much electricity to keep the mega factory running."
var summary12Option3 = "You recycle unused office supplies and clutter throughout the mega factories offices. It's not much, but it helps clean up the place."

var choice13Text = "With the mega factory, supply is at an all-time high. But you aren't getting as many customers. Looks like you will need to start advertising more."
var choice13Option1 = ["Advertise online", 1.3, -0.5, 0.85, ""]
var choice13Option2 = ["Build billboards", 1.2, -1.0, 0.9, ""]
var choice13Option3 = ["Build digital billboards", 1.1, -5.0, 0.8, ""]
var summary13Option1 = "You advertise online. It works better than you expected and people flock to the stores to buy your product. There is also a slight harm to the environment from the energy used to show your ad campaign."
var summary13Option2 = "You contract some billboards to be built. It works and people flock to the stores to buy your product. There is also a slight harm to the environment for cutting down trees building these billboards."
var summary13Option3 = "You contract some digital billboards to be built. It works and people flock to the stores to buy your product. You didn't realize this, but the energy cost for digital billboards are extreme. The increased energy hurts the environment more than traditional billboards."

var choice14Text = "The board of directives and senior managers at the company have worked hard over the years and are in need of a vacation. What kind of vacation do you think they deserve?"
var choice14Option1 = ["A private jet vacation to the Bahamas", 1.0, -10.0, 0.7, ""]
var choice14Option2 = ["A private jet vacation to Dubai", 1.0, -10.0, 0.7, ""]
var choice14Option3 = ["No vacation, instead give them just compensation", 1.0, 0.0, 0.8, ""]
var summary14Option1 = "You give the board of directives and senior managers a private jet vacation to the Bahamas. The private jets are expensive and contribute to pollution, but everyone is enjoying themselves in the Bahamas."
var summary14Option2 = "You give the board of directives and senior managers a private jet vacation to Dubai. The private jets are expensive and contribute to pollution. This is also a way for your company to network and reach out to others for joint business deals."
var summary14Option3 = "You give the board of directives and senior managers a hefty fund for their continued service over the years. You also end up spending less money by not scheduling a vacation."

# https://en.wikipedia.org/wiki/ExxonMobil_climate_change_denial#Lobbying_against_emissions_regulations
var choice15Text = "Congress have cracked down on climate change to appease the population. If the deal goes through, your company will have to lower CO2 emissions or take hefty fines."
var choice15Option1 = ["Slightly lower emissions", 1.0, 0.5, 0.95, ""]
var choice15Option2 = ["Do nothing", 1.0, -5.0, 0.8, ""]
var choice15Option3 = ["Lobby against emissions regulations", 1.1, -25.0, 0.95, ""]
var summary15Option1 = "You slightly lower emissions through buying energy efficient products here and there. It is not much, but your company does not have to pay a fine."
var summary15Option2 = "You do nothing. The deal went through Congress, and your company was forced to pay a fine. Thankfully, the profit from production mostly offset the fines."
var summary15Option3 = "You lobby against emissions regulations. It was... successful. It may be bad for the environment, but your stockholders are happy."

var choice16Text = "The population is still becoming increasingly worried about climate change. People have started to boycott your company, along with other companies who do not have a net zero carbon plan."
var choice16Option1 = ["Introduce a net zero plan... and stick to it", 0.9, 1.0, 0.5, ""]
var choice16Option2 = ["Introduce a net zero plan... and half stick to it", 0.95, -10.0, 0.8, ""]
var choice16Option3 = ["Do nothing", 0.6, -25.0, 1.0, ""]
var summary16Option1 = "You introduce an achievable net zero plan. Your company plans to stick to it and avoid any future controversies. Unfortunately, the environment has already been damaged over the years from your actions as well as other companies. But at least this way, you can profit from future consumers in a changing world."
var summary16Option2 = "You introduce an unachievable net zero plan. Your company would have to completely restructure the way you process food, and you deem that unattainable. Thankfully, the public doesn't know that the company doesn't plan on meeting its net zero goals. In the future, most people will forget the promises your company made."
var summary16Option3 = "You do nothing, hoping that this will blow over. It doesn't. Other companies introduce net zero plans, while yours remains boycotted and targeted more than ever."

var choiceTextArray = [
		choice1Text, choice2Text, choice3Text, choice4Text,
		choice5Text, choice6Text, choice7Text, choice8Text,
		choice9Text, choice10Text, choice11Text, choice12Text,
		choice13Text, choice14Text, choice15Text, choice16Text,
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
		]
