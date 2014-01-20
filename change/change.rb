class Changer
  def self.make_change(money)
    quarters = (money / 25).floor
    dimes = ((money % 25 )/ 10).floor
    nickles = ((money % 25 % 10 )/ 5).floor
    pennies = ((money % 25 % 10 % 5) / 1).floor
    change = []
    quarters.times {change << 25}
    dimes.times {change << 10}
    nickles.times {change << 5}
    pennies.times {change << 1}
    change
  end
end