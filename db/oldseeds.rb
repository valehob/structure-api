# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

drills = [

  {name: "Straight Shots", shots: 15 ,diagram: <<-TEXT
  <line x1="12.5%" y1="0" x2="12.5%" y2="100%" stroke-width="75" stroke="#000000"/>

  <circle cx="12.5%" cy="630" r="285" fill="#FFFFFF"/>
  <line x1="12.5%" x2="50%" y1="630" y2="630" stroke-width="75" stroke="#000000" stroke-dasharray="300,200"/>
  <line x1="12985" x2="100%" y1="630" y2="2%" stroke-width="75" stroke="#000000"/>

  <circle cx="12.5%" cy="2000" r="285" fill="#FFFFFF"/>
  <line x1="12.5%" x2="50%" y1="2000" y2="5670" stroke-width="75" stroke="#000000" stroke-dasharray="300,200"/>
  <line x1="12985" x2="100%" y1="5670" y2="98%" stroke-width="75" stroke="#000000"/>


  <circle cx="12700" cy="630" r="285" fill="#606060"/>
  <circle cx="12700" cy="1890" r="285" fill="#606060"/>
  <circle cx="12700" cy="3150" r="285" fill="#606060"/>
  <circle cx="12700" cy="4410" r="285" fill="#606060"/>
  <circle cx="12700" cy="5670" r="285" fill="#606060"/>
  <circle cx="12700" cy="6930" r="285" fill="#606060"/>
  <circle cx="12700" cy="8190" r="285" fill="#606060"/>
  <circle cx="12700" cy="9450" r="285" fill="#606060"/>
  <circle cx="12700" cy="10710" r="285" fill="#606060"/>
  <circle cx="12700" cy="11970" r="285" fill="#606060"/>
  TEXT
  },

  {name: "Standard Speeds", shots: 7, diagram: <<-TEXT
  <rect x="75%" y="75%" width="25%" height="25%" fill="url(#greenGradient)"/>
  <text x="82%" y="90%" dx="5%" font-family="Verdana" font-size="700" fill="black">1</text>

  <rect x="25%" y="75%" width="50%" height="25%" fill="url(#greenGradient)"/>
  <text x="45%" y="90%" dx="5%" font-family="Verdana" font-size="700" fill="black">1.5</text>

  <rect x="0%" y="50%" width="25%" height="25%" fill="url(#greenGradient)"/>
  <text x="10%" y="65%" dx="1.5%" font-family="Verdana" font-size="700" fill="black">2</text>

  <rect x="25%" y="50%" width="50%" height="25%" fill="url(#greenGradient)"/>
  <text x="45%" y="65%" dx="3.5%" font-family="Verdana" font-size="700" fill="black">2.5</text>

  <rect x="75%" y="25%" width="25%" height="25%" fill="url(#greenGradient)"/>
  <text x="82%" y="40%" dx="5%" font-family="Verdana" font-size="700" fill="black">3</text>

  <rect x="25%" y="25%" width="50%" height="25%" fill="url(#greenGradient)"/>
  <text x="45%" y="40%" dx="3.5%" font-family="Verdana" font-size="700" fill="black">3.5</text>

  <rect x="0%" y="0%" width="25%" height="25%" fill="url(#greenGradient)"/>
  <text x="10%" y="15%" dx="1.5%" font-family="Verdana" font-size="700" fill="black">4</text>

  <circle cx="25%" cy="87.5%" r="285" fill="#FFFFFF"/>
  <line x1="25%" x2="90%" y1="87.5%" y2="87.5%" stroke-width="75" stroke="#000000"/>

  <circle cx="25%" cy="75%" r="285" fill="#FFFFFF"/>
  <line x1="25%" x2="100%" y1="75%" y2="75%" stroke-width="75" stroke="#000000"/>
  <polygon points="12500,9450 13000,9000 13000,9900" style="fill:black" />

  <circle cx="25%" cy="62.5%" r="285" fill="#FFFFFF"/>
  <line x1="12.5%" x2="100%" y1="62.5%" y2="62.5%" stroke-width="75" stroke="#000000"/>
  <polygon points="12500,7875 13000,8325 13000,7425" style="fill:black" />
  TEXT
  },

  {name: "Straightness", shots: 10, diagram: <<-TEXT
  <rect x="75%" y="40%" width="25%" height="20%" fill="url(#greenGradient)"/>

  <circle cx="50%" cy="5445" r="285" fill="#606060"/>
  <circle cx="50%" cy="6015" r="285" fill="#A0A0A0"/>
  <circle cx="50%" cy="6585" r="285" fill="#A0A0A0"/>
  <circle cx="50%" cy="7155" r="285" fill="#606060"/>

  <circle cx="75%" cy="50%" r="285" fill="#FFFFFF"/>
  <line x1="0%" x2="90%" y1="50%" y2="50%" stroke-width="75" stroke="#000000"/>
  <polygon points="23000,6300 22500,6750 22500,5850" style="fill:black" />
  TEXT
  },

  {name: "Follow Differentiation", shots: 10, diagram: <<-TEXT
  <rect x="50%" y="0" width="3175" height="25%" fill="url(#greenGradient)"/>
  <rect x="62.5%" y="0" width="3175" height="25%" fill="url(#greenGradient)"/>
  <rect x="75%" y="0" width="3175" height="25%" fill="url(#greenGradient)"/>
  <rect x="87.5%" y="0" width="3175" height="25%" fill="url(#greenGradient)"/>
  <rect x="87.5%" y="25%" width="3175" height="25%" fill="url(#greenGradient)"/>
  <rect x="75%" y="50%" width="3175" height="50%" fill="url(#greenGradient)"/>
  <rect x="62.5%" y="50%" width="3175" height="50%" fill="url(#greenGradient)"/>
  <rect x="50%" y="50%" width="3175" height="50%" fill="url(#greenGradient)"/>
  <rect x="37.5%" y="50%" width="3175" height="50%" fill="url(#greenGradient)"/>
  <rect x="25%" y="50%" width="3175" height="50%" fill="url(#greenGradient)"/>

  <text x="50%" y="15%" dx="5%" font-family="Verdana" font-size="700" fill="black">F1</text>
  <text x="62.5%" y="15%" dx="5%" font-family="Verdana" font-size="700" fill="black">F2</text>
  <text x="75%" y="15%" dx="5%" font-family="Verdana" font-size="700" fill="black">F3</text>
  <text x="87.5%" y="15%" dx="5%" font-family="Verdana" font-size="700" fill="black">F4</text>
  <text x="87.5%" y="40%" dx="5%" font-family="Verdana" font-size="700" fill="black">F5</text>
  <text x="75%" y="75%" dx="5%" font-family="Verdana" font-size="700" fill="black">F6</text>
  <text x="62.5%" y="75%" dx="5%" font-family="Verdana" font-size="700" fill="black">F7</text>
  <text x="50%" y="75%" dx="5%" font-family="Verdana" font-size="700" fill="black">F8</text>
  <text x="37.5%" y="75%" dx="5%" font-family="Verdana" font-size="700" fill="black">F9</text>
  <text x="25%" y="75%" dx="5%" font-family="Verdana" font-size="700" fill="black">F10</text>

  <line x1="25%" y1="0" x2="25%" y2="100%" stroke-width="75" stroke="#000000"/>

  <circle cx="25%" cy="630" r="285" fill="#FFFFFF"/>
  <circle cx="12130" cy="630" r="285" fill="#FFFFFF"/>
  <line x1="6635" x2="11845" y1="630" y2="630" stroke-width="75" stroke="#000000" stroke-dasharray="300,200"/>
  <circle cx="15130" cy="1030" r="285" fill="#FFFFFF"/>
  <line x1="12415" x2="15130" y1="630" y2="1030" stroke-width="75" stroke="#000000" stroke-dasharray="300,200"/>
  <line x1="12985" x2="100%" y1="630" y2="2%" stroke-width="75" stroke="#000000"/>


  <circle cx="12700" cy="630" r="285" fill="#606060"/>
  <circle cx="12700" cy="1890" r="285" fill="#606060"/>
  <circle cx="12700" cy="3150" r="285" fill="#606060"/>
  <circle cx="12700" cy="4410" r="285" fill="#606060"/>
  <circle cx="12700" cy="5670" r="285" fill="#606060"/>
  <circle cx="12700" cy="6930" r="285" fill="#606060"/>
  <circle cx="12700" cy="8190" r="285" fill="#606060"/>
  <circle cx="12700" cy="9450" r="285" fill="#606060"/>
  <circle cx="12700" cy="10710" r="285" fill="#606060"/>
  <circle cx="12700" cy="11970" r="285" fill="#606060"/>
  TEXT
  },

  {name: "10°-30° Speed Cross", shots: 10, diagram: <<-TEXT
  <rect x="25%" y="0%" width="25%" height="25%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="25%" y="25%" width="25%" height="25%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="25%" y="50%" width="25%" height="25%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="25%" y="75%" width="25%" height="25%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>

  <circle cx="25%" cy="50%" r="285" fill="#606060"/>
  <circle cx="27%" cy="53%" r="285" fill="#FFFFFF"/>

  <circle cx="30%" cy="65%" r="285" fill="#FFFFFF"/>
  <line x1="0%" x2="25%" y1="0%" y2="50%" stroke-width="75" stroke="#000000"/>
  <line x1="30%" x2="27%" y1="65%" y2="53%" stroke-width="75" stroke="#000000"/>

  <line x1="30%" x2="27%" y1="0%" y2="53%" stroke-width="75" stroke="#000000"/>
  <line x1="30%" x2="37.5%" y1="0%" y2="100%" stroke-width="75" stroke="#000000"/>
  <line x1="37.5%" x2="42%" y1="100%" y2="15%" stroke-width="75" stroke="#000000"/>

  <circle cx="27.9%" cy="37.5%" r="285" fill="#FFFFFF"/>
  <circle cx="29.3%" cy="10%" r="285" fill="#FFFFFF"/>
  <circle cx="31.2%" cy="17%" r="285" fill="#FFFFFF"/>
  <circle cx="32.9%" cy="40%" r="285" fill="#FFFFFF"/>
  <circle cx="35.2%" cy="70%" r="285" fill="#FFFFFF"/>
  <circle cx="36.9%" cy="90%" r="285" fill="#FFFFFF"/>
  <circle cx="38.5%" cy="80%" r="285" fill="#FFFFFF"/>
  <circle cx="39.7%" cy="60%" r="285" fill="#FFFFFF"/>
  <circle cx="40.7%" cy="40%" r="285" fill="#FFFFFF"/>
  <circle cx="41.7%" cy="20%" r="285" fill="#FFFFFF"/>
  TEXT
  },

  {name: "10°-30° Speed Long", shots: 10, diagram: <<-TEXT
  <rect x="0%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="12.5%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="25%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="37.5%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="50%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="62.5%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="75%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>
  <rect x="87.5%" y="50%" width="12.5%" height="50%" fill="url(#greenGradient)" stroke="gray" stroke-width="50"/>

  <circle cx="25%" cy="50%" r="285" fill="#606060"/>
  <circle cx="27%" cy="53%" r="285" fill="#FFFFFF"/>

  <circle cx="35%" cy="59%" r="285" fill="#FFFFFF"/>
  <line x1="0%" x2="25%" y1="0%" y2="50%" stroke-width="75" stroke="#000000"/>
  <line x1="35%" x2="27%" y1="59%" y2="53%" stroke-width="75" stroke="#000000"/>

  <line x1="27%" x2="0%" y1="53%" y2="60%" stroke-width="75" stroke="#000000"/>
  <line x1="0%" x2="95%" y1="60%" y2="85%" stroke-width="75" stroke="#000000"/>

  <circle cx="17.9%" cy="55.5%" r="285" fill="#FFFFFF"/>
  <circle cx="5.3%" cy="58%" r="285" fill="#FFFFFF"/>
  <circle cx="9%" cy="62.5%" r="285" fill="#FFFFFF"/>
  <circle cx="20%" cy="66%" r="285" fill="#FFFFFF"/>
  <circle cx="35.2%" cy="70%" r="285" fill="#FFFFFF"/>
  <circle cx="46.9%" cy="73%" r="285" fill="#FFFFFF"/>
  <circle cx="55%" cy="75%" r="285" fill="#FFFFFF"/>
  <circle cx="70%" cy="78.5%" r="285" fill="#FFFFFF"/>
  <circle cx="80%" cy="81%" r="285" fill="#FFFFFF"/>
  <circle cx="90%" cy="84%" r="285" fill="#FFFFFF"/>
  TEXT
  }

]

drills.each do |drill|
  d = Drill.create(
    name: drill[:name],
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
    diagram: drill[:diagram]
    )

  runs = 5.times.collect do |n|
    Run.create(drill: d)
  end

  drill[:shots].times do |m|
    shot = Shot.create(drill: d, name: (m+1).to_s)

    runs.each do |run|
      Try.create(shot: shot, run: run, success: rand > 0.3)
    end
  end


end
