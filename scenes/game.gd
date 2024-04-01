extends Control

var totalMoney = 10000000;
var profit = 1000000;
var stock = 50.0;
var year = 2024;
var environment = 0.0;

var maxYear = 2100;
var minEnvironment = -10.0;

@onready var TotalMoneyValue = $"PlayerValues/TotalMoneyValue"
@onready var ProfitValue = $"PlayerValues/ProfitValue"
@onready var StockValue = $"PlayerValues/StockValue"
@onready var YearValue = $"GameValues/YearValue"

@onready var Intro = $"Intro"
@onready var IntroText = $"Intro/IntroText"

@onready var Choice = $"Choice"
@onready var ChoiceText = $"Choice/ChoiceText"
@onready var ChoiceButton1 = $"Choice/ButtonsContainer/ChoiceButton1"
@onready var ChoiceButton2 = $"Choice/ButtonsContainer/ChoiceButton2"
@onready var ChoiceButton3 = $"Choice/ButtonsContainer/ChoiceButton3"

@onready var Summary = $"Summary"
@onready var SummaryText = $"Summary/SummaryText"

@onready var Ending = $"Ending"
@onready var EndingText = $"Ending/EndingText"

func _ready():
	Intro.visible = true
	update_text_values()

func _process(_delta):
	pass

func generate_choice():
	# generate choice
	# if (year == 1):
	# else if (year == 2):
	# else if (year == 3):
	update_text_values()
	Choice.visible = true

func process_choice(choiceNumber):
	Choice.visible = false
	# process choice
	update_text_values()
	Summary.visible = true

func trigger_ending():
	# code
	update_text_values()
	Ending.visible = true

func update_text_values():
	TotalMoneyValue.text = str(totalMoney)
	ProfitValue.text = str(profit)
	StockValue.text = str(stock)
	YearValue.text = str(year)

func _on_choice_button_1_pressed():
	process_choice(1)

func _on_choice_button_2_pressed():
	process_choice(2)

func _on_choice_button_3_pressed():
	process_choice(3)

func _on_continue_button_pressed():
	Summary.visible = false
	year += 1
	if (year >= maxYear or environment < minEnvironment):
		trigger_ending()
	else:
		generate_choice()

func _on_intro_button_pressed():
	Intro.visible = false
	generate_choice()

func _on_ending_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
