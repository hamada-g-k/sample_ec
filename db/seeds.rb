User.create!(
  email: "test@example.com",
  family_name: "試験",
  given_name: "太郎",
  family_name_kana: "シケン",
  given_name_kana: "タロウ",
  password: "password",
  password_confirmation: "password",
  birthday: '1990-06-18',
  gender: "male"
)
Address.create!(
  user_id: "1",
  postal_code: "150-0043",
  prefecture: "東京都",
  city: "渋谷区",
  address1: "道玄坂",
  address2: "2丁目1"
)
Phone.create!(
  user_id: "1",
  number: "09011112222"
)
