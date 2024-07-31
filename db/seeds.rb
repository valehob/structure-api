drills = [
 "Potting Ability",
 "Stroke Efficiency",
 "Flat Angles",
 "Cut Angles",
 "Center Table",
 "Small Area",
 "Wide Area",
 "Game Transfer",
 "Bank, Kick & Jump",
 "Training Games"

]

drills.each do |drill|
  Drill.create(
    name: drill[drill]
  )
end
