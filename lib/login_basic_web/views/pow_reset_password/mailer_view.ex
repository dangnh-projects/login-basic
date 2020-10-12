defmodule LoginBasicWeb.PowResetPassword.MailerView do
  use LoginBasicWeb, :mailer_view

  def subject(:reset_password, _assigns), do: "Reset password link"
end
