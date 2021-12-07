class Contact < MailForm::Base
  attribute :firstname, :validate => true
  attribute :name, :validate => true
  attribute :company, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true

  def headers
    {
      :subject => "Contact Form",
      :to => "contact@tristanmonteiro.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
