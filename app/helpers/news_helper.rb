module NewsHelper
  def permitted_to_create_news?
    current_user and current_user.has_user_role_permission? :can_create_news
  end

  def permitted_to_edit? news
  	current_user and (
      current_user.eql? news.author or
        current_user.has_user_role_permission? :can_update_news)
  end

  def news_author author
  	if author.nil?
  	  t 'news.unknown_author'
  	else
      link_to author.name, user_path(author)
    end
  end
end
