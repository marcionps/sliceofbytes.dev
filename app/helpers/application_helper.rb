module ApplicationHelper
  def svg(name)
    file_path = "#{Rails.root}/app/assets/images/#{name}"
    if File.exists?(file_path)
      File.open(file_path, "rb") do |file|
        raw file.read
      end
    else
      '(not found)'
    end
  end

  def formatted_date(date)
    date.strftime("%b %d, %Y")
  end

  def body_class(controller, action)
    if controller == 'posts' && %w(show edit new).include?(action)
      'article-page'
    else
      ''
    end
  end
end
