class SportsTeam

  attr_reader :team_name, :players, :coach, :points
  attr_writer :team_name, :players, :coach, :points


  def initialize(input_team_name, input_players, input_coach, input_points)
    @team_name = input_team_name
    @players = input_players
    @coach = input_coach
    @points = input_points
  end

  def get_team
    return @team_name
  end

  def get_player
    return @players
  end

  def get_coach
    return @coach
  end

  def set_coach(coach_name)
    @coach = coach_name
  end

  def add_player(player)
    @players.push(player)
    return @players
  end

  # def check_players
  #   for person in @team.players
  #     return person
  #   end
  # end

  def win_or_lose(result)
      @points += 3 if (result == true)
    end




end
