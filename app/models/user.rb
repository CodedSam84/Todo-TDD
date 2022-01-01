class User

  def initialize(email)
    @email = email
  end

  def todoos
    Todoo.where(email: @email)
  end

  def signed_in?
    @email.present?
  end
end