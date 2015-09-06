module LeagueTeamsHelper
  def get_possible_squadleagueteams lt
    LeagueTeam.joins(:league)
      .where(team: lt.team)
      .where('("leagues"."start" >= ? AND "leagues"."start" <= ?) OR (? >= "leagues"."start" AND ? <= "leagues"."end")', lt.league.start, lt.league.end, lt.league.start, lt.league.start)
      .where.not(league: lt.league)
  end
end
