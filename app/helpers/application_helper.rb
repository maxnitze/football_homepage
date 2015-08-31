module ApplicationHelper
  def has_user_role? user_role
    current_user and current_user.has_user_role? user_role
  end

  def is_admin?
    current_user and current_user.has_user_role? :admin
  end

  def get_current_hometeams
  	hometeams = Team.where(ishometeam: true).order :class_id
    hometeams.each_with_object([]) do |hometeam, current_hometeams|
      current_hometeams << hometeam
    end
  end

  def handle_local_links text
    Nokogiri::HTML(text).css('a').each do |url|
      if is_local_link url['href']
        orig_url_s = url.to_s
        url.remove_attribute 'rel' if url['rel'] && url['rel'].eql?('nofollow')
        url.remove_attribute 'target'
        url_s = current_lang != default_locale ? add_locale_to_url(url) : url.to_s
        text = text.gsub orig_url_s, url_s
      end
    end

    text
  end

  private
    def is_local_link url
      url && (url.index(request.host_with_port) || url.start_with?("/"))
    end

    def add_locale_to_url url
      if url
        url_s = url.to_s

        uri = URI.parse url['href']
        if (!uri.path.match /^\/(#{I18n.available_locales.join('|')})/)
          url_s = url_s.gsub "href=\"#{url['href']}\"", "href=\"#{get_scheme_host_port_s uri}/#{current_lang}#{uri.path}\""
        end

        url_s
      end
    end

    def get_scheme_host_port_s uri
      "#{uri.scheme ? "#{uri.scheme}://" : ""}#{uri.host}#{uri.port ? ":#{uri.port}" : ""}" if uri.host
    end
end
