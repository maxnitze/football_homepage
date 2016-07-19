module NewsHelper
  def permitted_to_create_news?
    current_user && current_user.has_user_role_permission?(:can_create_news)
  end

  def permitted_to_edit_news? news
  	current_user && (
      current_user.eql? news.author ||
        current_user.has_user_role_permission?(:can_update_news))
  end

  def news_author author
  	if author.nil?
  	  t 'news.unknown_author'
  	else
      link_to author.name, user_path(author)
    end
  end
end
