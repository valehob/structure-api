topics = [
 "Potting Ability",
 "Stroke Efficiency",
 "Flat Angles",
 "Cut Angles",
 "Center Table",
#  "Small Area",
#  "Wide Area",
#  "Game Transfer",
#  "Bank, Kick & Jump",
#  "Training Games"
]

levels = [
  {order: 1, name: "Chill"},
  {order: 2, name: "Sophisticated"},
  {order: 3, name: "Beast"}
]

TOPICS = []
topics.each do |topic|
  TOPICS << Topic.create(
    name: topic
  )
end

levels.each do |level|
  l = Level.create(level)
  TOPICS.each do |topic|
    Drill.create(topic: topic, level: l)
  end
end
