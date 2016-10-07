Figure.create(name: "Robert Moses")
Figure.create(name: "Al Smith")
Figure.create(name: "Theodore Roosevelt")
Figure.create(name: "Peter Stuyvesant")
Figure.create(name: "Boss Tweed")
Figure.create(name: "Michael Bloomberg")
Figure.create(name: "Ed Koch")
Figure.create(name: "Fiorello LaGuardia")
Figure.create(name: "Jimmy Walker")
Figure.create(name: "Belle Moskowitz")

Landmark.create(name: "BQE", figure_id: 1, year_completed: 1947)
Landmark.create(name: "Holland Tunnel", figure_id: 5, year_completed: 1927)
Landmark.create(name: "Wall Street Wall", figure_id: 4, year_completed: 1684)
Landmark.create(name: "Brooklyn Battery Tunnel", figure_id: 10, year_completed: 1973)

Title.create(name: "Mayor")
Title.create(name: "President")
Title.create(name: "Governor")
Title.create(name: "NYC Parks commissioner")

FigureTitle.create(title_id: 3, figure_id: 2)
FigureTitle.create(title_id: 3, figure_id: 3)
FigureTitle.create(title_id: 2, figure_id: 3)
FigureTitle.create(title_id: 1, figure_id: 9)
FigureTitle.create(title_id: 4, figure_id: 1)



landmarks_list = {
    "Madison Square Guarden" => {
      :year_completed => 1901
    },
    "The big bull outside" => {
      :year_completed => 1995
    },
    "Flatiron School" => {
      :year_completed => 2014
    },
    "Museum Mile" => {
      :year_completed => 1058
    },
    "Subway Station" => {
      :year_completed => 2015
    },
    "Cast Iron" => {
      :year_completed => 1951
    },
    "Shea Stadium" => {
      :year_completed => 1964
    },
    "Flatiron Building" => {
      :year_completed => 1902
    },
    "Brooklyn Bridge" => {
      :year_completed => 1883
    }
  }

landmarks_list.each do |name, landmark_hash|
  p = Landmark.new
  p.name = name
  landmark_hash.each do |attribute, value|
      p[attribute] = value
  end
  p.save
end

figure_list = {
    "Billy The Kid" => {
    },
    "Mark Zuckerberg" => {
    },
    "Ada Lovelace" => {
    },
    "Linus Torvalds" => {
    }
  }

figure_list.each do |name, figure_hash|
  p = Figure.new
  p.name = name
  p.save
end


title_list = {
    "The Mayor" => {
    },
    "The Don" => {
    },
    "Mr. President" => {
    }
  }

title_list.each do |name, figure_hash|
  p = Title.new
  p.name = name
  p.save
end
