# length to truncate titles (e.g. in page titles)
TITLE_TRUNC = 25

# devise omniauth providers
OMNIAUTH_PROVIDERS = {
  facebook: 'Facebook',
  google_oauth2: 'Google',
  twitter: 'Twitter'
}

# football classes
FOOTBALL_CLASSES = [
  [ 0, 'misc.football_classes.youth_g'],
  [ 1, 'misc.football_classes.youth_f08'],
  [ 2, 'misc.football_classes.youth_f09'],
  [ 3, 'misc.football_classes.youth_e10'],
  [ 4, 'misc.football_classes.youth_e11'],
  [ 5, 'misc.football_classes.youth_d12'],
  [ 6, 'misc.football_classes.youth_d13'],
  [ 7, 'misc.football_classes.youth_c14'],
  [ 8, 'misc.football_classes.youth_c15'],
  [ 9, 'misc.football_classes.youth_b16'],
  [10, 'misc.football_classes.youth_b17'],
  [11, 'misc.football_classes.youth_a18'],
  [12, 'misc.football_classes.youth_a19'],
  [13, 'misc.football_classes.seniors'],
  [14, 'misc.football_classes.veterans32'],
  [15, 'misc.football_classes.veterans40'],
  [16, 'misc.football_classes.veterans50'],
]

# default football class
STD_FOOTBALL_CLASS = 13

# field positions
FIELD_POSITIONS = [
  :goal,
  :defense,
  :midfield,
  :offense
]

# player legs
PLAYER_LEGS = [
  :right,
  :left,
  :both
]
