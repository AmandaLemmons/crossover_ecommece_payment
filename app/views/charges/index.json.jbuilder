json.array! @charges do |charge|
  json.id charge.id
  json.amount charge.amount
  json.card_number charge.card_number
  json.email charge.email
  json.cvc charge.cvc
  json.exp_month charge.exp_month
  json.exp_year charge.exp_year
  json.name charge.name









end
