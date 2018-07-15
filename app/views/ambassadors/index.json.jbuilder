# frozen_string_literal: true

json.array! @ambassadors.shuffle, partial: 'ambassadors/ambassador', as: :ambassador
