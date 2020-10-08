# frozen_string_literal: true

json.array! @teaches, partial: 'teaches/teach', as: :teach
