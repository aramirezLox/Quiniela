class MatchMailerPreview < ActionMailer::Preview
    def published_email
      match = Match.first # Obtén un objeto Match válido para utilizar en la vista previa
      MatchMailer.published_email(match)
    end
  end
  