# frozen_string_literal: true

def check_TODO(text)
  raise 'Not a sentence' if text.empty?

  if text.include? 'TODO'
    true
  else
    false
  end
end
