module LeaguesHelper
  def full_title league
    "#{title league} (#{year league})"
  end

  def title league
    "#{league.name} #{league.iscup ? "(#{I18n.t('leagues.cup')})" : ''}"
  end
end
