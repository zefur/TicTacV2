class Board < ApplicationRecord
  include CableReady::Broadcaster
  before_validation(on: :create) do
    self.state = [
      [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
        [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
        [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
        [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
        [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
       [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
        [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
        [nil,nil, nil, nil, nil,nil,nil,nil,nil] ,
       [nil,nil, nil, nil, nil,nil,nil,nil,nil] 
    ]
      self.cell_active = {
        "unit_1": true,
         "unit_2": true,
         "unit_3": true,
         "unit_4": true,
         "unit_5": true,
         "unit_6": true,
         "unit_7": true,
         "unit_8": true,
         "unit_9": true,
      }

      {
        "1": {
            active: true,
            finished: false
        },
        "2": {
            active: true,
            finished: false
        },
        "3": {
            active: true,
            finished: false
        },
       "4": {
            active: true,
            finished: false
        },
        "5": {
            active: true,
            finished: false
        },
        "6": {
            active: true,
            finished: false
        },
        "7": {
            active: true,
            finished: false
        },
        "8": {
            active: true,
            finished: false
        },
        "9": {
            active: true,
            finished: false
        }
    } 
    
  end
  belongs_to :gameroom
  WINNING_COMBOS = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [2, 4, 6]
  ].freeze

  GAME_START = {
    "unit_1": true,
     "unit_2": true,
     "unit_3": true,
     "unit_4": true,
     "unit_5": true,
     "unit_6": true,
     "unit_7": true,
     "unit_8": true,
     "unit_9": true,
  }

  def move(game,cell)
    self.turn == true ? (self.state[game-1][cell-1] = "x") : (self.state[game-1][cell-1] = "o")
    self.toggle!(:turn)
    puts "test 1"
    if self.cell_active == GAME_START.stringify_keys 
      puts "test 2"
      (1..9).each do |v| 
        cell_active["unit_#{v}"] = false
        puts cell_active["unit_#{v}"]
      end
      cell_active["unit_#{cell}"] = !cell_active["unit_#{cell}"]
      puts "test 3"
    else 
      cell_active["unit_#{cell}"] = !cell_active["unit_#{cell}"]
      cell_active["unit_#{game}"] = !cell_active["unit_#{game}"]
    end
      self.save!
      #  active(cell)
    
  end
  
  def active(cell)
    cable_ready[RoomChannel].morph(
      selector: "##{cell}",
      html: render(UnitComponent.new(game_id: cell, board: self))
    ).broadcast_to(Gameroom.find(self.gameroom.id))
  end

  def check_unit(unit)
    WINNING_COMBOS.any? do |x|
      x.all? do |y|
        state[unit-1][y] == 'x'
      end
    end

  end
  
end
