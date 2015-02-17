require 'credit_card_validator'

p CreditCardValidator::Validator.valid?(ARGV.join) ? 'Valid' : 'Invalid'
