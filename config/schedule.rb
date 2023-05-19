every 1.day, at: '8:14 am'  do
    runner 'MatchMailer.published_email', environment: 'development'
  end
