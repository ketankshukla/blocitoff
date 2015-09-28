ActionMailer::Base.smtp_settings = {
    address: "smtp.mandrillapp.com",
    port: 587,
    enable_starttls_auto: true,
    user_name: "ketankshukla@gmail.com",
    password: "x5XT7AIu1J5peiHu_L_OJg",
    authentication: "login"
}

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.default charset: "utf-8"