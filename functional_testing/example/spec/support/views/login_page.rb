class LoginPage
  include PageMagic

  text_field(:username, name: 'username')
  text_field(:password, name: 'password')
  button(:login_button, text: 'login')

  def login name, pass
    username.set name
    password.set pass
    login_button.click
  end
end