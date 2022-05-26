# frozen_string_literal: true

def make_snippet(text)
  words = text.split(' ')
  if words.length <= 5
    text
  else
    first_five_words = words[0, 5].join(' ')
    "#{first_five_words}..."
  end
end
