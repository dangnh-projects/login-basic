defmodule LoginBasicWeb.PowEmailConfirmation.MailerView do
  use LoginBasicWeb, :mailer_view

  def subject(:email_confirmation, _assigns), do: "Confirm your email address"
end
