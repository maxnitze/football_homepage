module LeaguesHelper
  def full_title league
    "#{title league} (#{year league})"
  end

  def title league
    "#{league.name} #{league.iscup ? "(#{I18n.t('leagues.cup')})" : ''}"
  end

  def year league
    "#{league.start.year.eql?(league.end.year) ? league.start.year : "#{league.start.year}/#{league.end.year}"}"
  end
end
