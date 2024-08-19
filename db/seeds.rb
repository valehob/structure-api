topics = [
 { id: 1, name: "Potting Ability"},
 { id: 2, name: "Stroke Efficiency"},
 { id: 3, name: "Flat Angles"},
 { id: 4, name: "Cut Angles"},
 { id: 5, name: "Center Table"}
]

levels = [
  {order: 1, name: "Chill"},
  {order: 2, name: "Sophisticated"},
  {order: 3, name: "Beast"}
]

TOPICS = []
topics.each do |topic|
  TOPICS << Topic.create(
    name: topic[:name]
  )
end

levels.each do |level|
  Level.create(level)
end

drills = JSON.parse(File.read("#{Rails.root}/db/seedData.json"))

drills.each do |drill|
  @level = Level.find(drill["levelOrder"])
  @topic = Topic.find(drill["topicID"])
  @drill = Drill.create(topic: @topic, level: @level, diagram: drill["diagram"], name:@topic.name, description: drill["description"])
  drill["shots"].times do |shot|
    Shot.create(drill: @drill, name: (shot+1).to_s)
  end
end
