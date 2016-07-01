class OrangeTree

  def initialize
    @height = 10 # 10 centimetres at birth
    @oranges = 0
    @age = 0

    puts "You plant an orange tree."
  end

  def one_year_passes
    puts "One year passes..."

    @height += 50 if @height < 400
    # @oranges = 0
    @age += 1

    case @age
    when 1..3
      puts "The sapling is too small to produce any fruit."
    when 4..10
      puts "The small tree produces a few ripe oranges."
      @oranges = 3
    when 11..20
      puts "The tree produces a fair number of oranges."
      @oranges = 6
    when 21..45
      puts "The large tree produces many ripe oranges."
      @oranges = 12
    when 45..50
      puts "The huge tree produces many, many oranges."
      @oranges = 18
    else
      puts "The orange tree withers and dies..."
      exit
    end
  end

  def count_oranges
    puts "There are #{@oranges} oranges left on the tree."
  end

  def pick_orange
    if @oranges >= 1
      @oranges -= 1
      puts "You pick and eat an orange. It's delicious!"
    elsif @age <= 3
      puts "The sapling hasn't grown enough to produce fruit yet."
    else
      puts "There's no oranges left on the tree."
    end
  end

end

tree = OrangeTree.new
51.times {tree.one_year_passes}
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.one_year_passes
# tree.pick_orange
# tree.pick_orange
