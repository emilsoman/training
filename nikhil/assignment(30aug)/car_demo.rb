# Class for car with its variables and methods....
class Car
  #  attribute accessor just as getter and setter
  attr_accessor :model, :color, :cc, :speed

  #  Constructor of Car Class
  #  def initialize()
  #
  #  end
  #method to create new car.
  def newCar()
    p "lets create a new car"
    print "\ncolor :"
    @color=gets.chop
    print "\nmodel :"
    @model=gets.chop
    print "\nspeed :"
    @speed=gets.chop
    print "\ncc :"
    @cc=gets.chop
  end

  #method to get details of a car.
  def details()
    p "details of your car"
    p "color : "+@color
    p "model : "+@model
    p "speed : "+@speed
    p "cc    : "+@cc
    p "Press enter to continue"
    gets
  end
  
  #method to modify a car details.
  def modify()
    p "lets begin the modification"
    print "\ncolor :"
    p @color=gets.chop
    print "\nmodel :"
    p @model=gets.chop
    print "\nspeed :"
    p @speed=gets.chop
    print "\ncc :"
    p @cc=gets.chop
  end

end

class Main < Car


  #  private
  def start()
    choice=1;
    noOfCars=0;
    names = []
    while choice != 4 do
      system("clear")
      puts "Menu / options"
      puts "\n 1. Design a new Car. \n 2. Modify a Car. \n 3. Get details of a Car. \n 4. Quit"
      puts "\n\ncars in your garage"
      puts "--------------------------------"
      count=0
      for i in names
        print " || #{count}."+ i.model
        count+=1
      end
      puts "\n--------------------------------"
      print "\n your choice : "

      begin
        choice=gets.to_i

        case choice
        when 1
          p "going to create a new car"
          names << Car.new()
          names[noOfCars].newCar
          noOfCars +=1;
        when 2
          p "which car are you going to modify car"
          names[gets.to_i].modify
        when 3
          p "going to get info of a car"
          names[gets.to_i].details
        when 4
          puts "b'bye, thank you"
        else
          puts " *** wrong input *** \n please enter the single digit integer between 1 & 4 .\n Press Enter to continue."
          gets
        end
      rescue
        puts " *** wrong input *** \n please enter the integer value only."
        retry
      end
    end
  end

  #  this is the code from where the program starts
  Main.new.start

end
