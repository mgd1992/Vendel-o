module Language
  extend ActiveSupport::Concern

  included do
    around_action :switch_locale

    private

    def switch_locale(&action)
      I18n.with_locale(locale_from_header, &action)
    end

    def locale_from_header
      request.env['HTTP_ACCEPT_LANGUAGE']&.scan(/^[a-z]{2}/)&.first
      I18n.available_locales.map(&:to_s).include?(locale) ? locale : I18n.default_locale
    end
  end
end
