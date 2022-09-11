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
end
