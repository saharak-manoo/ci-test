normal = User.create(email: 'user@sample.com', password: 'password')
superadmin = User.create(email: 'super@sample.com', password: 'password')

superadmin.add_role(User::ROLE_SUPER_ADMIN)

Test.create({
  string_test: "Sawadde Ja",
  datetime_test: DateTime.now,
  integer_test: 12345,
  boolean_test: true
})
