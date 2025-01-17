extends Control

var totalMoney := 50000000000.0;
var income := 2500000000.0;
var stock := 105.0;
var year := 2024;

var environment := 90.0;
var environmentRegen := 0.0;
var environmentColor;

var prefix = [[1,"%10.2f"],[1e3,"%10.3fK"],
		[1e6,"%10.3fM"],[1e9,"%10.3fB"],
		[1e12,"%10.3fT"],[1e15,"%10.3fQa"]]

var maxYear := 2040;
var minEnvironment := 0.0;
var maxEnvironment := 100.0;

var timeElapsed := 0.0;

@onready var ChoiceScript = $"ChoiceScript"

@onready var BackgroundColor = $"BackgroundColor"

@onready var TotalMoneyValue = $"PlayerValues/TotalMoneyValue"
@onready var IncomeValue = $"PlayerValues/IncomeValue"
@onready var StockValue = $"PlayerValues/StockValue"
@onready var YearValue = $"GameValues/YearValue"

@onready var EnvironmentHealthText = $"EnvironmentHealthText"
@onready var EnvironmentHealthValue = $"EnvironmentHealthValue"

@onready var Intro = $"Intro"
@onready var IntroText = $"Intro/IntroText"

@onready var Choice = $"Choice"
@onready var ChoiceText = $"Choice/ChoiceText"
@onready var ChoiceButton1 = $"Choice/ButtonsContainer/ChoiceButton1"
@onready var ChoiceButton2 = $"Choice/ButtonsContainer/ChoiceButton2"
@onready var ChoiceButton3 = $"Choice/ButtonsContainer/ChoiceButton3"

@onready var Summary = $"Summary"
@onready var SummaryText = $"Summary/SummaryText"
@onready var SummaryImage = $"Summary/SummaryImage"

@onready var Ending = $"Ending"
@onready var EndingText1 = $"Ending/EndingText1"

@onready var ChoiceButtonSound = $"ChoiceButtonSound"
@onready var NextButtonSound = $"NextButtonSound"
@onready var GoodMusic = $"GoodMusic"
@onready var BadMusic = $"BadMusic"

func _ready():
	print_debug("New Game Started @ ",Time.get_time_string_from_system())
	NextButtonSound.play()
	timeElapsed = Time.get_ticks_msec()
	Intro.visible = true
	update_text_values()

func _process(_delta):
	if Choice.visible == true:
		if Input.is_action_just_pressed("SelectChoice1"):
			process_choice(0)
		if Input.is_action_just_pressed("SelectChoice2"):
			process_choice(1)
		if Input.is_action_just_pressed("SelectChoice3"):
			process_choice(2)
	else:
		if Input.is_action_just_pressed("SelectContinue"):
			if Intro.visible == true:
				Intro.visible = false
				generate_choice()
			elif Summary.visible == true:
				Summary.visible = false
				year += 1
				environment += environmentRegen
				if (year >= maxYear or environment <= minEnvironment):
					trigger_ending()
				else:
					generate_choice()
			elif Ending.visible == true:
				get_tree().change_scene_to_file("res://scenes/main_menu.tscn")

func generate_choice():
	NextButtonSound.play()
	
	ChoiceText.text = ChoiceScript.choiceTextArray[year-2024]
	ChoiceButton1.text = ChoiceScript.choiceOptionsArray[year-2024][0][0]
	ChoiceButton2.text = ChoiceScript.choiceOptionsArray[year-2024][1][0]
	ChoiceButton3.text = ChoiceScript.choiceOptionsArray[year-2024][2][0]
	
	timeElapsed = Time.get_ticks_msec()
	
	update_text_values()
	Choice.visible = true

func process_choice(choiceNumber):
	Choice.visible = false
	ChoiceButtonSound.play()
	
	var incomeChange = ChoiceScript.choiceOptionsArray[year-2024][choiceNumber][1]
	var environmentChange = ChoiceScript.choiceOptionsArray[year-2024][choiceNumber][2]
	var totalMoneyChange = ChoiceScript.choiceOptionsArray[year-2024][choiceNumber][3]
	var image = ChoiceScript.choiceOptionsArray[year-2024][choiceNumber][4]
	var choiceResultText = ChoiceScript.summaryOptionsArray[year-2024][choiceNumber]
	
	stock += ((incomeChange*income)/income)
	income *= incomeChange
	totalMoney *= totalMoneyChange
	totalMoney += income
	
	environment += environmentChange
	
	if (image != ""):
		SummaryImage.texture = load(image)
	
	SummaryText.text = choiceResultText
	
	environmentColor = int((1-(environment/maxEnvironment))*100)
	BackgroundColor.color = Color8(100+environmentColor, 100, 100, 255)
	
	GoodMusic.set_volume_db((environment/maxEnvironment * 50) - 65)
	BadMusic.set_volume_db(((1-environment/maxEnvironment) * 50) - 60)
	
	timeElapsed = (Time.get_ticks_msec() - timeElapsed)
	
	print("\nTime: ",timeElapsed/1000," Year: ",year," Choice: ",choiceNumber+1)
	print(ChoiceScript.summaryOptionsArray[year-2024][choiceNumber])
	print("Money:",update_value_prefix(totalMoney),"  Profit: ",update_value_prefix(income),"  Stock: ",update_value_prefix(stock),"  Environment: ",environment)
	
	update_text_values()
	Summary.visible = true

func trigger_ending():
	print_debug("\nGame Has Ended @ ",Time.get_time_string_from_system())
	ChoiceButtonSound.play()
	# code
	update_text_values()
	Ending.visible = true

func update_value_prefix(value):
	var magnitude
	for i in range(prefix.size()):
		if (value >= prefix[i][0]):
			magnitude = i
	return prefix[magnitude][1] % [value/prefix[magnitude][0]]

func update_text_values():
	TotalMoneyValue.text = update_value_prefix(totalMoney)
	IncomeValue.text = update_value_prefix(income)
	StockValue.text = update_value_prefix(stock)
	YearValue.text = str(year)
	
	EnvironmentHealthValue.value = environment

func _on_choice_button_1_pressed():
	process_choice(0)

func _on_choice_button_2_pressed():
	process_choice(1)

func _on_choice_button_3_pressed():
	process_choice(2)

func _on_continue_button_pressed():
	Summary.visible = false
	year += 1
	environment += environmentRegen
	
	if (year >= maxYear or environment <= minEnvironment):
		trigger_ending()
	else:
		generate_choice()

func _on_intro_button_pressed():
	Intro.visible = false
	generate_choice()

func _on_ending_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
