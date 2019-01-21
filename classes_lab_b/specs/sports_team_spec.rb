require('minitest/autorun')
require('minitest/rg')
require_relative('../sports_team')

class TestSportsTeam < MiniTest::Test
  def setup
    @team = SportsTeam.new("Eagles", ["Bill", "Bob", "James", "Jack"], "Carter", 0)
  end

  def test_team_name
    @team = SportsTeam.new("Eagles", ["Bill", "Bob", "James", "Jack"], "Carter", 0)
    assert_equal("Eagles", @team.team_name)
  end

  def test_players
    @team = SportsTeam.new("Eagles", ["Bill", "Bob", "James", "Jack"], "Carter", 0)
    assert_equal(["Bill", "Bob", "James", "Jack"], @team.players)
  end

    def test_coach
    @team = SportsTeam.new("Eagles", ["Bill", "Bob", "James", "Jack"], "Carter", 0)
    assert_equal("Carter", @team.coach)
  end

  def test_set_coach
    @team.coach = "Jose"
    assert_equal("Jose", @team.coach())
  end

  def test_add_player
    before_count = @team.players.length
    before_count += 1
    @team.add_player("Jim")
    assert_equal(before_count, @team.players.length)
  end

  def test_check_players
     assert_equal(["Bill", "Bob", "James", "Jack"], @team.players)
   end

   def test_win_or_lose
     @team.win_or_lose(true)
     assert_equal(@team.points,3)
   end




end
